# CHANGE LOG (1.3.3) - fp-v1.8.2

## Application Client



### Cart



#### checkoutCart

- ##### What's New
	- [Added] property `paymentExtraIdentifiers` of schema `CartCheckoutDetailRequest` in request body


#### checkoutCartV2

- ##### What's New
	- [Added] property `paymentMethods[].paymentExtraIdentifiers` of schema `PaymentMethod` in request body


### Theme



#### getAppliedTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200
	- [Breaking] [Deleted] property `config.list[].globalConfig.statics` of schema `GlobalConfig` in response with status code 200
	- [Breaking] [Deleted] property `config.list[].globalConfig.auth` of schema `GlobalConfig` in response with status code 200
	- [Breaking] [Deleted] property `config.list[].globalConfig.palette` of schema `GlobalConfig` in response with status code 200


#### getThemeForPreview

- ##### What's Deprecated
	- [Breaking] [Deleted] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200
	- [Breaking] [Deleted] property `config.list[].globalConfig.statics` of schema `GlobalConfig` in response with status code 200
	- [Breaking] [Deleted] property `config.list[].globalConfig.auth` of schema `GlobalConfig` in response with status code 200
	- [Breaking] [Deleted] property `config.list[].globalConfig.palette` of schema `GlobalConfig` in response with status code 200


## Platform Client



### Cart



#### getCoupons

- ##### What's New
	- [Added] property `items[]` of schema `CouponsResponse` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `items.ownership`, `items.author`, `items.state`, `items.restrictions`, `items.validation`, `items.action`, `items.tags`, `items.rule`, `items.code`, `items.identifiers`, `items.validity`, `items.dateMeta`, `items.schedule`, `items.displayMeta`, `items.typeSlug`, `items.ruleDefinition` in response with status code 200
	- [Deleted] Required status from properties `items.code`, `items.display_meta`, `items.identifiers`, `items.ownership`, `items.rule`, `items.rule_definition`, `items.type_slug`, `items.validity` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `items` of schema `CouponAdd` in response with status code 200


#### createCoupon

- ##### What's New
	- [Added] property `id` of schema `CouponAdd` in request body


#### platformCheckoutCart

- ##### What's New
	- [Added] property `paymentExtraIdentifiers` of schema `PlatformCartCheckoutDetailRequest` in request body


#### platformCheckoutCartV2

- ##### What's New
	- [Added] property `paymentMethods[].paymentExtraIdentifiers` of schema `PaymentMethod` in request body


#### selectPaymentModeV2

- ##### What's New
	- [Added] property `paymentMethods[].paymentExtraIdentifiers` of schema `PaymentMethod` in request body


### Catalog



#### updateAppProduct

- ##### What's New
	- [Breaking] [Added] Type `string` to property `customMeta[].key` of schema `MetaFields` in request body
	- [Breaking] [Added] Type `string` to property `customMeta[].value` of schema `MetaFields` in request body


#### updateDepartment

- ##### What's New
	- [Breaking] [Added] Type `string` to property `synonyms[]` of schema `DepartmentModel` in response with status code 200
	- [Breaking] [Added] Type `string` to property `logo` of schema `DepartmentModel` in response with status code 200
	- [Breaking] [Added] Type `string` to property `slug` of schema `DepartmentModel` in response with status code 200
	- [Breaking] [Added] Type `string` to property `name` of schema `DepartmentModel` in response with status code 200
	- [Breaking] [Added] Type `string` to property `cls` of schema `DepartmentModel` in response with status code 200
	- [Breaking] [Added] Type `string` to property `id` of schema `DepartmentModel` in response with status code 200


#### allSizes

- ##### What's New
	- [Breaking] [Added] Type `string` to property `allSizes[].size` of schema `AllSizes` in response with status code 200
	- [Breaking] [Added] Type `string` to property `allSizes[].itemWeightUnitOfMeasure` of schema `AllSizes` in response with status code 200


#### createBulkProductUploadJob

- ##### What's New
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `BulkJob` in request body

- ##### What's Changed
	- [Breaking] [Changed] Default value from `2023-07-11T00:42:55.835166` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkJob` in request body
	- [Breaking] [Changed] Default value from `2023-07-11T00:42:55.835166` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkResponse` in response with status code 200


#### uploadBulkProducts

- ##### What's New
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `BulkJob` in request body

- ##### What's Changed
	- [Breaking] [Changed] Default value from `2023-07-11T00:42:55.835166` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkJob` in request body
	- [Breaking] [Changed] Default value from `2023-07-11T00:42:55.835166` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkResponse` in response with status code 200


#### addInventory

- ##### What's New
	- [Breaking] [Added] Type `string` to property `sizes[].size` of schema `InvSize` in request body
	- [Breaking] [Added] Type `string` to property `sizes[].identifiers[].gtinValue` of schema `GTIN` in request body


#### createBulkInventoryJob

- ##### What's New
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `BulkJob` in request body

- ##### What's Changed
	- [Breaking] [Changed] Default value from `2023-07-11T00:42:55.835166` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkJob` in request body
	- [Breaking] [Changed] Default value from `2023-07-11T00:42:55.835166` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkResponse` in response with status code 200


#### updateHsnCode

- ##### What's New
	- [Added] Possible values `0.25` to property `tax2` of schema `HsnUpsert` in request body
	- [Added] Possible values `1.5` to property `tax2` of schema `HsnUpsert` in request body
	- [Added] Possible values `2.5` to property `tax2` of schema `HsnUpsert` in request body
	- [Added] Possible values `0.25` to property `tax1` of schema `HsnUpsert` in request body
	- [Added] Possible values `1.5` to property `tax1` of schema `HsnUpsert` in request body
	- [Added] Possible values `2.5` to property `tax1` of schema `HsnUpsert` in request body


#### bulkHsnCode

- ##### What's New
	- [Added] Possible values `0.25` to property `data[].tax2` of schema `HsnUpsert` in request body
	- [Added] Possible values `1.5` to property `data[].tax2` of schema `HsnUpsert` in request body
	- [Added] Possible values `2.5` to property `data[].tax2` of schema `HsnUpsert` in request body
	- [Added] Possible values `0.25` to property `data[].tax1` of schema `HsnUpsert` in request body
	- [Added] Possible values `1.5` to property `data[].tax1` of schema `HsnUpsert` in request body
	- [Added] Possible values `2.5` to property `data[].tax1` of schema `HsnUpsert` in request body


#### getAppProducts

- ##### What's Deprecated
	- [Deleted] properties `items[].images[].url`, `items[].images[].aspectRatio`, `items[].images[].secureUrl`, `items[].images[].aspectRatioF` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `items[].images[]` of schema `Image` in response with status code 200


#### deleteSearchConfiguration

- ##### What's New
	- [Added] method `deleteSearchConfiguration`



#### getSearchConfiguration

- ##### What's New
	- [Added] method `getSearchConfiguration`



#### createSearchConfiguration

- ##### What's New
	- [Added] method `createSearchConfiguration`



#### updateSearchConfiguration

- ##### What's New
	- [Added] method `updateSearchConfiguration`



### Configuration



#### getOrderingStoreCookie

- ##### What's New
	- [Added] method `getOrderingStoreCookie`



#### removeOrderingStoreCookie

- ##### What's New
	- [Added] method `removeOrderingStoreCookie`



### Order



#### invalidateShipmentCache

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 5XX


#### reassignLocation

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### updateShipmentLock

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### getAnnouncements

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### updateAddress

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### updateShipmentStatus

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].status` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].identifier` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].code` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].meta` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].message` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].exception` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].finalState` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `statuses[].shipments[].stackTrace` of schema `ShipmentsResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### processManifest

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `orderInfo.shipment.shipmentData.shipment[].articles[].status` of schema `ArticleDetails` in request body
	- [Breaking] [Added] Possible nullable value `true` to property `orderInfo.shipment.shipmentData.shipment[].lockStatus` of schema `ShipmentDetails` in request body
	- [Breaking] [Added] Possible nullable value `true` to property `orderInfo.shipment.shipmentData.shipment[].lockMessage` of schema `ShipmentDetails` in request body
	- [Breaking] [Added] Possible nullable value `true` to property `orderInfo.shipment.shipmentData.shipment[].actionToStatus` of schema `ShipmentDetails` in request body
	- [Breaking] [Added] Possible nullable value `true` to property `orderInfo.shipment.shipmentData.locationDetails.articles[].status` of schema `ArticleDetails` in request body
	- [Added] property `orderConfig.affiliate.config.appCompanyId` of schema `AffiliateConfig` in request body
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### dispatchManifest

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### getRoleBasedActions

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 5XX


#### getShipmentHistory

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 5XX


#### updatePackagingDimensions

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### uploadConsent

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### fetchCreditBalanceDetail

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### fetchRefundModeConfig

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### attachOrderUser

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### sendUserMobileOTP

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### verifyMobileOTP

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### eInvoiceRetry

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### trackShipment

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### updateShipmentTracking

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX


#### getShipments

- ##### What's New
	- [Added] `query` parameter `orderType` (type: `string`)

	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ShipmentInternalPlatformViewResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ShipmentInternalPlatformViewResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].user.uid` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].user.name` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].user.firstName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].user.lastName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].user.isAnonymousUser` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].user.avisUserId` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].channel.logo` of schema `ShipmentListingChannel` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].channel.name` of schema `ShipmentListingChannel` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].channel.channelShipmentId` of schema `ShipmentListingChannel` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].channel.isAffiliate` of schema `ShipmentListingChannel` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].gst.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.dimensions.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.dimensions.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.dimensions.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.dimensions.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.dimensions.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.code` of schema `Article` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.weight.shipping` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.weight.unit` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.weight.isDefault` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].article.isSet` of schema `Article` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].brand.logo` of schema `ShipmentListingBrand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].brand.name` of schema `ShipmentListingBrand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].brand.createdOn` of schema `ShipmentListingBrand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].brand.logoBase64` of schema `ShipmentListingBrand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.id` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.attributes.currency` of schema `PlatformArticleAttributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.name` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.brand` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.image` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.code` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.size` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.meta` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.images` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.brandId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.slugKey` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.l3Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.l3CategoryName` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.lastUpdatedAt` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.l2Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.l1Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.canCancel` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.canReturn` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].item.departmentId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].reasons` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].size` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].meta` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].dates.orderCreated` of schema `Dates` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagType` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].financialBreakup[].identifiers.alu` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].financialBreakup[].identifiers.ean` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].financialBreakup[].identifiers.upc` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].financialBreakup[].identifiers.isbn` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].financialBreakup[].identifiers.skuCode` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].financialBreakup[].amountPaidRoundoff` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].financialBreakup[].taxCollectedAtSource` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].bagStatus[].displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentOperationalStatus.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].affiliateBagDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].affiliateBagDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].affiliateBagDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].affiliateBagDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].affiliateBagDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].affiliateBagDetails.employeeDiscount` of schema `AffiliateBagDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].affiliateBagDetails.loyaltyDiscount` of schema `AffiliateBagDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].canReturn` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].displayName` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].canCancel` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].lineNumber` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].currentStatus.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bags[].entityType` of schema `BagUnit` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.sla` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.tags` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.external` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.weight` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.sameStoreAvailable` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.isInternational` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.debugInfo` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.shipmentChargeableWeight` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.pdfMedia` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.existingDpList` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.parentDpId` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.shipmentWeight` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.dpOptions` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.assignDpFromSb` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.shippingZone` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.storeInvoiceUpdatedDate` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.activityComment` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.ewaybillInfo` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.shipmentVolumetricWeight` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.packagingName` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.bagWeight` of schema `ShipmentItemMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderDate` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentStatus.currentShipmentStatus` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentStatus.shipmentStatusId` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentStatus.bagList` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentStatus.createdAt` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentStatus.shipmentId` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentStatus.statusCreatedAt` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.phone` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.address2` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.longitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.pincode` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.area` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.country` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.email` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.address1` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.landmark` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.version` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.latitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.state` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.city` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.addressType` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.addressCategory` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.createdAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.updatedAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].deliveryAddress.contactPerson` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].lockStatus` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].paymentMethods` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].displayName` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].fulfillingStore.phone` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].fulfillingStore.pincode` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].fulfillingStore.name` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].fulfillingStore.state` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].fulfillingStore.city` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].fulfillingStore.locationType` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].fulfillingStore.storeEmail` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].paymentMode` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].canProcess` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingChannnel` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentId` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].customerNote` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].totalBags` of schema `ShipmentItem` in response with status code 200
	- [Added] property `items[].modeOfPayment` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `lane` of schema `ShipmentInternalPlatformViewResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.type` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.total` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasNext` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `totalCount` of schema `ShipmentInternalPlatformViewResponse` in response with status code 200


#### getShipmentById

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ShipmentInfoResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.invoiceUrl` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.updatedDate` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.externalInvoiceId` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.labelUrl` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.source` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderDate` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.taxDetails` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.codCharges` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.affiliateId` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderingChannelLogo` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderValue` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderingChannel` of schema `OrderDetailsData` in response with status code 200
	- [Added] property `shipments[].order.meta` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.uid` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.name` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.firstName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.lastName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.isAnonymousUser` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.avisUserId` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].coupon` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.identifiers` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.uid` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.size` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.returnConfig.returnable` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.returnConfig.time` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.returnConfig.unit` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.logo` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.createdOn` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.brandName` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.modifiedOn` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.id` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.attributes.currency` of schema `PlatformArticleAttributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.name` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.brand` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.image` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.code` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.size` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.meta` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.images` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.brandId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.slugKey` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l3Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l3CategoryName` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.lastUpdatedAt` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l2Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l1Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.canCancel` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.canReturn` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.departmentId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].quantity` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].identifier` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.giftMessage` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.giftPrice` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.displayText` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.isGiftApplied` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.customMessage` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.docketNumber` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.groupId` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.partialCanRet` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.extraMeta` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.dockerNumber` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.poLineAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.totalGstPercentage` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.partialCanRet` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.poTaxAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.itemBasePrice` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.customJson` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.gstinCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Required status to properties `shipments[].bags[].gstDetails.brand_calculated_amount`, `shipments[].bags[].gstDetails.gst_fee`, `shipments[].bags[].gstDetails.tax_collected_at_source`, `shipments[].bags[].gstDetails.value_of_good` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].parentPromoBags` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.alu` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.ean` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.upc` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.isbn` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.skuCode` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.amountPaidRoundoff` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.taxCollectedAtSource` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].sellerIdentifier` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.phone` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.address2` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.longitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.pincode` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.area` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.country` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.email` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.address1` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.landmark` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.version` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.latitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.state` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.city` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.addressType` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.addressCategory` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.createdAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.updatedAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.contactPerson` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].groupId` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].affiliateBagDetails.affiliateBagId` of schema `AffiliateBagsDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].paymentMethods[].mode` of schema `BagPaymentMethods` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].paymentMethods[].amount` of schema `BagPaymentMethods` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].canReturn` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].canCancel` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].displayName` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].lineNumber` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].amount` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].promotionType` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].promotionName` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].discountRules[].value` of schema `DiscountRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].discountRules[].type` of schema `DiscountRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].articleQuantity` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].buyRules[].itemCriteria.itemBrand` of schema `ItemCriterias` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].buyRules[].cartConditions` of schema `BuyRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].promoId` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].mrpPromotion` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.status` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.storeId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.kafkaSync` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.stateType` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.stateId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.shipmentId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Value format `date-time` to property `shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].entityType` of schema `OrderBags` in response with status code 200
	- [Added] property `shipments[].bags[].isParent` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `shipments[].meta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].payments.mode` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].payments.logo` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].payments.source` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.meta` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.id` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.status` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.bagList` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.shipmentId` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.displayName` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].pickedDate` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].trackingList[].time` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].trackingList[].isPassed` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].trackingList[].isCurrent` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliverySlot` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].enableDpTracking` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].customMessage` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].estimatedSlaTime` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].canUpdateDimension` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentImages` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.area` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.email` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.address1` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.landmark` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.addressType` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.area` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.email` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.address1` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.landmark` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.addressType` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].fulfilmentPriority` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.articles[].status` of schema `ArticleDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.lockStatus` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.lockMessage` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.actionToStatus` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].customMeta` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentQuantity` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.address` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyName` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyId` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyGst` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.phone[].number` of schema `PhoneDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.phone[].countryCode` of schema `PhoneDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.phone` of schema `ContactDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.emails` of schema `ContactDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.phone` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.pincode` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.meta` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.address` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.id` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.code` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.country` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.state` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.city` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.storeName` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.contactPerson` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].lockStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].platformLogo` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].userAgent` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpDetails.pincode` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpDetails.country` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpDetails.gstTag` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoiceId` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].paymentMethods` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `shipments[].affiliateDetails.shipmentMeta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.companyAffiliateTag` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.label` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelPos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoiceA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.b2B` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoiceExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.creditNoteUrl` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.deliveryChallanA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoiceA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoicePos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.poInvoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateId` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.adId` of schema `AffiliateDetails` in response with status code 200
	- [Added] property `shipments[].affiliateDetails.config` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].isDpAssignEnabled` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpAssignment` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].totalItems` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].paymentMode` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].packagingType` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].journeyType` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].operationalStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].totalBags` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentCreatedAt` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].previousShipmentId` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].shipmentUpdateTime` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].rtoAddress` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].creditNoteId` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].isSelfShip` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].modeOfPayment` of schema `PlatformShipment` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].bags[].gstDetails.cgstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `shipments[].bags[].gstDetails.gstTaxPercentage` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].bags[].gstDetails.igstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].bags[].gstDetails.sgstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `string` of property `shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200


#### getOrderById

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.comment` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.files` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.staff` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.platformUserDetails.platformUserFirstName` of schema `PlatformUserDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.platformUserDetails.platformUserLastName` of schema `PlatformUserDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.companyLogo` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.currencySymbol` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.extraMeta` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.currency` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.entity` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.status` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.amountPaid` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.paymentId` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.uniqueReferenceNumber` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.terminalId` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.transactionData.transactionId` of schema `TransactionData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.orderingStore` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.paymentType` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.mongoCartId` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.orderChildEntities` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.orderType` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.orderPlatform` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.customerNote` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.meta.cartId` of schema `OrderMeta` in response with status code 200
	- [Added] property `order.meta.cartObjectId` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `order.paymentMethods` of schema `OrderData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.invoiceUrl` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.updatedDate` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.externalInvoiceId` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoice.labelUrl` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.source` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderDate` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.taxDetails` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.codCharges` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.affiliateId` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderingChannelLogo` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderValue` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].order.orderingChannel` of schema `OrderDetailsData` in response with status code 200
	- [Added] property `shipments[].order.meta` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.uid` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.name` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.firstName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.lastName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.isAnonymousUser` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].user.avisUserId` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].coupon` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.identifiers` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.uid` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.size` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.returnConfig.returnable` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.returnConfig.time` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].article.returnConfig.unit` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.logo` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.createdOn` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.brandName` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].brand.modifiedOn` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.id` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.attributes.currency` of schema `PlatformArticleAttributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.name` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.brand` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.image` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.code` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.size` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.meta` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.images` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.brandId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.slugKey` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l3Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l3CategoryName` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.lastUpdatedAt` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l2Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.l1Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.canCancel` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.canReturn` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].item.departmentId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].quantity` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].identifier` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.giftMessage` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.giftPrice` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.displayText` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.giftCard.isGiftApplied` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.customMessage` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.docketNumber` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.groupId` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.partialCanRet` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.extraMeta` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.dockerNumber` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.poLineAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.totalGstPercentage` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.partialCanRet` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.poTaxAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.b2BPoDetails.itemBasePrice` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].meta.customJson` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.gstinCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Required status to properties `shipments[].bags[].gstDetails.brand_calculated_amount`, `shipments[].bags[].gstDetails.gst_fee`, `shipments[].bags[].gstDetails.tax_collected_at_source`, `shipments[].bags[].gstDetails.value_of_good` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].parentPromoBags` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.alu` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.ean` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.upc` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.isbn` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.identifiers.skuCode` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.amountPaidRoundoff` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].financialBreakup.taxCollectedAtSource` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].sellerIdentifier` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.phone` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.address2` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.longitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.pincode` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.area` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.country` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.email` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.address1` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.landmark` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.version` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.latitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.state` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.city` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.addressType` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.addressCategory` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.createdAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.updatedAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].deliveryAddress.contactPerson` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].groupId` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].affiliateBagDetails.affiliateBagId` of schema `AffiliateBagsDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].paymentMethods[].mode` of schema `BagPaymentMethods` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].paymentMethods[].amount` of schema `BagPaymentMethods` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].canReturn` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].canCancel` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].displayName` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].lineNumber` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].amount` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].promotionType` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].promotionName` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].discountRules[].value` of schema `DiscountRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].discountRules[].type` of schema `DiscountRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].articleQuantity` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].buyRules[].itemCriteria.itemBrand` of schema `ItemCriterias` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].buyRules[].cartConditions` of schema `BuyRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].promoId` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].appliedPromos[].mrpPromotion` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.status` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.storeId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.kafkaSync` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.stateType` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.stateId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.shipmentId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Value format `date-time` to property `shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].currentStatus.bagId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bags[].entityType` of schema `OrderBags` in response with status code 200
	- [Added] property `shipments[].bags[].isParent` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].meta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `shipments[].meta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].payments.mode` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].payments.logo` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].payments.source` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.meta` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.id` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.status` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.bagList` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.shipmentId` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].status.displayName` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].pickedDate` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].trackingList[].time` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].trackingList[].isPassed` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].trackingList[].isCurrent` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliverySlot` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].enableDpTracking` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].customMessage` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].estimatedSlaTime` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].canUpdateDimension` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentImages` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.area` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.email` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.address1` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.landmark` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].deliveryDetails.addressType` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.area` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.email` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.address1` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.landmark` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].billingDetails.addressType` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].fulfilmentPriority` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.articles[].status` of schema `ArticleDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.lockStatus` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.lockMessage` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentDetails.actionToStatus` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].customMeta` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentQuantity` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.address` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyName` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyId` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyGst` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.phone[].number` of schema `PhoneDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.phone[].countryCode` of schema `PhoneDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.phone` of schema `ContactDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].companyDetails.companyContact.emails` of schema `ContactDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.phone` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.pincode` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.meta` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.address` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.id` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.code` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.country` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.state` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.city` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.storeName` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].orderingStore.contactPerson` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].lockStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].platformLogo` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].userAgent` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpDetails.pincode` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpDetails.country` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpDetails.gstTag` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].invoiceId` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].paymentMethods` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.shipmentMeta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `shipments[].affiliateDetails.shipmentMeta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.companyAffiliateTag` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.label` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelPos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoiceA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.b2B` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoiceExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.creditNoteUrl` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.deliveryChallanA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.labelExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoiceA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.invoicePos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.pdfLinks.poInvoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.affiliateId` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].affiliateDetails.adId` of schema `AffiliateDetails` in response with status code 200
	- [Added] property `shipments[].affiliateDetails.config` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].bagStatusHistory[].displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].isDpAssignEnabled` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].dpAssignment` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].totalItems` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].paymentMode` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].packagingType` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].journeyType` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].operationalStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].totalBags` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipments[].shipmentCreatedAt` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].previousShipmentId` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].shipmentUpdateTime` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].rtoAddress` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].creditNoteId` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].isSelfShip` of schema `PlatformShipment` in response with status code 200
	- [Added] property `shipments[].modeOfPayment` of schema `PlatformShipment` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].bags[].gstDetails.cgstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `shipments[].bags[].gstDetails.gstTaxPercentage` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].bags[].gstDetails.igstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].bags[].gstDetails.sgstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `string` of property `shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200


#### getLaneConfig

- ##### What's New
	- [Added] `query` parameter `orderType` (type: `string`)



#### getOrders

- ##### What's New
	- [Added] `query` parameter `orderType` (type: `string`)

	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `OrderListingResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `OrderListingResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].invoice.invoiceUrl` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].invoice.updatedDate` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].invoice.externalInvoiceId` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].invoice.labelUrl` of schema `InvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.source` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.orderDate` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.taxDetails` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.codCharges` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.affiliateId` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.orderingChannelLogo` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.orderValue` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].order.orderingChannel` of schema `OrderDetailsData` in response with status code 200
	- [Added] property `items[].shipments[].order.meta` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].user.uid` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].user.name` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].user.firstName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].user.lastName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].user.isAnonymousUser` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].user.avisUserId` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].coupon` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].article.identifiers` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].article.uid` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].article.size` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].article.returnConfig.returnable` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].article.returnConfig.time` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].article.returnConfig.unit` of schema `ReturnConfig1` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].brand.logo` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].brand.createdOn` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].brand.brandName` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].brand.modifiedOn` of schema `OrderBrandName` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.id` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.attributes.currency` of schema `PlatformArticleAttributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.name` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.brand` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.image` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.code` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.size` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.meta` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.images` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.brandId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.slugKey` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.l3Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.l3CategoryName` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.lastUpdatedAt` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.l2Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.l1Category` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.canCancel` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.canReturn` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].item.departmentId` of schema `PlatformItem` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].quantity` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].identifier` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.giftCard.giftMessage` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.giftCard.giftPrice` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.giftCard.displayText` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.giftCard.isGiftApplied` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.customMessage` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.docketNumber` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.groupId` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.partialCanRet` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.extraMeta` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.b2BPoDetails.dockerNumber` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.b2BPoDetails.poLineAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.b2BPoDetails.totalGstPercentage` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.b2BPoDetails.partialCanRet` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.b2BPoDetails.poTaxAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.b2BPoDetails.itemBasePrice` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].meta.customJson` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.gstinCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Required status to properties `items[].shipments[].bags[].gstDetails.brand_calculated_amount`, `items[].shipments[].bags[].gstDetails.gst_fee`, `items[].shipments[].bags[].gstDetails.tax_collected_at_source`, `items[].shipments[].bags[].gstDetails.value_of_good` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].parentPromoBags` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].financialBreakup.identifiers.alu` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].financialBreakup.identifiers.ean` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].financialBreakup.identifiers.upc` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].financialBreakup.identifiers.isbn` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].financialBreakup.identifiers.skuCode` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].financialBreakup.amountPaidRoundoff` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].financialBreakup.taxCollectedAtSource` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].sellerIdentifier` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.phone` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.address2` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.longitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.pincode` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.area` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.country` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.email` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.address1` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.landmark` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.version` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.latitude` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.state` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.city` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.addressType` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.addressCategory` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.createdAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.updatedAt` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].deliveryAddress.contactPerson` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].groupId` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].affiliateBagDetails.affiliateBagId` of schema `AffiliateBagsDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].paymentMethods[].mode` of schema `BagPaymentMethods` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].paymentMethods[].amount` of schema `BagPaymentMethods` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].canReturn` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].canCancel` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].displayName` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].lineNumber` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].amount` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].promotionType` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].promotionName` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].discountRules[].value` of schema `DiscountRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].discountRules[].type` of schema `DiscountRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].articleQuantity` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].buyRules[].itemCriteria.itemBrand` of schema `ItemCriterias` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].buyRules[].cartConditions` of schema `BuyRules` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].promoId` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].appliedPromos[].mrpPromotion` of schema `AppliedPromos` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.status` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.storeId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.kafkaSync` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.stateType` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.stateId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.shipmentId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Value format `date-time` to property `items[].shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].currentStatus.bagId` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bags[].entityType` of schema `OrderBags` in response with status code 200
	- [Added] property `items[].shipments[].bags[].isParent` of schema `OrderBags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].meta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `items[].shipments[].meta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].payments.mode` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].payments.logo` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].payments.source` of schema `ShipmentPayments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].status.meta` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].status.id` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].status.status` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].status.bagList` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].status.shipmentId` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].status.displayName` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].pickedDate` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].trackingList[].time` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].trackingList[].isPassed` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].trackingList[].isCurrent` of schema `TrackingList` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].deliverySlot` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].enableDpTracking` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].customMessage` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].estimatedSlaTime` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].canUpdateDimension` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentImages` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].deliveryDetails.area` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].deliveryDetails.email` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].deliveryDetails.address1` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].deliveryDetails.landmark` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].deliveryDetails.addressType` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].billingDetails.area` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].billingDetails.email` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].billingDetails.address1` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].billingDetails.landmark` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].billingDetails.addressType` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].fulfilmentPriority` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentDetails.articles[].status` of schema `ArticleDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentDetails.lockStatus` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentDetails.lockMessage` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentDetails.actionToStatus` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].customMeta` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentQuantity` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.address` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.companyName` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.companyId` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.companyGst` of schema `CompanyDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.companyContact.phone[].number` of schema `PhoneDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.companyContact.phone[].countryCode` of schema `PhoneDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.companyContact.phone` of schema `ContactDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].companyDetails.companyContact.emails` of schema `ContactDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.phone` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.pincode` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.meta` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.address` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.id` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.code` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.country` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.state` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.city` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.storeName` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].orderingStore.contactPerson` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].lockStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].platformLogo` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].userAgent` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].dpDetails.pincode` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].dpDetails.country` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].dpDetails.gstTag` of schema `DPDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].invoiceId` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].paymentMethods` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.shipmentMeta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `items[].shipments[].affiliateDetails.shipmentMeta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.companyAffiliateTag` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.invoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.label` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.labelA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.labelPos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.invoiceA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.b2B` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.labelA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.invoiceExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.creditNoteUrl` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.deliveryChallanA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.labelExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.invoiceA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.invoicePos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.pdfLinks.poInvoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.affiliateId` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].affiliateDetails.adId` of schema `AffiliateDetails` in response with status code 200
	- [Added] property `items[].shipments[].affiliateDetails.config` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].bagStatusHistory[].displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].isDpAssignEnabled` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].dpAssignment` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].totalItems` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].paymentMode` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].packagingType` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].journeyType` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].operationalStatus` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].totalBags` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipments[].shipmentCreatedAt` of schema `PlatformShipment` in response with status code 200
	- [Added] property `items[].shipments[].previousShipmentId` of schema `PlatformShipment` in response with status code 200
	- [Added] property `items[].shipments[].shipmentUpdateTime` of schema `PlatformShipment` in response with status code 200
	- [Added] property `items[].shipments[].rtoAddress` of schema `PlatformShipment` in response with status code 200
	- [Added] property `items[].shipments[].creditNoteId` of schema `PlatformShipment` in response with status code 200
	- [Added] property `items[].shipments[].isSelfShip` of schema `PlatformShipment` in response with status code 200
	- [Added] property `items[].shipments[].modeOfPayment` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].channel.logo` of schema `PlatformChannel` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].channel.name` of schema `PlatformChannel` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].breakupValues[].value` of schema `PlatformBreakupValues` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].breakupValues[].name` of schema `PlatformBreakupValues` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].breakupValues[].display` of schema `PlatformBreakupValues` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].totalOrderValue` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderCreatedTime` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].paymentMode` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderId` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].userInfo.uid` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].userInfo.name` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].userInfo.firstName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].userInfo.lastName` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].userInfo.isAnonymousUser` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].userInfo.avisUserId` of schema `UserDataInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderValue` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `lane` of schema `OrderListingResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.type` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.total` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasNext` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `totalCount` of schema `OrderListingResponse` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].shipments[].bags[].gstDetails.cgstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `items[].shipments[].bags[].gstDetails.gstTaxPercentage` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].shipments[].bags[].gstDetails.igstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].shipments[].bags[].gstDetails.sgstGstFee` of schema `BagGST` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `string` of property `items[].shipments[].bags[].currentStatus.updatedAt` of schema `CurrentStatus` in response with status code 200


#### getfilters

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.returned[].options[].showUi` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.returned[].options[].placeholderText` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.returned[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.returned[].required` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.returned[].placeholderText` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.returned` of schema `AdvanceFilterInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.unfulfilled[].options[].showUi` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.unfulfilled[].options[].placeholderText` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.unfulfilled[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.unfulfilled[].required` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.unfulfilled[].placeholderText` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.unfulfilled` of schema `AdvanceFilterInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.filters[].options[].showUi` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.filters[].options[].placeholderText` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.filters[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.filters[].required` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.filters[].placeholderText` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.filters` of schema `AdvanceFilterInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.processed[].options[].showUi` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.processed[].options[].placeholderText` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.processed[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.processed[].required` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.processed[].placeholderText` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.processed` of schema `AdvanceFilterInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.page` of schema `AdvanceFilterInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.actionCentre[].options[].showUi` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.actionCentre[].options[].placeholderText` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.actionCentre[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.actionCentre[].required` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.actionCentre[].placeholderText` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.actionCentre` of schema `AdvanceFilterInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `advanceFilter.appliedFilters` of schema `AdvanceFilterInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `globalFilter[].options[].showUi` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `globalFilter[].options[].placeholderText` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `globalFilter[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `globalFilter[].required` of schema `FiltersInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `globalFilter[].placeholderText` of schema `FiltersInfo` in response with status code 200


#### getBagById

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `id` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `tags` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.dimensions.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.dimensions.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.dimensions.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.dimensions.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.dimensions.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.code` of schema `Article` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.weight.shipping` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.weight.unit` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.weight.isDefault` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `article.isSet` of schema `Article` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `brand.logo` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `brand.creditNoteAllowed` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `brand.createdOn` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `brand.modifiedOn` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.essential` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.name` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.gender` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.primaryMaterial` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.marketerName` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.primaryColor` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.marketerAddress` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.primaryColorHex` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.attributes.brandName` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.code` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.meta` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.l3Category` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.l3CategoryName` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.lastUpdatedAt` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.l2Category` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.l1CategoryId` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.l1Category` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.canCancel` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.canReturn` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.departmentId` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `item.l2CategoryId` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `identifier` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `quantity` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `reasons` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `type` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.giftCard.giftMessage` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.giftCard.giftPrice` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.giftCard.displayText` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.giftCard.isGiftApplied` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.customMessage` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.docketNumber` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.groupId` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.partialCanRet` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.extraMeta` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.b2BPoDetails.dockerNumber` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.b2BPoDetails.poLineAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.b2BPoDetails.totalGstPercentage` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.b2BPoDetails.partialCanRet` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.b2BPoDetails.poTaxAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.b2BPoDetails.itemBasePrice` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `meta.customJson` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `dates.orderCreated` of schema `Dates` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagUpdateTime` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `parentPromoBags` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `financialBreakup[].identifiers.alu` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `financialBreakup[].identifiers.ean` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `financialBreakup[].identifiers.upc` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `financialBreakup[].identifiers.isbn` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `financialBreakup[].identifiers.skuCode` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `financialBreakup[].amountPaidRoundoff` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `financialBreakup[].taxCollectedAtSource` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatus[].displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `sellerIdentifier` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `originalBagList` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `articleDetails.status` of schema `ArticleDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentOperationalStatus.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.code` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.timing` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.documents.gst.url` of schema `Document` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.additionalContactDetails` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.notificationEmails` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.gstNumber` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.ewaybillPortalDetails` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.einvoicePortalDetails.username` of schema `EInvoicePortalDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.einvoicePortalDetails.user` of schema `EInvoicePortalDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.einvoicePortalDetails.password` of schema `EInvoicePortalDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.gstCredentials.eInvoice.username` of schema `StoreEinvoice` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.gstCredentials.eInvoice.user` of schema `StoreEinvoice` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.gstCredentials.eInvoice.password` of schema `StoreEinvoice` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.gstCredentials.eWaybill.enabled` of schema `StoreEwaybill` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.meta.productReturnConfig` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.address2` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.isActive` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.alohomoraUserId` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.isEnabledForRecon` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.brandStoreTags` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.orderIntegrationId` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.parentStoreId` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.storeAddressJson.version` of schema `StoreAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.storeAddressJson.area` of schema `StoreAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.storeAddressJson.email` of schema `StoreAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.packagingMaterialCount` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `orderingStore.isArchived` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateBagDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateBagDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateBagDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateBagDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateBagDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateBagDetails.employeeDiscount` of schema `AffiliateBagDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateBagDetails.loyaltyDiscount` of schema `AffiliateBagDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `restorePromos` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.shipmentMeta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `affiliateDetails.shipmentMeta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.companyAffiliateTag` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.invoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.label` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.labelA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.labelPos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.invoiceA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.b2B` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.labelA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.invoiceExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.creditNoteUrl` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.deliveryChallanA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.labelExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.invoiceA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.invoicePos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.pdfLinks.poInvoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.affiliateId` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `affiliateDetails.adId` of schema `AffiliateDetails` in response with status code 200
	- [Added] property `affiliateDetails.config` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `bagStatusHistory.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `displayName` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `lineNumber` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `restoreCoupon` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `noOfBagsOrder` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `appliedPromos` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `journeyType` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `shipmentId` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `currentStatus.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `operationalStatus` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `entityType` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 5XX

- ##### What's Deprecated
	- [Deleted] Required status from property `gstDetails.cgst_gst_fee` in response with status code 200
	- [Deleted] Required status from property `gstDetails.cgst_tax_percentage` in response with status code 200
	- [Deleted] Required status from property `gstDetails.gst_tag` in response with status code 200
	- [Deleted] Required status from property `gstDetails.gst_tax_percentage` in response with status code 200
	- [Deleted] Required status from property `gstDetails.hsn_code` in response with status code 200
	- [Deleted] Required status from property `gstDetails.hsn_code_id` in response with status code 200
	- [Deleted] Required status from property `gstDetails.igst_gst_fee` in response with status code 200
	- [Deleted] Required status from property `gstDetails.igst_tax_percentage` in response with status code 200
	- [Deleted] Required status from property `gstDetails.sgst_gst_fee` in response with status code 200
	- [Deleted] Required status from property `gstDetails.sgst_tax_percentage` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `gstDetails.cgstGstFee` of schema `BagGSTDetails` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `gstDetails.igstGstFee` of schema `BagGSTDetails` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `gstDetails.sgstGstFee` of schema `BagGSTDetails` in response with status code 200


#### getBags

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `items[].id` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].tags` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.dimensions.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.dimensions.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.dimensions.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.dimensions.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.dimensions.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.code` of schema `Article` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.weight.shipping` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.weight.unit` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.weight.isDefault` of schema `Weight` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].article.isSet` of schema `Article` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].brand.logo` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].brand.creditNoteAllowed` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].brand.createdOn` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].brand.modifiedOn` of schema `Brand` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.essential` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.name` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.gender` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.primaryMaterial` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.marketerName` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.primaryColor` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.marketerAddress` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.primaryColorHex` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.attributes.brandName` of schema `Attributes` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.code` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.meta` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.l3Category` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.l3CategoryName` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.lastUpdatedAt` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.l2Category` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.l1CategoryId` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.l1Category` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.canCancel` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.canReturn` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.departmentId` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].item.l2CategoryId` of schema `Item` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].identifier` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].quantity` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].reasons` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].type` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.giftCard.giftMessage` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.giftCard.giftPrice` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.giftCard.displayText` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.giftCard.isGiftApplied` of schema `GiftCard` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.customMessage` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.docketNumber` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.groupId` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.partialCanRet` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.extraMeta` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.b2BPoDetails.dockerNumber` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.b2BPoDetails.poLineAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.b2BPoDetails.totalGstPercentage` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.b2BPoDetails.partialCanRet` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.b2BPoDetails.poTaxAmount` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.b2BPoDetails.itemBasePrice` of schema `B2BPODetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].meta.customJson` of schema `BagMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.cashback` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.discount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.refundCredit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.amountPaidRoundoff` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.priceEffective` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.promotionEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.pmPriceSplit` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.refundAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.transferPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.couponEffectiveDiscount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.taxCollectedAtSource` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.brandCalculatedAmount` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.deliveryCharge` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.valueOfGood` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.cashbackApplied` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.codCharges` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.priceMarked` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.amountPaid` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.couponValue` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.fyndCredits` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].prices.giftPrice` of schema `Prices` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].dates.orderCreated` of schema `Dates` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagUpdateTime` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.cgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.igstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.gstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.hsnCodeId` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.isDefaultHsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.gstTag` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.sgstTaxPercentage` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].gstDetails.hsnCode` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].parentPromoBags` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].financialBreakup[].identifiers.alu` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].financialBreakup[].identifiers.ean` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].financialBreakup[].identifiers.upc` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].financialBreakup[].identifiers.isbn` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].financialBreakup[].identifiers.skuCode` of schema `Identifier` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].financialBreakup[].amountPaidRoundoff` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].financialBreakup[].taxCollectedAtSource` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatus[].displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].sellerIdentifier` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].originalBagList` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].articleDetails.status` of schema `ArticleDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentOperationalStatus.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.code` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.timing` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.documents.gst.url` of schema `Document` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.additionalContactDetails` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.notificationEmails` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.gstNumber` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.ewaybillPortalDetails` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.einvoicePortalDetails.username` of schema `EInvoicePortalDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.einvoicePortalDetails.user` of schema `EInvoicePortalDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.einvoicePortalDetails.password` of schema `EInvoicePortalDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.gstCredentials.eInvoice.username` of schema `StoreEinvoice` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.gstCredentials.eInvoice.user` of schema `StoreEinvoice` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.gstCredentials.eInvoice.password` of schema `StoreEinvoice` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.gstCredentials.eWaybill.enabled` of schema `StoreEwaybill` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.meta.productReturnConfig` of schema `StoreMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.address2` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.isActive` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.alohomoraUserId` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.isEnabledForRecon` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.brandStoreTags` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.orderIntegrationId` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.parentStoreId` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.storeAddressJson.version` of schema `StoreAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.storeAddressJson.area` of schema `StoreAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.storeAddressJson.email` of schema `StoreAddress` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.packagingMaterialCount` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].orderingStore.isArchived` of schema `Store` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateBagDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateBagDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateBagDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateBagDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateBagDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateBagDetails.employeeDiscount` of schema `AffiliateBagDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateBagDetails.loyaltyDiscount` of schema `AffiliateBagDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].restorePromos` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.formatted.max` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.formatted.min` of schema `Formatted` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dimension.height` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dimension.width` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dimension.unit` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dimension.length` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dimension.isDefault` of schema `Dimensions` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.external` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.timestamp.max` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.timestamp.min` of schema `ShipmentTimeStamp` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.b2BBuyerDetails.ajioSiteId` of schema `BuyerDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.debugInfo.stormbreakerUuid` of schema `DebugInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.returnAwbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.einvoiceInfo.invoice` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.einvoiceInfo.creditNote` of schema `EinvoiceInfo` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.returnAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.shipmentWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dpOptions` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.assignDpFromSb` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dueDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.storeInvoiceUpdatedDate` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.forwardAffiliateShipmentId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.returnStoreNode` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.shipmentTags[].slug` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.shipmentTags[].entityType` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.shipmentTags[].displayText` of schema `ShipmentTags` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.awbNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.lockData.locked` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.lockData.mto` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.lockData.lockMessage` of schema `LockData` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.shipmentVolumetricWeight` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.marketplaceStoreId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.returnDetails` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dpSortKey` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.packagingName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.autoTriggerDpAssignmentAcf` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.dpName` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.poNumber` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.forwardAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.returnAffiliateOrderId` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.shipmentMeta.bagWeight` of schema `ShipmentMeta` in response with status code 200
	- [Added] property `items[].affiliateDetails.shipmentMeta.refundTo` of schema `ShipmentMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.affiliateMeta.quantity` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.affiliateMeta.orderItemId` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.affiliateMeta.employeeDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.affiliateMeta.loyaltyDiscount` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.affiliateMeta.isPriority` of schema `AffiliateMeta` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.companyAffiliateTag` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.invoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.label` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.labelA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.labelPos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.invoiceA6` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.b2B` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.labelA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.invoiceExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.creditNoteUrl` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.deliveryChallanA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.labelExport` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.invoiceA4` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.invoicePos` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.pdfLinks.poInvoice` of schema `PDFLinks` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.affiliateId` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].affiliateDetails.adId` of schema `AffiliateDetails` in response with status code 200
	- [Added] property `items[].affiliateDetails.config` of schema `AffiliateDetails` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].bagStatusHistory.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].displayName` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].lineNumber` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].restoreCoupon` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].noOfBagsOrder` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].appliedPromos` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].journeyType` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].shipmentId` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.reasons` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.storeId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.kafkaSync` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.appDisplayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.stateId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.stateType` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.bshId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.createdAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.shipmentId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.updatedAt` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.bagStateMapper.isActive` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.bagStateMapper.appDisplayName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.bagStateMapper.appStateName` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.bagStateMapper.appFacing` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.bagStateMapper.notifyCustomer` of schema `BagStateMapper` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.bagId` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].currentStatus.displayName` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].operationalStatus` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `items[].entityType` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 4XX
	- [Breaking] [Added] Possible nullable value `true` to property `status` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `success` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `message` of schema `ErrorResponse` in response with status code 5XX
	- [Breaking] [Added] Possible nullable value `true` to property `errorTrace` of schema `ErrorResponse` in response with status code 5XX

- ##### What's Deprecated
	- [Deleted] Required status from property `items[].gstDetails.cgst_gst_fee` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.cgst_tax_percentage` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.gst_tag` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.gst_tax_percentage` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.hsn_code` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.hsn_code_id` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.igst_gst_fee` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.igst_tax_percentage` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.sgst_gst_fee` in response with status code 200
	- [Deleted] Required status from property `items[].gstDetails.sgst_tax_percentage` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].gstDetails.cgstGstFee` of schema `BagGSTDetails` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].gstDetails.igstGstFee` of schema `BagGSTDetails` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].gstDetails.sgstGstFee` of schema `BagGSTDetails` in response with status code 200


# CHANGE LOG (1.3.2) FP-v1.8.1


## Application Client



### Cart



#### getCart

- ##### What's New
	- [Added] property `breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### addItems

- ##### What's New
	- [Added] property `cart.breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### updateCart

- ##### What's New
	- [Added] property `cart.breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### applyCoupon

- ##### What's New
	- [Added] property `breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 201


#### removeCoupon

- ##### What's New
	- [Added] property `breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### applyRewardPoints

- ##### What's New
	- [Added] property `breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### selectAddress

- ##### What's New
	- [Added] property `breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 201


#### selectPaymentMode

- ##### What's New
	- [Added] property `breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### getShipments

- ##### What's New
	- [Added] property `breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### checkoutCart

- ##### What's New
	- [Added] property `cart.breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### getCartSharedItems

- ##### What's New
	- [Added] property `cart.breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200
	- [Added] property `cart.breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 404


#### updateCartWithSharedItems

- ##### What's New
	- [Added] property `cart.breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


#### checkoutCartV2

- ##### What's New
	- [Added] property `cart.breakupValues.raw.mopTotal` of schema `RawBreakup` in response with status code 200


## Platform Client



### Order



#### getShipments

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].bags[].gst.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].bags[].gst.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].bags[].gst.cgstGstFee` of schema `GSTDetailsData` in response with status code 200


#### getShipmentById

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200


#### getOrderById

- ##### What's Changed
	- [Breaking] [Changed] Type from `integer` to `string` of property `order.meta.employeeId` of schema `OrderMeta` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `shipments[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200


#### getOrders

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].shipments[].gstDetails.igstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].shipments[].gstDetails.sgstGstFee` of schema `GSTDetailsData` in response with status code 200
	- [Breaking] [Changed] Type from `string` to `number` of property `items[].shipments[].gstDetails.cgstGstFee` of schema `GSTDetailsData` in response with status code 200


### Payment



#### getBrandPaymentGatewayConfig

- ##### What's New
	- [Added] `query` parameter `aggregator` (type: `string`)

	- [Added] `query` parameter `configType` (type: `string`)



### Theme



#### getCompanyLevelThemes

- ##### What's New
	- [Added] Content in Response 401


#### addMarketplaceThemeToCompany

- ##### What's New
	- [Added] Content in Response 401


### Webhook



#### getSubscribersByCompany

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberResponse` in response with status code 200


#### registerSubscriberToEvent

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberConfig` in request body
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberConfig` in request body
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberConfig` in request body
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberConfig` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberConfig` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberConfig` in response with status code 200


#### updateSubscriberConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberConfig` in request body
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberConfig` in request body
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberConfig` in request body
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberConfig` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberConfig` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberConfig` in response with status code 200


#### getSubscriberById

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberResponse` in response with status code 200


#### getSubscribersByExtensionId

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `items[].status` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `items[].status` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `items[].status` of schema `SubscriberResponse` in response with status code 200



# CHANGE LOG (1.3.0) FP-v1.8.0

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
