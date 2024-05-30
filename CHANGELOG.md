# CHANGE LOG (1.4.2-beta.8) - v1.8.7-prerelease-v8

## Application Client

- [Added] PosCart class in application client


### Cart



#### getCart

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `lastModified` of schema `CartDetailResponse` in response with status code 200


#### addItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].sellerIdentifier` of schema `AddProductCart` in request body
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `cart.lastModified` of schema `CartDetailResponse` in response with status code 200


#### updateCart

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `cartType` (type: `string`)

	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `cart.lastModified` of schema `CartDetailResponse` in response with status code 200


#### getCoupons

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `slug` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `storeId` (type: `string`)

	- [Breaking] [Deleted] property `availableCouponList[].couponAmount` of schema `Coupon` in response with status code 200
	- [Breaking] [Deleted] property `availableCouponList[].startDate` of schema `Coupon` in response with status code 200
	- [Breaking] [Deleted] property `availableCouponList[].endDate` of schema `Coupon` in response with status code 200
	- [Breaking] [Deleted] property `availableCouponList[].couponApplicableMessage` of schema `Coupon` in response with status code 200


#### applyCoupon

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `cartType` (type: `string`)

	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 201
	- [Breaking] [Deleted] property `items[].charges` of schema `CartProductInfo` in response with status code 201
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 201
	- [Breaking] [Deleted] property `breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 201

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `lastModified` of schema `CartDetailResponse` in response with status code 201


#### removeCoupon

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `lastModified` of schema `CartDetailResponse` in response with status code 200


#### applyRewardPoints

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `lastModified` of schema `CartDetailResponse` in response with status code 200


#### getAddresses

- ##### What's Deprecated
	- [Breaking] [Deleted] property `address[].sector` of schema `Address` in response with status code 200
	- [Breaking] [Deleted] property `address[].stateCode` of schema `Address` in response with status code 200


#### addAddress

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sector` of schema `Address` in request body
	- [Breaking] [Deleted] property `stateCode` of schema `Address` in request body


#### getAddressById

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sector` of schema `Address` in response with status code 200
	- [Breaking] [Deleted] property `stateCode` of schema `Address` in response with status code 200


#### updateAddress

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sector` of schema `Address` in request body
	- [Breaking] [Deleted] property `stateCode` of schema `Address` in request body


#### selectAddress

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 201
	- [Breaking] [Deleted] property `items[].charges` of schema `CartProductInfo` in response with status code 201
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 201
	- [Breaking] [Deleted] property `breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 201

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `lastModified` of schema `CartDetailResponse` in response with status code 201


#### selectPaymentMode

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `lastModified` of schema `CartDetailResponse` in response with status code 200


#### validateCouponForPayment

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `cartType` (type: `string`)



#### getShipments

- ##### What's Deprecated
	- [Breaking] [Deleted] property `shipments[].promise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `lastModified` of schema `CartShipmentsResponse` in response with status code 200


#### checkoutCart

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `cartType` (type: `string`)

	- [Breaking] [Deleted] property `iin` of schema `CartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `network` of schema `CartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `type` of schema `CartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `cardId` of schema `CartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `cart.lastModified` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.codCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.codCharges` of schema `CheckCart` in response with status code 200


#### getCartSharedItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].charges` of schema `CartProductInfo` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 404
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 404
	- [Breaking] [Deleted] property `cart.breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 404
	- [Breaking] [Deleted] property `cart.breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 404

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `cart.lastModified` of schema `SharedCart` in response with status code 200
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `cart.lastModified` of schema `SharedCart` in response with status code 404


#### updateCartWithSharedItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `cart.lastModified` of schema `SharedCart` in response with status code 200


#### getPromotionOffers

- ##### What's New
	- [Added] property `availablePromotions[].promotionName` of schema `PromotionOffer` in response with status code 200
	- [Added] property `availablePromotions[].promotionType` of schema `PromotionOffer` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `cartType` (type: `string`)



#### checkoutCartV2

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `cartType` (type: `string`)

	- [Breaking] [Deleted] property `iin` of schema `CartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `network` of schema `CartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `type` of schema `CartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `cardId` of schema `CartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].charges` of schema `CartProductInfo` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.display[].preset` of schema `DisplayBreakup` in response with status code 200
	- [Breaking] [Deleted] property `cart.breakupValues.raw.totalCharge` of schema `RawBreakup` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `date-time` to `date` of property `cart.lastModified` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.codCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.codCharges` of schema `CheckCart` in response with status code 200


### Catalog



#### getProductStockForTimeByIds

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getProducts

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getBrands

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getHomeProducts

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getCollections

- ##### What's New
	- [Added] property `items[].tag` of schema `GetCollectionDetailNest` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].tags` of schema `GetCollectionDetailNest` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getCollectionItemsBySlug

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getFollowedListing

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getStores

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getInStockLocations

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getProductPriceBySlug

- ##### What's New
	- [Added] `query` parameter `pincode` (type: `string`)



#### getProductSellersBySlug

- ##### What's New
	- [Added] `query` parameter `pincode` (type: `string`)

	- [Breaking] [Added] Possible nullable value `true` to property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


### Configuration



#### getApplication

- ##### What's New
	- [Added] property `updatedAt` of schema `Application` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `slug` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `mode` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `status` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `tokens` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `Application` in response with status code 200


#### getOwnerInfo

- ##### What's New
	- [Breaking] [Added] properties `applicationInfo.meta.name`, `applicationInfo.meta.value` in response with status code 200
	- [Added] property `companyInfo` of schema `ApplicationAboutResponse` in response with status code 200
	- [Added] property `ownerInfo` of schema `ApplicationAboutResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `applicationInfo.meta[]` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.mode` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.tokens` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.domains` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.favicon` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.slug` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.companyInfo` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.ownerInfo` of schema `ApplicationInfo` in response with status code 200
	- [Breaking] [Deleted] property `applicationInfo.mobileLogo` of schema `ApplicationInfo` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `array` to `object` of property `applicationInfo.meta` of schema `ApplicationInfo` in response with status code 200


#### getBasicDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] property `slug` of schema `ApplicationDetail` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ApplicationDetail` in response with status code 200


#### getIntegrationTokens

- ##### What's New
	- [Added] property `updatedAt` of schema `AppTokenResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppTokenResponse` in response with status code 200


#### getFeatures

- ##### What's New
	- [Added] property `feature.updatedAt` of schema `AppFeature` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `feature.common.listingPage` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `feature.common.internationalShipping` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `feature.modifiedAt` of schema `AppFeature` in response with status code 200


#### getContactInfo

- ##### What's New
	- [Breaking] [Added] Value format `nullable` to property `address.loc` of schema `InformationAddress` in response with status code 200
	- [Breaking] [Added] properties `address.phone.code`, `address.phone.number` in response with status code 200
	- [Breaking] [Added] properties `links.title`, `links.link` in response with status code 200
	- [Breaking] [Added] properties `businessHighlights.title`, `businessHighlights.icon`, `businessHighlights.id`, `businessHighlights.subTitle` in response with status code 200
	- [Added] property `updatedAt` of schema `ApplicationInformation` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `address.loc.type`, `address.loc.coordinates` in response with status code 200
	- [Breaking] [Deleted] property `address.phone[]` of schema `InformationAddress` in response with status code 200
	- [Deleted] properties `support.phone[].code`, `support.phone[].number`, `support.phone[].key` in response with status code 200
	- [Deleted] properties `support.email[].value`, `support.email[].key` in response with status code 200
	- [Breaking] [Deleted] property `links[]` of schema `ApplicationInformation` in response with status code 200
	- [Breaking] [Deleted] property `businessHighlights[]` of schema `ApplicationInformation` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInformation` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `address.loc` of schema `InformationLoc` in response with status code 200
	- [Breaking] [Changed] Type from `array` to `object` of property `address.phone` of schema `InformationAddress` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `string` of property `support.phone[]` of schema `InformationSupportPhone` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `string` of property `support.email[]` of schema `InformationSupportEmail` in response with status code 200
	- [Breaking] [Changed] Type from `array` to `object` of property `links` of schema `ApplicationInformation` in response with status code 200
	- [Breaking] [Changed] Type from `array` to `object` of property `businessHighlights` of schema `ApplicationInformation` in response with status code 200


#### getCurrencies

- ##### What's New
	- [Added] property `items[].updatedAt` of schema `Currency` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].modifiedAt` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `items[].countryName` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `items[].countryCode` of schema `Currency` in response with status code 200


#### getCurrencyById

- ##### What's New
	- [Added] property `updatedAt` of schema `Currency` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `modifiedAt` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `countryName` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `countryCode` of schema `Currency` in response with status code 200


#### getAppCurrencies

- ##### What's New
	- [Added] property `supportedCurrency[].updatedAt` of schema `Currency` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `supportedCurrency[].modifiedAt` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `supportedCurrency[].countryName` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `supportedCurrency[].countryCode` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `AppCurrencyResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `AppCurrencyResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppCurrencyResponse` in response with status code 200


#### getAppStaffList

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


### Content



#### getBlog

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getBlogs

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getLandingPage

- ##### What's New
	- [Breaking] [Added] Type `object` to property `action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.page.params`, `action.page.query`, `action.page.url`, `action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.popup.params`, `action.popup.query`, `action.popup.url`, `action.popup.type` in response with status code 200


#### getNavigations

- ##### What's New
	- [Breaking] [Added] Type `object` to property `items[].navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].navigation[].action.page.params`, `items[].navigation[].action.page.query`, `items[].navigation[].action.page.url`, `items[].navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].navigation[].action.popup.params`, `items[].navigation[].action.popup.query`, `items[].navigation[].action.popup.url`, `items[].navigation[].action.popup.type` in response with status code 200


#### getSEOConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.additonalSitemap` of schema `SeoSchema` in response with status code 200


#### getSEOMarkupSchemas

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getSEOMarkupSchemas`



#### getSlideshows

- ##### What's New
	- [Breaking] [Added] Type `object` to property `items[].media[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].media[].action.page.params`, `items[].media[].action.page.query`, `items[].media[].action.page.url`, `items[].media[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].media[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].media[].action.popup.params`, `items[].media[].action.popup.query`, `items[].media[].action.popup.url`, `items[].media[].action.popup.type` in response with status code 200


#### getSlideshow

- ##### What's New
	- [Breaking] [Added] Type `object` to property `media[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.page.params`, `media[].action.page.query`, `media[].action.page.url`, `media[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `media[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.popup.params`, `media[].action.popup.query`, `media[].action.popup.url`, `media[].action.popup.type` in response with status code 200


#### getPage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getPages

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomObject`



#### getCustomFields

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomFields`



### Lead



#### getTicket

- ##### What's New
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### createHistory

- ##### What's New
	- [Added] Possible values to property `type` of schema `HistoryTypeEnum` in request body
	- [Added] Possible values to property `type` of schema `HistoryTypeEnum` in request body
	- [Added] Possible values to property `type` of schema `HistoryTypeEnum` in request body
	- [Added] Possible values to property `type` of schema `HistoryTypeEnum` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `rating` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `log` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `comment` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `thread` from property `type` of schema `HistoryTypeEnum` in request body


#### createTicket

- ##### What's New
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `low` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `medium` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `high` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### getCustomForm

- ##### What's New
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### submitCustomForm

- ##### What's New
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `ticket.source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `ticket.source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `video` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `file` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `youtube` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `product` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `collection` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `brand` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `shipment` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `order` from property `attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `image` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `ticket.content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `ticket.source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `ticket.source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `ticket.priority.key` of schema `PriorityEnum` in response with status code 200


#### getParticipantsInsideVideoRoom

- ##### What's New
	- [Breaking] [Added] Type `object` to property `participants[].user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `participants[].user.emails[].primary`, `participants[].user.emails[].verified`, `participants[].user.emails[].email`, `participants[].user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `participants[].user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `participants[].user.phoneNumbers[].active`, `participants[].user.phoneNumbers[].primary`, `participants[].user.phoneNumbers[].verified`, `participants[].user.phoneNumbers[].phone`, `participants[].user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] property `participants[].user.uid` of schema `UserSchema` in response with status code 200
	- [Added] property `participants[].user.debug` of schema `UserSchema` in response with status code 200
	- [Added] property `participants[].user.hasOldPasswordHash` of schema `UserSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `participants[].user.meta` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.dob` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.applicationId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.userId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.rrId` of schema `UserSchema` in response with status code 200


### Logistic



#### getLocations

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getLocations`



#### getCountries

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCountries`



#### getCountry

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCountry`



#### getLocalities

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getLocalities`



#### getLocality

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getLocality`



#### validateAddress

- ##### What's Deprecated
	- [Breaking] [Deleted] method `validateAddress`



### Order



#### getOrders

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `startDate` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `endDate` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `allowInactive` (type: `boolean`)

	- [Breaking] [Deleted] property `items[].shipments[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].article` of schema `Bags` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].financialBreakup[].amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].order` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].paymentInfo` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].trackingDetails[].createdTs` of schema `TrackingDetails` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].shipmentCreatedTs` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].deliveryAddress.displayAddress` of schema `DeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].orderCreatedTs` of schema `OrderSchema` in response with status code 200


#### getOrderById

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `allowInactive` (type: `boolean`)

	- [Breaking] [Deleted] property `order.shipments[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].bags[].article` of schema `Bags` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].bags[].financialBreakup[].amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].order` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].paymentInfo` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].trackingDetails[].createdTs` of schema `TrackingDetails` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].shipmentCreatedTs` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `order.shipments[].deliveryAddress.displayAddress` of schema `DeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `order.orderCreatedTs` of schema `OrderSchema` in response with status code 200


#### getShipmentById

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `allowInactive` (type: `boolean`)

	- [Breaking] [Deleted] property `shipment.prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `shipment.bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `shipment.bags[].article` of schema `Bags` in response with status code 200
	- [Breaking] [Deleted] property `shipment.bags[].financialBreakup[].amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Deleted] property `shipment.order` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `shipment.paymentInfo` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `shipment.trackingDetails[].createdTs` of schema `TrackingDetails` in response with status code 200
	- [Breaking] [Deleted] property `shipment.shipmentCreatedTs` of schema `Shipments` in response with status code 200
	- [Breaking] [Deleted] property `shipment.deliveryAddress.displayAddress` of schema `DeliveryAddress` in response with status code 200


#### getPosOrderById

- ##### What's New
	- [Added] method `getPosOrderById`



### Payment



#### getActiveCardAggregator

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `cards` of schema `CardPaymentGateway` in response with status code 200
	- [Deleted] properties `cards.api`, `cards.aggregator`, `cards.customerId` in response with status code 200
	- [Deleted] Required status from property `cards.aggregator` in response with status code 200


#### getPaymentModeRoutes

- ##### What's New
	- [Breaking] [Deleted] `query` parameter `orderId` (type: `string`)

- [Breaking] [Added] Required `query` parameter `pincode` (type: `string`)

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `displaySplit` (type: `boolean`)

	- [Breaking] [Deleted] `query` parameter `advancePayment` (type: `boolean`)

	- [Breaking] [Deleted] `query` parameter `shipmentId` (type: `string`)

	- [Deleted] Type from `object` from property `paymentOptions` of schema `PaymentOptionAndFlow` in response with status code 200
	- [Deleted] properties `paymentOptions.paymentOption`, `paymentOptions.paymentFlows`, `paymentOptions.paymentDefaultSelection` in response with status code 200
	- [Deleted] Required status from properties `paymentOptions.payment_flows`, `paymentOptions.payment_option` in response with status code 200
	- [Breaking] [Deleted] property `paymentBreakup` of schema `PaymentModeRouteResponse` in response with status code 200
	- [Breaking] [Deleted] property `advancePayment` of schema `PaymentModeRouteResponse` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Required status of query parameter `cartId`
	- [Breaking] [Changed] Required status of query parameter `checkoutMode`


#### getPosPaymentModeRoutes

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `paymentOptions` of schema `PaymentOptionAndFlow` in response with status code 200
	- [Deleted] properties `paymentOptions.paymentOption`, `paymentOptions.paymentFlows`, `paymentOptions.paymentDefaultSelection` in response with status code 200
	- [Deleted] Required status from properties `paymentOptions.payment_flows`, `paymentOptions.payment_option` in response with status code 200
	- [Breaking] [Deleted] property `paymentBreakup` of schema `PaymentModeRouteResponse` in response with status code 200
	- [Breaking] [Deleted] property `advancePayment` of schema `PaymentModeRouteResponse` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Required status of query parameter `cartId`
	- [Breaking] [Changed] Required status of query parameter `checkoutMode`


#### walletLinkInitiate

- ##### What's Deprecated
	- [Breaking] [Deleted] method `walletLinkInitiate`



#### linkWallet

- ##### What's Deprecated
	- [Breaking] [Deleted] method `linkWallet`



#### delinkWallet

- ##### What's Deprecated
	- [Breaking] [Deleted] method `delinkWallet`



#### getRupifiBannerDetails

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `RupifiBannerData` in response with status code 200
	- [Deleted] properties `data.status`, `data.kycUrl` in response with status code 200


#### getEpaylaterBannerDetails

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `EpaylaterBannerData` in response with status code 200
	- [Deleted] properties `data.status`, `data.message`, `data.display` in response with status code 200
	- [Deleted] Required status from property `data.display` in response with status code 200


#### resendOrCancelPayment

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `LinkStatus` in response with status code 200
	- [Deleted] properties `data.status`, `data.message` in response with status code 200
	- [Deleted] Required status from properties `data.message`, `data.status` in response with status code 200


#### validateVPA

- ##### What's Deprecated
	- [Breaking] [Deleted] property `aggregator` of schema `ValidateVPARequest` in request body
	- [Deleted] Type from `object` from property `data` of schema `ValidateUPI` in response with status code 200
	- [Deleted] properties `data.status`, `data.customerName`, `data.isValid`, `data.upiVpa` in response with status code 200
	- [Deleted] Required status from properties `data.customer_name`, `data.is_valid`, `data.status`, `data.upi_vpa` in response with status code 200


#### cardDetails

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `CardDetails` in response with status code 200
	- [Deleted] properties `data.status`, `data.country`, `data.id`, `data.type`, `data.user`, `data.bank`, `data.bankCode`, `data.cardExpYear`, `data.cardBrand`, `data.cardSubType`, `data.isDomesticCard`, `data.nameOnCard`, `data.cardExpMonth`, `data.extendedCardType`, `data.cardObject`, `data.cardToken` in response with status code 200
	- [Deleted] Required status from properties `data.bank`, `data.bank_code`, `data.card_brand`, `data.card_object`, `data.card_sub_type`, `data.country`, `data.extended_card_type`, `data.id`, `data.is_domestic_card`, `data.status`, `data.type` in response with status code 200


#### addBeneficiaryDetails

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `details` of schema `BeneficiaryModeDetails` in request body
	- [Deleted] properties `details.address`, `details.mobile`, `details.comment`, `details.vpa`, `details.wallet`, `details.email`, `details.accountNo`, `details.bankName`, `details.ifscCode`, `details.branchName`, `details.accountHolder` in request body
	- [Deleted] Required status from properties `details.account_holder`, `details.account_no`, `details.bank_name`, `details.branch_name`, `details.email`, `details.ifsc_code`, `details.mobile` in request body


#### getPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 400
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 500


#### createPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `meta` of schema `CreatePaymentLinkMeta` in request body
	- [Deleted] properties `meta.amount`, `meta.cartId`, `meta.checkoutMode`, `meta.assignCardId` in request body
	- [Deleted] Required status from properties `meta.amount`, `meta.cart_id`, `meta.checkout_mode` in request body
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 400
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 500


#### resendPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 400
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 500


#### cancelPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 400
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 500


#### getPaymentModeRoutesPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `paymentOptions` of schema `PaymentOptionAndFlow` in response with status code 200
	- [Deleted] properties `paymentOptions.paymentOption`, `paymentOptions.paymentFlows`, `paymentOptions.paymentDefaultSelection` in response with status code 200
	- [Deleted] Required status from properties `paymentOptions.payment_flows`, `paymentOptions.payment_option` in response with status code 200
	- [Breaking] [Deleted] property `paymentBreakup` of schema `PaymentModeRouteResponse` in response with status code 200
	- [Breaking] [Deleted] property `advancePayment` of schema `PaymentModeRouteResponse` in response with status code 200
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 400
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 500


#### pollingPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 400
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 500


#### createOrderHandlerPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `paymentMethods` of schema `CreateOrderUserPaymentMethods` in request body
	- [Deleted] properties `paymentMethods.name`, `paymentMethods.mode`, `paymentMethods.meta` in request body
	- [Deleted] Required status from properties `paymentMethods.meta`, `paymentMethods.mode`, `paymentMethods.name` in request body
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 400
	- [Deleted] properties `error.expired`, `error.msg`, `error.cancelled`, `error.amount`, `error.paymentTransactionId`, `error.merchantOrderId`, `error.merchantName`, `error.invalidId` in response with status code 500


#### customerCreditSummary

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `CreditSummary` in response with status code 200
	- [Deleted] properties `data.status`, `data.limit`, `data.balance`, `data.totalDueAmount`, `data.creditLineId`, `data.amountAvailable`, `data.dueAmount`, `data.dueDate`, `data.statusMessage`, `data.repaymentUrl`, `data.soaUrl`, `data.isEligibleForTxn`, `data.merchantCustomerRefId`, `data.buyerStatus`, `data.activationUrl` in response with status code 200


#### redirectToAggregator

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `RedirectURL` in response with status code 200
	- [Deleted] properties `data.status`, `data.signupUrl` in response with status code 200
	- [Deleted] Required status from properties `data.signup_url`, `data.status` in response with status code 200


#### checkCredit

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `CreditDetail` in response with status code 200
	- [Deleted] properties `data.status`, `data.isRegistered`, `data.signupUrl` in response with status code 200
	- [Deleted] Required status from properties `data.is_registered`, `data.signup_url`, `data.status` in response with status code 200


#### customerOnboard

- ##### What's New
	- [Breaking] [Added] Required status to property `source` in request body

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `device` of schema `DeviceDetails` in request body
	- [Deleted] properties `device.os`, `device.identificationNumber`, `device.identifierType`, `device.deviceModel`, `device.deviceMake`, `device.deviceType`, `device.osVersion` in request body
	- [Deleted] Type from `object` from property `personalInfo` of schema `UserPersonalInfoInDetails` in request body
	- [Deleted] properties `personalInfo.gender`, `personalInfo.dob`, `personalInfo.passport`, `personalInfo.pan`, `personalInfo.phone`, `personalInfo.email`, `personalInfo.firstName`, `personalInfo.voterId`, `personalInfo.fathersName`, `personalInfo.mothersName`, `personalInfo.middleName`, `personalInfo.lastName`, `personalInfo.drivingLicense`, `personalInfo.emailVerified`, `personalInfo.addressAsPerId`, `personalInfo.mobileVerified` in request body
	- [Deleted] Required status from properties `personalInfo.address_as_per_id`, `personalInfo.dob`, `personalInfo.email_verified`, `personalInfo.first_name`, `personalInfo.mobile_verified`, `personalInfo.phone` in request body
	- [Deleted] Type from `object` from property `marketplaceInfo` of schema `MarketplaceInfo` in request body
	- [Deleted] properties `marketplaceInfo.name`, `marketplaceInfo.dateOfJoining`, `marketplaceInfo.membershipId` in request body
	- [Deleted] Required status from properties `marketplaceInfo.membership_id`, `marketplaceInfo.name` in request body
	- [Deleted] Type from `object` from property `businessInfo` of schema `BusinessDetails` in request body
	- [Deleted] properties `businessInfo.vintage`, `businessInfo.gstin`, `businessInfo.pan`, `businessInfo.fssai`, `businessInfo.fda`, `businessInfo.name`, `businessInfo.address`, `businessInfo.businessOwnershipType`, `businessInfo.entityType`, `businessInfo.shopAndEstablishment`, `businessInfo.businessType` in request body
	- [Deleted] Type from `object` from property `data` of schema `OnboardSummary` in response with status code 200
	- [Deleted] properties `data.session`, `data.status`, `data.redirectUrl`, `data.statusRemark`, `data.isEligibleForTxn`, `data.merchantCustomerRefId`, `data.activationUrl` in response with status code 200
	- [Deleted] Required status from property `data.status` in response with status code 200


#### createPaymentOrder

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createPaymentOrder`



### Rewards



#### getUserPointsHistory

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


### Share



#### createShortLink

- ##### What's New
	- [Added] property `url.short` of schema `UrlInfo` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `url.shortUrl` of schema `UrlInfo` in response with status code 200


#### getShortLinkByHash

- ##### What's New
	- [Added] property `url.short` of schema `UrlInfo` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `url.shortUrl` of schema `UrlInfo` in response with status code 200


#### getOriginalShortLinkByHash

- ##### What's New
	- [Added] property `url.short` of schema `UrlInfo` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `url.shortUrl` of schema `UrlInfo` in response with status code 200


### Theme



#### getAllPages

- ##### What's Deprecated
	- [Breaking] [Deleted] property `pages[].sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.canonicalUrl` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.metaTags` of schema `AvailablePageSeo` in response with status code 200


#### getPage

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `filters` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `company` (type: `integer`)

	- [Breaking] [Deleted] property `sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `AvailablePageSeo` in response with status code 200


#### getAppliedTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200


#### getThemeForPreview

- ##### What's Deprecated
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200


### User



#### loginWithFacebook

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 401


#### loginWithGoogle

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200


#### loginWithGoogleAndroid

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200


#### loginWithGoogleIOS

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200


#### loginWithAppleIOS

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200


#### loginWithOTP

- ##### What's New
	- [Added] property `captchaCode` of schema `SendOtpRequestSchema` in request body
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `encryptOtp` of schema `SendOtpRequestSchema` in request body
	- [Breaking] [Deleted] Response with status 400


#### loginWithEmailAndPassword

- ##### What's New
	- [Added] property `captchaCode` of schema `PasswordLoginRequestSchema` in request body
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### sendResetPasswordEmail

- ##### What's New
	- [Added] property `captchaCode` of schema `SendResetPasswordEmailRequestSchema` in request body
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### sendResetPasswordMobile

- ##### What's New
	- [Added] property `captchaCode` of schema `SendResetPasswordMobileRequestSchema` in request body
	- [Added] Response with status 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### sendResetToken

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### forgotPassword

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### resetForgotPassword

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### loginWithToken

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `code` of schema `APIError` in response with status code 400
	- [Breaking] [Deleted] property `info` of schema `APIError` in response with status code 400
	- [Breaking] [Deleted] property `error` of schema `APIError` in response with status code 400
	- [Breaking] [Deleted] property `meta` of schema `APIError` in response with status code 400
	- [Breaking] [Deleted] property `authenticated` of schema `APIError` in response with status code 400
	- [Breaking] [Deleted] property `requestId` of schema `APIError` in response with status code 400


#### registerWithForm

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### verifyEmail

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### verifyMobile

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### hasPassword

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 401

- ##### What's Changed
	- [Breaking] [Changed] Type from `integer` to `boolean` of property `result` of schema `HasPasswordSuccess` in response with status code 200


#### updatePassword

- ##### What's New
	- [Added] Response with status 500
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### sendOTPOnMobile

- ##### What's New
	- [Added] property `captchaCode` of schema `SendMobileOtpRequestSchema` in request body
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `encryptOtp` of schema `SendMobileOtpRequestSchema` in request body
	- [Breaking] [Deleted] Response with status 400


#### sendForgotOTPOnMobile

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### verifyMobileOTP

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### verifyMobileForgotOTP

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### sendOTPOnEmail

- ##### What's New
	- [Added] property `captchaCode` of schema `SendEmailOtpRequestSchema` in request body
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `resendEmailToken` of schema `EmailOtpSuccess` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### sendForgotOTPOnEmail

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `resendEmailToken` of schema `EmailOtpSuccess` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### verifyEmailOTP

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### verifyEmailForgotOTP

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### getLoggedInUser

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 401


#### getListOfActiveSessions

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 401


#### getPlatformConfig

- ##### What's New
	- [Added] property `socialTokens.accountKit` of schema `SocialTokens` in response with status code 200
	- [Added] property `deleteAccountConsent[]` of schema `PlatformSchema` in response with status code 200
	- [Added] property `sessionConfig[]` of schema `PlatformSchema` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `socialTokens.accountkit` of schema `SocialTokens` in response with status code 200
	- [Deleted] properties `deleteAccountConsent.consentText` in response with status code 200
	- [Deleted] properties `sessionConfig.duration`, `sessionConfig.type`, `sessionConfig.isRolling` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `PlatformSchema` in response with status code 200


#### updateProfile

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `encryptOtp` of schema `EditProfileRequestSchema` in request body
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### addMobileNumber

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### deleteMobileNumber

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### setMobileNumberAsPrimary

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### sendVerificationLinkToMobile

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### addEmail

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### deleteEmail

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### setEmailAsPrimary

- ##### What's New
	- [Breaking] [Added] Type `object` to property `user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `user.emails[].primary`, `user.emails[].verified`, `user.emails[].email`, `user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `user.phoneNumbers[].active`, `user.phoneNumbers[].primary`, `user.phoneNumbers[].verified`, `user.phoneNumbers[].phone`, `user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### sendVerificationLinkToEmail

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### userExists

- ##### What's Deprecated
	- [Breaking] [Deleted] method `userExists`



#### deleteUser

- ##### What's New
	- [Added] Response with status 500
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### logout

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 401


#### getUserAttributes

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getUserAttributes`



#### updateUserAttributes

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateUserAttributes`



## Platform Client

- [Added] Inventory class in platform client


### AuditTrail



#### getAuditLogs

- ##### What's Changed
	- [Changed] Path From `/service/platform/audit-trail/v1.0/company/{company_id}/logs` To `/service/platform/audit-trail/v1.0/company/{company_id}/logs/`


#### createAuditLog

- ##### What's Changed
	- [Changed] Path From `/service/platform/audit-trail/v1.0/company/{company_id}/logs` To `/service/platform/audit-trail/v1.0/company/{company_id}/logs/`


### Billing



#### getentityDetail

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getentityDetail`



### Cart



#### getCoupons

- ##### What's New
	- [Added] property `page.page` of schema `Page` in response with status code 200
	- [Added] property `page.lastId` of schema `Page` in response with status code 200


#### createCoupon

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400


#### getCouponById

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 404


#### updateCoupon

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 404


#### updateCouponPartially

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 404


#### getPromotions

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `items[].restrictions.userRegistered` of schema `Restrictions1` in response with status code 200
	- [Added] property `page.page` of schema `Page` in response with status code 200
	- [Added] property `page.lastId` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `items[].restrictions.userRegistered.end`, `items[].restrictions.userRegistered.start` in response with status code 200
	- [Breaking] [Deleted] property `items[].tags` of schema `PromotionListItem` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `items[].restrictions.payments` of schema `Restrictions1` in response with status code 200


#### createPromotion

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `restrictions.userRegistered` of schema `Restrictions1` in request body
	- [Breaking] [Added] Possible nullable value `true` to property `restrictions.userRegistered` of schema `Restrictions1` in response with status code 201

- ##### What's Deprecated
	- [Deleted] properties `restrictions.userRegistered.end`, `restrictions.userRegistered.start` in request body
	- [Breaking] [Deleted] property `tags` of schema `PromotionAdd` in request body
	- [Deleted] properties `restrictions.userRegistered.end`, `restrictions.userRegistered.start` in response with status code 201
	- [Breaking] [Deleted] property `tags` of schema `PromotionAdd` in response with status code 201
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `restrictions.payments` of schema `Restrictions1` in request body
	- [Breaking] [Changed] Type from `object` to `array` of property `restrictions.payments` of schema `Restrictions1` in response with status code 201


#### getPromotionById

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `restrictions.userRegistered` of schema `Restrictions1` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `restrictions.userRegistered.end`, `restrictions.userRegistered.start` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `PromotionUpdate` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 404

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `restrictions.payments` of schema `Restrictions1` in response with status code 200


#### updatePromotion

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `restrictions.userRegistered` of schema `Restrictions1` in request body
	- [Breaking] [Added] Possible nullable value `true` to property `restrictions.userRegistered` of schema `Restrictions1` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `restrictions.userRegistered.end`, `restrictions.userRegistered.start` in request body
	- [Breaking] [Deleted] property `tags` of schema `PromotionUpdate` in request body
	- [Deleted] properties `restrictions.userRegistered.end`, `restrictions.userRegistered.start` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `PromotionUpdate` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 404

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `restrictions.payments` of schema `Restrictions1` in request body
	- [Breaking] [Changed] Type from `object` to `array` of property `restrictions.payments` of schema `Restrictions1` in response with status code 200


#### updatePromotionPartially

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 404


#### updateCartMetaConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] property `maxCartValue` of schema `CartMetaConfigUpdate` in request body
	- [Breaking] [Deleted] property `maxCartValue` of schema `CartMetaConfigUpdate` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400


#### fetchCartMetaConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] property `maxCartValue` of schema `CartMetaConfigAdd` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400


#### createCartMetaConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] property `maxCartValue` of schema `CartMetaConfigAdd` in request body
	- [Breaking] [Deleted] property `maxCartValue` of schema `CartMetaConfigAdd` in response with status code 201
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400


#### updatePriceAdjustment

- ##### What's Deprecated
	- [Breaking] [Deleted] property `restrictions` of schema `PriceAdjustmentUpdate` in request body
	- [Breaking] [Deleted] property `data.restrictions` of schema `PriceAdjustment` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400


#### removePriceAdjustment

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400


#### addPriceAdjustment

- ##### What's Deprecated
	- [Breaking] [Deleted] property `restrictions` of schema `PriceAdjustmentAdd` in request body
	- [Breaking] [Deleted] property `data.restrictions` of schema `PriceAdjustment` in response with status code 201
	- [Breaking] [Deleted] property `error` of schema `OperationErrorResponse` in response with status code 400


#### fetchAndvalidateCartItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200


#### checkCartServiceability

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200


#### getAbandonedCart

- ##### What's New
	- [Added] property `page.page` of schema `Page` in response with status code 200
	- [Added] property `page.lastId` of schema `Page` in response with status code 200


#### getAbandonedCartDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### addItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].sellerIdentifier` of schema `AddProductCart` in request body
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### updateCart

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### overrideCart

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cartItems[].promoList[].parentPromoId` of schema `OverrideCartItemPromo` in request body


#### getCartSharedItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 404
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 404
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 404


#### updateCartWithSharedItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200


#### getCartList

- ##### What's Deprecated
	- [Breaking] [Deleted] property `data[].currencyCode` of schema `CartList` in response with status code 200


#### updateCartUser

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### getCart

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### platformAddItems

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].sellerIdentifier` of schema `AddProductCart` in request body
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### platformUpdateCart

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### getAppCoupons

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `slug` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `storeId` (type: `string`)

	- [Breaking] [Deleted] property `availableCouponList[].startDate` of schema `Coupon` in response with status code 200
	- [Breaking] [Deleted] property `availableCouponList[].endDate` of schema `Coupon` in response with status code 200
	- [Breaking] [Deleted] property `availableCouponList[].couponApplicableMessage` of schema `Coupon` in response with status code 200


#### applyCoupon

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 201


#### removeCoupon

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### getAddresses

- ##### What's Deprecated
	- [Breaking] [Deleted] property `address[].sector` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `address[].stateCode` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `address[].countryPhoneCode` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `address[].countryIsoCode` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `address[].customJson` of schema `PlatformAddress` in response with status code 200


#### addAddress

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sector` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `stateCode` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `countryPhoneCode` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `countryIsoCode` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `customJson` of schema `PlatformAddress` in request body


#### getAddressById

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sector` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `stateCode` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `countryPhoneCode` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `countryIsoCode` of schema `PlatformAddress` in response with status code 200
	- [Breaking] [Deleted] property `customJson` of schema `PlatformAddress` in response with status code 200


#### updateAddress

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sector` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `stateCode` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `countryPhoneCode` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `countryIsoCode` of schema `PlatformAddress` in request body
	- [Breaking] [Deleted] property `customJson` of schema `PlatformAddress` in request body


#### selectAddress

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 201
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 201


#### getShipments

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].promise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### updateShipments

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].promise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### platformCheckoutCart

- ##### What's Deprecated
	- [Breaking] [Deleted] property `iin` of schema `PlatformCartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `network` of schema `PlatformCartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `type` of schema `PlatformCartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `cardId` of schema `PlatformCartCheckoutDetailRequest` in request body
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.codCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.codCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200


#### selectPaymentMode

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### platformCheckoutCartV2

- ##### What's Deprecated
	- [Breaking] [Deleted] property `iin` of schema `PlatformCartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `network` of schema `PlatformCartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `type` of schema `PlatformCartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `cardId` of schema `PlatformCartCheckoutDetailV2Request` in request body
	- [Breaking] [Deleted] property `cart.items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `cart.items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `cart.deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.codCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.codCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Type from `number` to `integer` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200
	- [Breaking] [Changed] Value format from `float` to `int32` of property `cart.deliveryCharges` of schema `CheckCart` in response with status code 200


#### selectPaymentModeV2

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].article.tags` of schema `ProductArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].promotionsApplied[].code` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `deliveryPromise.iso` of schema `ShipmentPromise` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].currency` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].meta` of schema `AppliedPromotion` in response with status code 200
	- [Breaking] [Deleted] property `appliedPromoDetails[].code` of schema `AppliedPromotion` in response with status code 200


#### getPriceAdjustments

- ##### What's New
	- [Added] method `getPriceAdjustments`



### Catalog



#### getApplicationBrandListing

- ##### What's New
	- [Breaking] [Added] properties `items[].action.page.query`, `items[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].action.popup` of schema `Action` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getApplicationBrands

- ##### What's New
	- [Breaking] [Added] properties `items[].action.page.query`, `items[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].action.popup` of schema `Action` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getCategories

- ##### What's New
	- [Breaking] [Added] properties `data[].items[].action.page.query`, `data[].items[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `data[].items[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `data[].items[].childs[].action.page.query`, `data[].items[].childs[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `data[].items[].childs[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `data[].items[].childs[].childs[].action.page.query`, `data[].items[].childs[].childs[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `data[].items[].childs[].childs[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `data[].items[].childs[].childs[].childs[].action.page.query`, `data[].items[].childs[].childs[].childs[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `data[].items[].childs[].childs[].childs[].action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `data[].items[].action.popup` of schema `Action` in response with status code 200
	- [Breaking] [Deleted] property `data[].items[].childs[].action.popup` of schema `Action` in response with status code 200
	- [Breaking] [Deleted] property `data[].items[].childs[].childs[].action.popup` of schema `Action` in response with status code 200
	- [Breaking] [Deleted] property `data[].items[].childs[].childs[].childs[].action.popup` of schema `Action` in response with status code 200


#### getApplicationCategoryListing

- ##### What's New
	- [Breaking] [Added] properties `items[].action.page.query`, `items[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].action.popup` of schema `Action` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getAllCollections

- ##### What's New
	- [Breaking] [Added] properties `items[].action.page.query`, `items[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].action.popup` of schema `Action` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### createCollection

- ##### What's New
	- [Added] property `seo.metaTags[].items[].title` of schema `ApplicationItemSeoMetaTags` in request body
	- [Added] property `seo.metaTags[].items[].items` of schema `ApplicationItemSeoMetaTags` in request body

- ##### What's Deprecated
	- [Deleted] Required status from property `seo.breadcrumbs[].action[].type` in request body
	- [Breaking] [Deleted] property `seo.metaTags[].items[].key` of schema `ApplicationItemSeoMetaTagItem` in request body
	- [Breaking] [Deleted] property `seo.metaTags[].items[].value` of schema `ApplicationItemSeoMetaTagItem` in request body
	- [Deleted] Required status from properties `seo.metaTags[].items[].key`, `seo.metaTags[].items[].value` in request body
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SeoDetail` in request body


#### getApplicationFilterValues

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getApplicationFilterValues`



#### getApplicationFilterKeys

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getApplicationFilterKeys`



#### updateCollection

- ##### What's New
	- [Added] property `seo.metaTags[].items[].title` of schema `ApplicationItemSeoMetaTags` in request body
	- [Added] property `seo.metaTags[].items[].items` of schema `ApplicationItemSeoMetaTags` in request body
	- [Added] property `seo.metaTags[].items[].title` of schema `ApplicationItemSeoMetaTags` in response with status code 200
	- [Added] property `seo.metaTags[].items[].items` of schema `ApplicationItemSeoMetaTags` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property `seo.breadcrumbs[].action[].type` in request body
	- [Breaking] [Deleted] property `seo.metaTags[].items[].key` of schema `ApplicationItemSeoMetaTagItem` in request body
	- [Breaking] [Deleted] property `seo.metaTags[].items[].value` of schema `ApplicationItemSeoMetaTagItem` in request body
	- [Deleted] Required status from properties `seo.metaTags[].items[].key`, `seo.metaTags[].items[].value` in request body
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SeoDetail` in request body
	- [Deleted] Required status from property `seo.breadcrumbs[].action[].type` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags[].items[].key` of schema `ApplicationItemSeoMetaTagItem` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags[].items[].value` of schema `ApplicationItemSeoMetaTagItem` in response with status code 200
	- [Deleted] Required status from properties `seo.metaTags[].items[].key`, `seo.metaTags[].items[].value` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SeoDetail` in response with status code 200


#### getCollectionItems

- ##### What's New
	- [Breaking] [Added] properties `items[].brand.action.page.query`, `items[].brand.action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].brand.action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].brand.action.popup` of schema `Action` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### addCollectionItems

- ##### What's New
	- [Added] property `itemsNotUpdated` of schema `UpdatedResponse` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property `type` in request body


#### getCollectionDetail

- ##### What's New
	- [Added] property `cron` of schema `CollectionDetailResponse` in response with status code 200
	- [Added] property `tag` of schema `CollectionDetailResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `action` of schema `GetCollectionDetailResponse` in response with status code 200
	- [Deleted] properties `badge.color`, `badge.text` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `GetCollectionDetailResponse` in response with status code 200
	- [Breaking] [Deleted] property `seo` of schema `GetCollectionDetailResponse` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `GetCollectionDetailResponse` in response with status code 200
	- [Breaking] [Deleted] property `customJson` of schema `GetCollectionDetailResponse` in response with status code 200
	- [Breaking] [Deleted] property `localeLanguage` of schema `GetCollectionDetailResponse` in response with status code 200
	- [Deleted] properties `schedule.cron`, `schedule.duration`, `schedule.end`, `schedule.start`, `schedule.nextSchedule` in response with status code 200
	- [Breaking] [Deleted] property `isVisible` of schema `GetCollectionDetailResponse` in response with status code 200
	- [Breaking] [Deleted] property `sortOn` of schema `GetCollectionDetailResponse` in response with status code 200


#### getApplicationDepartmentListing

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getAppLocations

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `tags` (type: `array`)

	- [Breaking] [Deleted] `query` parameter `storeTypes` (type: `array`)

	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getAppProduct

- ##### What's Deprecated
	- [Breaking] [Deleted] property `customJson` of schema `OwnerAppItemResponse` in response with status code 200
	- [Breaking] [Deleted] property `customMeta` of schema `OwnerAppItemResponse` in response with status code 200


#### getAppicationProducts

- ##### What's New
	- [Breaking] [Added] properties `items[].brand.action.page.query`, `items[].brand.action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].brand.action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].brand.action.popup` of schema `Action` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getDiscountedInventoryBySizeIdentifier

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getProductDetailBySlug

- ##### What's New
	- [Breaking] [Added] properties `brand.action.page.query`, `brand.action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `brand.action.page` of schema `ActionPage` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `brand.action.popup` of schema `Action` in response with status code 200


#### getAppProducts

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].storeIdList` of schema `RawProduct` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getAutocompleteConfig

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getAutocompleteKeywordDetail

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### updateAutocompleteKeyword

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getAllSearchKeyword

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getSearchKeywords

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### listCategories

- ##### What's New
	- [Breaking] [Deleted] `query` parameter `department` (type: `integer`)

- [Added] `query` parameter `departments` (type: `string`)

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `uids` (type: `array`)

	- [Breaking] [Deleted] `query` parameter `slug` (type: `string`)

	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### listDepartmentsData

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `slug` (type: `string`)

	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getDepartmentData

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### bulkHsnCode

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `15` from property `data[].tax1` of schema `HsnUpsert` in request body
	- [Breaking] [Deleted] Possible values from `15` from property `data[].tax2` of schema `HsnUpsert` in request body


#### updateHsnCode

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `15` from property `tax1` of schema `HsnUpsert` in request body
	- [Breaking] [Deleted] Possible values from `15` from property `tax2` of schema `HsnUpsert` in request body


#### getInventories

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getInventoryBulkUploadHistory

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### createBulkInventoryJob

- ##### What's Changed
	- [Breaking] [Changed] Default value from `2023-08-16T12:07:13.817Z` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkJob` in request body
	- [Breaking] [Changed] Default value from `2023-08-16T12:07:13.817Z` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkResponse` in response with status code 200


#### getMarketplaceOptinDetail

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getCompanyBrandDetail

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getStoreDetail

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getProductBundle

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getProductAssetsInBulk

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getProductBulkUploadHistory

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### createBulkProductUploadJob

- ##### What's Changed
	- [Breaking] [Changed] Default value from `2023-08-16T12:07:13.817Z` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkJob` in request body
	- [Breaking] [Changed] Default value from `2023-08-16T12:07:13.817Z` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkResponse` in response with status code 200


#### listProductTemplate

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### listProductTemplateCategories

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getInventoryBySizeIdentifier

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getProductSize

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getInventoryBySize

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### addInventory

- ##### What's New
	- [Breaking] [Added] Possible values `QAR,INR` to property `sizes[].currency` of schema `InvSize` in request body


#### getVariantsOfProducts

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getSizeGuides

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `brandId` (type: `integer`)



#### getConfigurationMetadata

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `pageNo` (type: `integer`)

	- [Breaking] [Deleted] `query` parameter `pageSize` (type: `integer`)

	- [Breaking] [Deleted] `query` parameter `q` (type: `string`)

	- [Breaking] [Deleted] property `page` of schema `GetConfigMetadataResponse` in response with status code 200


#### getProducts

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### createProduct

- ##### What's New
	- [Breaking] [Added] Possible values `INR,QAR` to property `currency` of schema `ProductCreateUpdateSchemaV2` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property `uid` of schema `SuccessResponse1` in response with status code 200


#### uploadBulkProducts

- ##### What's Changed
	- [Breaking] [Changed] Default value from `2023-08-16T12:07:13.817Z` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkJob` in request body
	- [Breaking] [Changed] Default value from `2023-08-16T12:07:13.817Z` to `2023-08-16T12:07:13.817348` of property `modifiedOn` of schema `BulkResponse` in response with status code 200


#### editProduct

- ##### What's New
	- [Breaking] [Added] Possible values `INR,QAR` to property `currency` of schema `ProductCreateUpdateSchemaV2` in request body


#### getMarketplaces

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getMarketplaces`



#### updateMarketplaceOptin

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateMarketplaceOptin`



#### deleteInventory

- ##### What's New
	- [Added] method `deleteInventory`



### Communication



#### createSmsProvider

- ##### What's Deprecated
	- [Breaking] [Deleted] property `token` of schema `SmsProviderReq` in request body


#### updateSmsProviderById

- ##### What's Deprecated
	- [Breaking] [Deleted] property `token` of schema `SmsProviderReq` in request body


#### deleteAudienceById

- ##### What's New
	- [Added] property `message` of schema `GenericDelete` in response with status code 200
	- [Added] property `acknowledged` of schema `GenericDelete` in response with status code 200
	- [Added] property `affected` of schema `GenericDelete` in response with status code 200
	- [Added] property `operation` of schema `GenericDelete` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Body content in Request
	- [Breaking] [Deleted] property `application` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `name` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `description` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `headers` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `slug` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `recordsCount` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `fileUrl` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `isActive` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `Audience` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `Audience` in response with status code 200


#### getEventSubscriptions

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 404
	- [Breaking] [Deleted] Response with status 500


#### createEventSubscriptions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createEventSubscriptions`



#### getEventSubscriptionsById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getEventSubscriptionsById`



#### editEventSubscriptions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `editEventSubscriptions`



#### deleteEventSubscriptionsById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteEventSubscriptionsById`



#### createEventSubscriptionsByBulk

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createEventSubscriptionsByBulk`



#### createJobs

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createJobs`



#### verfiyOtp

- ##### What's Deprecated
	- [Breaking] [Deleted] property `email` of schema `VerifyOtpCommsSuccessRes` in response with status code 200


#### getOtpConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getOtpConfiguration`



#### updateOtpConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateOtpConfiguration`



### CompanyProfile



#### cbsOnboardGet

- ##### What's Deprecated
	- [Breaking] [Deleted] property `addresses[].sector` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `addresses[].stateCode` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `businessCountryInfo.currency` of schema `BusinessCountryInfo` in response with status code 200
	- [Breaking] [Deleted] property `businessCountryInfo.timezone` of schema `BusinessCountryInfo` in response with status code 200
	- [Deleted] Required status from properties `businessCountryInfo.country_code`, `businessCountryInfo.country`, `businessCountryInfo.currency`, `businessCountryInfo.timezone` in response with status code 200


#### createBrand

- ##### What's Deprecated
	- [Breaking] [Deleted] property `slugKey` of schema `CreateBrandRequestSerializer` in request body


#### getBrands

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].company.addresses[].sector` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `items[].company.addresses[].stateCode` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `items[].company.businessCountryInfo.currency` of schema `BusinessCountryInfo` in response with status code 200
	- [Breaking] [Deleted] property `items[].company.businessCountryInfo.timezone` of schema `BusinessCountryInfo` in response with status code 200
	- [Deleted] Required status from properties `items[].company.businessCountryInfo.country_code`, `items[].company.businessCountryInfo.country`, `items[].company.businessCountryInfo.currency`, `items[].company.businessCountryInfo.timezone` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### getLocations

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `types` (type: `array`)

	- [Breaking] [Deleted] `query` parameter `tags` (type: `array`)

	- [Breaking] [Deleted] property `items[].company.addresses[].sector` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `items[].company.addresses[].stateCode` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `items[].address.sector` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `items[].address.stateCode` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `items[].autoAssignCourierPartner` of schema `GetLocationSerializer` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200


#### createLocation

- ##### What's Deprecated
	- [Breaking] [Deleted] property `address.sector` of schema `AddressSerializer` in request body
	- [Breaking] [Deleted] property `address.stateCode` of schema `AddressSerializer` in request body
	- [Deleted] Required status from property `address.country_code` in request body
	- [Breaking] [Deleted] property `autoAssignCourierPartner` of schema `LocationSerializer` in request body
	- [Deleted] Required status from property `documents` in request body


#### getLocationDetail

- ##### What's Deprecated
	- [Breaking] [Deleted] property `company.addresses[].sector` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `company.addresses[].stateCode` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `address.sector` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `address.stateCode` of schema `GetAddressSerializer` in response with status code 200
	- [Breaking] [Deleted] property `autoAssignCourierPartner` of schema `GetLocationSerializer` in response with status code 200


#### updateLocation

- ##### What's Deprecated
	- [Breaking] [Deleted] property `address.sector` of schema `AddressSerializer` in request body
	- [Breaking] [Deleted] property `address.stateCode` of schema `AddressSerializer` in request body
	- [Deleted] Required status from property `address.country_code` in request body
	- [Breaking] [Deleted] property `autoAssignCourierPartner` of schema `LocationSerializer` in request body
	- [Deleted] Required status from property `documents` in request body


#### createLocationBulk

- ##### What's Deprecated
	- [Breaking] [Deleted] property `data[].address.sector` of schema `AddressSerializer` in request body
	- [Breaking] [Deleted] property `data[].address.stateCode` of schema `AddressSerializer` in request body
	- [Deleted] Required status from property `data[].address.country_code` in request body
	- [Breaking] [Deleted] property `data[].autoAssignCourierPartner` of schema `LocationSerializer` in request body
	- [Deleted] Required status from property `data[].documents` in request body


### Configuration



#### getBuildConfig

- ##### What's New
	- [Added] property `updatedAt` of schema `MobileAppConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `modifiedAt` of schema `MobileAppConfiguration` in response with status code 200


#### updateBuildConfig

- ##### What's New
	- [Added] property `updatedAt` of schema `MobileAppConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `modifiedAt` of schema `MobileAppConfiguration` in response with status code 200


#### getPreviousVersions

- ##### What's New
	- [Breaking] [Added] properties `versions.application`, `versions.id`, `versions.platformType`, `versions.buildStatus`, `versions.versionName`, `versions.versionCode`, `versions.createdAt`, `versions.updatedAt`, `versions.v` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `versions[]` of schema `BuildVersionHistory` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `array` to `object` of property `versions` of schema `BuildVersionHistory` in response with status code 200


#### getAppFeatures

- ##### What's New
	- [Added] property `feature.updatedAt` of schema `AppFeature` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `feature.common.listingPage` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `feature.common.internationalShipping` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `feature.modifiedAt` of schema `AppFeature` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### updateAppFeatures

- ##### What's New
	- [Added] property `feature.updatedAt` of schema `AppFeature` in request body
	- [Added] property `updatedAt` of schema `AppFeature` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `feature.common.listingPage` of schema `CommonFeature` in request body
	- [Breaking] [Deleted] property `feature.common.internationalShipping` of schema `CommonFeature` in request body
	- [Breaking] [Deleted] property `feature.modifiedAt` of schema `AppFeature` in request body
	- [Breaking] [Deleted] property `common.listingPage` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `common.internationalShipping` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppFeature` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 400


#### modifyAppFeatures

- ##### What's New
	- [Added] property `feature.updatedAt` of schema `AppFeature` in request body
	- [Added] property `updatedAt` of schema `AppFeature` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `feature.common.listingPage` of schema `CommonFeature` in request body
	- [Breaking] [Deleted] property `feature.common.internationalShipping` of schema `CommonFeature` in request body
	- [Breaking] [Deleted] property `feature.modifiedAt` of schema `AppFeature` in request body
	- [Breaking] [Deleted] property `common.listingPage` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `common.internationalShipping` of schema `CommonFeature` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppFeature` in response with status code 200
	- [Breaking] [Deleted] Response with status 400
	- [Breaking] [Deleted] Response with status 404


#### getAppBasicDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] property `domain.message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `domains[].message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `slug` of schema `ApplicationDetail` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ApplicationDetail` in response with status code 200


#### updateAppBasicDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] property `domain.message` of schema `Domain` in request body
	- [Breaking] [Deleted] property `domains[].message` of schema `Domain` in request body
	- [Breaking] [Deleted] property `slug` of schema `ApplicationDetail` in request body
	- [Breaking] [Deleted] property `companyId` of schema `ApplicationDetail` in request body
	- [Breaking] [Deleted] property `domain.message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `domains[].message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `slug` of schema `ApplicationDetail` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ApplicationDetail` in response with status code 200


#### getAppContactInfo

- ##### What's New
	- [Breaking] [Added] Value format `nullable` to property `address.loc` of schema `InformationAddress` in response with status code 200
	- [Breaking] [Added] properties `businessHighlights.title`, `businessHighlights.icon`, `businessHighlights.id`, `businessHighlights.subTitle` in response with status code 200
	- [Added] property `updatedAt` of schema `ApplicationInformation` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `address.loc.type`, `address.loc.coordinates` in response with status code 200
	- [Deleted] properties `support.phone[].code`, `support.phone[].number`, `support.phone[].key` in response with status code 200
	- [Deleted] properties `support.email[].value`, `support.email[].key` in response with status code 200
	- [Breaking] [Deleted] property `businessHighlights[]` of schema `ApplicationInformation` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInformation` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `address.loc` of schema `InformationLoc` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `string` of property `support.phone[]` of schema `InformationSupportPhone` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `string` of property `support.email[]` of schema `InformationSupportEmail` in response with status code 200
	- [Breaking] [Changed] Type from `array` to `object` of property `businessHighlights` of schema `ApplicationInformation` in response with status code 200


#### updateAppContactInfo

- ##### What's New
	- [Breaking] [Added] Value format `nullable` to property `address.loc` of schema `InformationAddress` in request body
	- [Breaking] [Added] properties `businessHighlights.title`, `businessHighlights.icon`, `businessHighlights.id`, `businessHighlights.subTitle` in request body
	- [Added] property `updatedAt` of schema `ApplicationInformation` in request body
	- [Breaking] [Added] Value format `nullable` to property `address.loc` of schema `InformationAddress` in response with status code 200
	- [Breaking] [Added] properties `businessHighlights.title`, `businessHighlights.icon`, `businessHighlights.id`, `businessHighlights.subTitle` in response with status code 200
	- [Added] property `updatedAt` of schema `ApplicationInformation` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `address.loc.type`, `address.loc.coordinates` in request body
	- [Deleted] properties `support.phone[].code`, `support.phone[].number`, `support.phone[].key` in request body
	- [Deleted] properties `support.email[].value`, `support.email[].key` in request body
	- [Breaking] [Deleted] property `businessHighlights[]` of schema `ApplicationInformation` in request body
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInformation` in request body
	- [Deleted] properties `address.loc.type`, `address.loc.coordinates` in response with status code 200
	- [Deleted] properties `support.phone[].code`, `support.phone[].number`, `support.phone[].key` in response with status code 200
	- [Deleted] properties `support.email[].value`, `support.email[].key` in response with status code 200
	- [Breaking] [Deleted] property `businessHighlights[]` of schema `ApplicationInformation` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInformation` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `address.loc` of schema `InformationLoc` in request body
	- [Breaking] [Changed] Type from `object` to `string` of property `support.phone[]` of schema `InformationSupportPhone` in request body
	- [Breaking] [Changed] Type from `object` to `string` of property `support.email[]` of schema `InformationSupportEmail` in request body
	- [Breaking] [Changed] Type from `array` to `object` of property `businessHighlights` of schema `ApplicationInformation` in request body
	- [Breaking] [Changed] Type from `object` to `string` of property `address.loc` of schema `InformationLoc` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `string` of property `support.phone[]` of schema `InformationSupportPhone` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `string` of property `support.email[]` of schema `InformationSupportEmail` in response with status code 200
	- [Breaking] [Changed] Type from `array` to `object` of property `businessHighlights` of schema `ApplicationInformation` in response with status code 200


#### getAppApiTokens

- ##### What's New
	- [Added] property `updatedAt` of schema `TokenResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `tokens.fyndRewards.credentials.privateKey` of schema `FyndRewardsCredentials` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `TokenResponse` in response with status code 200


#### updateAppApiTokens

- ##### What's New
	- [Added] property `updatedAt` of schema `TokenResponse` in request body
	- [Added] property `updatedAt` of schema `TokenResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `tokens.fyndRewards.credentials.privateKey` of schema `FyndRewardsCredentials` in request body
	- [Breaking] [Deleted] property `modifiedAt` of schema `TokenResponse` in request body
	- [Breaking] [Deleted] property `tokens.fyndRewards.credentials.privateKey` of schema `FyndRewardsCredentials` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `TokenResponse` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 400


#### getAppCompanies

- ##### What's New
	- [Breaking] [Added] properties `items.uid`, `items.name`, `items.companyType` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[]` of schema `CompaniesResponse` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `array` to `object` of property `items` of schema `CompaniesResponse` in response with status code 200


#### getAppStores

- ##### What's New
	- [Breaking] [Added] properties `items.uid`, `items.name`, `items.id`, `items.modifiedOn`, `items.displayName`, `items.storeType`, `items.storeCode`, `items.companyId` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[]` of schema `StoresResponse` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `array` to `object` of property `items` of schema `StoresResponse` in response with status code 200


#### getInventoryConfig

- ##### What's New
	- [Added] property `updatedAt` of schema `ApplicationInventory` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `integer` from property `inventory.brand.brands[]` of schema `InventoryBrand` in response with status code 200
	- [Deleted] Type from `integer` from property `inventory.store.rules[].brands[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Deleted] property `inventory.companyId` of schema `AppInventoryConfig` in response with status code 200
	- [Breaking] [Deleted] property `cart.internationalDeliveryCharges` of schema `AppCartConfig` in response with status code 200
	- [Breaking] [Deleted] property `payment.userCodLimit` of schema `AppPaymentConfig` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `articleAssignment.enforcedStores` of schema `ArticleAssignmentConfig` in response with status code 200
	- [Breaking] [Deleted] property `piiMasking` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### updateInventoryConfig

- ##### What's New
	- [Added] property `updatedAt` of schema `ApplicationInventory` in request body
	- [Added] property `updatedAt` of schema `ApplicationInventory` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `integer` from property `inventory.brand.brands[]` of schema `InventoryBrand` in request body
	- [Deleted] Type from `integer` from property `inventory.store.rules[].brands[]` of schema `AppStoreRules` in request body
	- [Breaking] [Deleted] property `inventory.companyId` of schema `AppInventoryConfig` in request body
	- [Breaking] [Deleted] property `cart.internationalDeliveryCharges` of schema `AppCartConfig` in request body
	- [Breaking] [Deleted] property `payment.userCodLimit` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `tags` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `articleAssignment.enforcedStores` of schema `ArticleAssignmentConfig` in request body
	- [Breaking] [Deleted] property `piiMasking` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `v` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInventory` in request body
	- [Deleted] Type from `integer` from property `inventory.brand.brands[]` of schema `InventoryBrand` in response with status code 200
	- [Deleted] Type from `integer` from property `inventory.store.rules[].brands[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Deleted] property `inventory.companyId` of schema `AppInventoryConfig` in response with status code 200
	- [Breaking] [Deleted] property `cart.internationalDeliveryCharges` of schema `AppCartConfig` in response with status code 200
	- [Breaking] [Deleted] property `payment.userCodLimit` of schema `AppPaymentConfig` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `articleAssignment.enforcedStores` of schema `ArticleAssignmentConfig` in response with status code 200
	- [Breaking] [Deleted] property `piiMasking` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 429


#### partiallyUpdateInventoryConfig

- ##### What's New
	- [Added] property `updatedAt` of schema `ApplicationInventory` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cart.internationalDeliveryCharges` of schema `AppCartConfig` in request body
	- [Breaking] [Deleted] property `payment.userCodLimit` of schema `AppPaymentConfig` in request body
	- [Deleted] Type from `integer` from property `inventory.brand.brands[]` of schema `InventoryBrand` in response with status code 200
	- [Deleted] Type from `integer` from property `inventory.store.rules[].brands[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Deleted] property `inventory.companyId` of schema `AppInventoryConfig` in response with status code 200
	- [Breaking] [Deleted] property `cart.internationalDeliveryCharges` of schema `AppCartConfig` in response with status code 200
	- [Breaking] [Deleted] property `payment.userCodLimit` of schema `AppPaymentConfig` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `articleAssignment.enforcedStores` of schema `ArticleAssignmentConfig` in response with status code 200
	- [Breaking] [Deleted] property `piiMasking` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationInventory` in response with status code 200


#### getAppCurrencyConfig

- ##### What's New
	- [Added] property `updatedAt` of schema `AppSupportedCurrency` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppSupportedCurrency` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### updateAppCurrencyConfig

- ##### What's New
	- [Added] property `updatedAt` of schema `AppSupportedCurrency` in request body
	- [Added] property `updatedAt` of schema `AppSupportedCurrency` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppSupportedCurrency` in request body
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppSupportedCurrency` in response with status code 200


#### getAppSupportedCurrency

- ##### What's New
	- [Added] property `supportedCurrency[].updatedAt` of schema `Currency` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `id` of schema `AppCurrencyResponse` in response with status code 200
	- [Breaking] [Deleted] property `supportedCurrency[].modifiedAt` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `supportedCurrency[].countryName` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `supportedCurrency[].countryCode` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `AppCurrencyResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `AppCurrencyResponse` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### getOrderingStoresByFilter

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].address.sector` of schema `OptedStoreAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].address.countryCode` of schema `OptedStoreAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].address.stateCode` of schema `OptedStoreAddress` in response with status code 200


#### updateOrderingStoreConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] property `v` of schema `DeploymentMeta` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 400
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404
	- [Breaking] [Deleted] property `deploymentMeta.v` of schema `DeploymentMeta` in request body


#### getOrderingStoreConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] property `deploymentMeta.v` of schema `DeploymentMeta` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### getStaffOrderingStores

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].address.sector` of schema `OptedStoreAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].address.countryCode` of schema `OptedStoreAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].address.stateCode` of schema `OptedStoreAddress` in response with status code 200


#### getOrderingStoreCookie

- ##### What's Deprecated
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 400


#### getDomains

- ##### What's Deprecated
	- [Breaking] [Deleted] property `domains[].message` of schema `Domain` in response with status code 200


#### addDomain

- ##### What's Deprecated
	- [Breaking] [Deleted] property `message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 400


#### removeDomainById

- ##### What's Deprecated
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 400
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### changeDomainType

- ##### What's Deprecated
	- [Breaking] [Deleted] property `domains[].message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### createApplication

- ##### What's New
	- [Breaking] [Added] Possible values `ECOMM` to property `configuration.payment.source` of schema `InventoryPaymentConfig` in request body
	- [Breaking] [Added] Possible values `ECOMM` to property `configuration.payment.modeOfPayment` of schema `InventoryPaymentConfig` in request body
	- [Breaking] [Added] Type `string` to property `configuration.articleAssignment.rules.storePriority.storetypeOrder[]` of schema `StorePriorityRule` in request body
	- [Added] property `configuration.brand` of schema `AppInventory` in request body
	- [Added] property `configuration.store` of schema `AppInventory` in request body
	- [Added] property `configuration.image` of schema `AppInventory` in request body
	- [Added] property `configuration.franchiseEnabled` of schema `AppInventory` in request body
	- [Added] property `configuration.outOfStock` of schema `AppInventory` in request body
	- [Added] property `configuration.onlyVerifiedProducts` of schema `AppInventory` in request body
	- [Added] property `app.updatedAt` of schema `Application` in response with status code 200
	- [Added] property `configuration.updatedAt` of schema `ApplicationInventory` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `configuration.inventory` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.authentication` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.cart` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.payment.methods` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.payment.enabled` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.payment.callbackUrl` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.payment.paymentSelectionLock` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.payment.codAmountLimit` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.payment.codCharges` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.payment.anonymousCod` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.payment.userCodLimit` of schema `AppPaymentConfig` in request body
	- [Breaking] [Deleted] property `configuration.order` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.logistics` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.tags` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.business` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.communication` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.platforms` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.app` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.articleAssignment.enforcedStores` of schema `ArticleAssignmentConfig` in request body
	- [Breaking] [Deleted] property `configuration.rewardPoints` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.piiMasking` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.v` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.commsEnabled` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.id` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.loyaltyPoints` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.createdAt` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.modifiedAt` of schema `ApplicationInventory` in request body
	- [Breaking] [Deleted] property `configuration.modifiedBy` of schema `ApplicationInventory` in request body
	- [Deleted] Type from `object` from property `app` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `app.domains[].message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `app.domain.message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `app.mode` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `app.status` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `app.tokens` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `app.secret` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `app.modifiedAt` of schema `Application` in response with status code 200
	- [Deleted] Type from `integer` from property `configuration.inventory.brand.brands[]` of schema `InventoryBrand` in response with status code 200
	- [Deleted] Type from `integer` from property `configuration.inventory.store.rules[].brands[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Deleted] property `configuration.inventory.companyId` of schema `AppInventoryConfig` in response with status code 200
	- [Breaking] [Deleted] property `configuration.cart.internationalDeliveryCharges` of schema `AppCartConfig` in response with status code 200
	- [Breaking] [Deleted] property `configuration.payment.userCodLimit` of schema `AppPaymentConfig` in response with status code 200
	- [Breaking] [Deleted] property `configuration.tags` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `configuration.articleAssignment.enforcedStores` of schema `ArticleAssignmentConfig` in response with status code 200
	- [Breaking] [Deleted] property `configuration.piiMasking` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `configuration.v` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `configuration.modifiedAt` of schema `ApplicationInventory` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 400


#### getApplications

- ##### What's New
	- [Added] property `items[].updatedAt` of schema `Application` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `items[]` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `items[].domains[].message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `items[].domain.message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `items[].mode` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `items[].status` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `items[].tokens` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `items[].secret` of schema `Application` in response with status code 200
	- [Breaking] [Deleted] property `items[].modifiedAt` of schema `Application` in response with status code 200


#### getApplicationById

- ##### What's New
	- [Added] property `updatedAt` of schema `Application` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `` of schema `ApplicationById` in response with status code 200
	- [Breaking] [Deleted] property `domains[].message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `domain.message` of schema `Domain` in response with status code 200
	- [Breaking] [Deleted] property `mode` of schema `ApplicationById` in response with status code 200
	- [Breaking] [Deleted] property `status` of schema `ApplicationById` in response with status code 200
	- [Breaking] [Deleted] property `tokens` of schema `ApplicationById` in response with status code 200
	- [Breaking] [Deleted] property `secret` of schema `ApplicationById` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `ApplicationById` in response with status code 200
	- [Breaking] [Deleted] Response with status 404


#### getCurrencies

- ##### What's New
	- [Added] property `items[].updatedAt` of schema `Currency` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].modifiedAt` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `items[].countryName` of schema `Currency` in response with status code 200
	- [Breaking] [Deleted] property `items[].countryCode` of schema `Currency` in response with status code 200


#### getIntegrationById

- ##### What's New
	- [Added] property `updatedAt` of schema `Integration` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `slug` of schema `Integration` in response with status code 200
	- [Breaking] [Deleted] property `hidden` of schema `Integration` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `Integration` in response with status code 200
	- [Breaking] [Deleted] Response with status 404

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `companies[]` of schema `Integration` in response with status code 200


#### getAvailableOptIns

- ##### What's New
	- [Added] property `items[].updatedAt` of schema `IntegrationOptIn` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].slug` of schema `IntegrationOptIn` in response with status code 200
	- [Breaking] [Deleted] property `items[].hidden` of schema `IntegrationOptIn` in response with status code 200
	- [Breaking] [Deleted] property `items[].modifiedAt` of schema `IntegrationOptIn` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `items[].companies[]` of schema `IntegrationOptIn` in response with status code 200


#### getSelectedOptIns

- ##### What's New
	- [Added] property `items[].updatedAt` of schema `IntegrationOptIn` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].slug` of schema `IntegrationOptIn` in response with status code 200
	- [Breaking] [Deleted] property `items[].hidden` of schema `IntegrationOptIn` in response with status code 200
	- [Breaking] [Deleted] property `items[].modifiedAt` of schema `IntegrationOptIn` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `items[].companies[]` of schema `IntegrationOptIn` in response with status code 200


#### getIntegrationLevelConfig

- ##### What's New
	- [Added] property `items[].updatedAt` of schema `IntegrationLevel` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].success` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `items[].message` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `items[].companyId` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `items[].modifiedAt` of schema `IntegrationLevel` in response with status code 200


#### updateLevelIntegration

- ##### What's New
	- [Added] property `items[].updatedAt` of schema `IntegrationLevel` in request body
	- [Added] property `updatedAt` of schema `IntegrationLevel` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].success` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `items[].message` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `items[].companyId` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `items[].modifiedAt` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `success` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `message` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `IntegrationLevel` in response with status code 200


#### getIntegrationByLevelId

- ##### What's New
	- [Added] property `updatedAt` of schema `IntegrationLevel` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `success` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `message` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `IntegrationLevel` in response with status code 200


#### updateLevelUidIntegration

- ##### What's New
	- [Added] property `updatedAt` of schema `IntegrationLevel` in request body
	- [Added] property `updatedAt` of schema `IntegrationLevel` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `success` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `message` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `companyId` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `modifiedAt` of schema `IntegrationLevel` in request body
	- [Breaking] [Deleted] property `success` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `message` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `IntegrationLevel` in response with status code 200
	- [Breaking] [Deleted] property `modifiedAt` of schema `IntegrationLevel` in response with status code 200


#### getLevelActiveIntegrations

- ##### What's New
	- [Added] property `otherIntegration.updatedAt` of schema `IntegrationOptIn` in response with status code 200
	- [Added] property `otherEntity.updatedAt` of schema `OtherEntity` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `otherIntegration.slug` of schema `IntegrationOptIn` in response with status code 200
	- [Breaking] [Deleted] property `otherIntegration.hidden` of schema `IntegrationOptIn` in response with status code 200
	- [Breaking] [Deleted] property `otherIntegration.modifiedAt` of schema `IntegrationOptIn` in response with status code 200
	- [Breaking] [Deleted] property `otherEntity.modifiedAt` of schema `OtherEntity` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `otherIntegration.companies[]` of schema `IntegrationOptIn` in response with status code 200


#### getBrandsByCompany

- ##### What's New
	- [Breaking] [Added] properties `brands.name`, `brands.value`, `brands.brandLogoUrl`, `brands.brandBannerUrl`, `brands.brandBannerPortraitUrl` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `brands[]` of schema `BrandsByCompanyResponse` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `array` to `object` of property `brands` of schema `BrandsByCompanyResponse` in response with status code 200


#### getStoreByBrands

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].company.id` of schema `OptedCompany` in response with status code 200
	- [Breaking] [Deleted] property `items[].storeAddress.sector` of schema `OptedStoreAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].storeAddress.countryCode` of schema `OptedStoreAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].storeAddress.stateCode` of schema `OptedStoreAddress` in response with status code 200


#### getOtherSellerApplicationById

- ##### What's Deprecated
	- [Breaking] [Deleted] property `company.id` of schema `OptedCompany` in response with status code 200
	- [Deleted] Type from `array` from property `optedInventory.items` of schema `OptedInventory` in response with status code 200
	- [Breaking] [Deleted] property `optedInventory.items[]` of schema `OptedInventory` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


#### optOutFromApplication

- ##### What's Deprecated
	- [Breaking] [Deleted] property `success` of schema `InvalidPayloadRequest` in response with status code 400
	- [Breaking] [Deleted] property `success` of schema `NotFound` in response with status code 404


### Content



#### createBlog

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getBlogs

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.canonicalUrl` of schema `SEO` in response with status code 200


#### updateBlog

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### deleteBlog

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getComponentById

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getDataLoadersByService

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getDataLoadersByService`



#### getLandingPages

- ##### What's New
	- [Breaking] [Added] Type `object` to property `items[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].action.page.params`, `items[].action.page.query`, `items[].action.page.url`, `items[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].action.popup.params`, `items[].action.popup.query`, `items[].action.popup.url`, `items[].action.popup.type` in response with status code 200


#### createLandingPage

- ##### What's New
	- [Breaking] [Added] Type `object` to property `action.page` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `action.page.params`, `action.page.query`, `action.page.url`, `action.page.type` in request body
	- [Breaking] [Added] Type `object` to property `action.popup` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `action.popup.params`, `action.popup.query`, `action.popup.url`, `action.popup.type` in request body
	- [Breaking] [Added] Type `object` to property `action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.page.params`, `action.page.query`, `action.page.url`, `action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.popup.params`, `action.popup.query`, `action.popup.url`, `action.popup.type` in response with status code 200


#### updateLandingPage

- ##### What's New
	- [Breaking] [Added] Type `object` to property `action.page` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `action.page.params`, `action.page.query`, `action.page.url`, `action.page.type` in request body
	- [Breaking] [Added] Type `object` to property `action.popup` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `action.popup.params`, `action.popup.query`, `action.popup.url`, `action.popup.type` in request body
	- [Breaking] [Added] Type `object` to property `action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.page.params`, `action.page.query`, `action.page.url`, `action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.popup.params`, `action.popup.query`, `action.popup.url`, `action.popup.type` in response with status code 200


#### deleteLandingPage

- ##### What's New
	- [Breaking] [Added] Type `object` to property `action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.page.params`, `action.page.query`, `action.page.url`, `action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `action.popup.params`, `action.popup.query`, `action.popup.url`, `action.popup.type` in response with status code 200


#### getNavigations

- ##### What's New
	- [Breaking] [Added] Type `object` to property `items[].navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].navigation[].action.page.params`, `items[].navigation[].action.page.query`, `items[].navigation[].action.page.url`, `items[].navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].navigation[].action.popup.params`, `items[].navigation[].action.popup.query`, `items[].navigation[].action.popup.url`, `items[].navigation[].action.popup.type` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].navigation[].schedule` of schema `NavigationReference` in response with status code 200


#### createNavigation

- ##### What's New
	- [Breaking] [Added] Type `object` to property `navigation[].action.page` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `navigation[].action.page.params`, `navigation[].action.page.query`, `navigation[].action.page.url`, `navigation[].action.page.type` in request body
	- [Breaking] [Added] Type `object` to property `navigation[].action.popup` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `navigation[].action.popup.params`, `navigation[].action.popup.query`, `navigation[].action.popup.url`, `navigation[].action.popup.type` in request body
	- [Breaking] [Added] Type `object` to property `navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.page.params`, `navigation[].action.page.query`, `navigation[].action.page.url`, `navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.popup.params`, `navigation[].action.popup.query`, `navigation[].action.popup.url`, `navigation[].action.popup.type` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `navigation[].schedule` of schema `NavigationReference` in request body
	- [Breaking] [Deleted] property `navigation[].schedule` of schema `NavigationReference` in response with status code 200


#### getDefaultNavigations

- ##### What's New
	- [Breaking] [Added] Type `object` to property `items[].navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].navigation[].action.page.params`, `items[].navigation[].action.page.query`, `items[].navigation[].action.page.url`, `items[].navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].navigation[].action.popup.params`, `items[].navigation[].action.popup.query`, `items[].navigation[].action.popup.url`, `items[].navigation[].action.popup.type` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].navigation[].schedule` of schema `NavigationReference` in response with status code 200


#### getNavigationBySlug

- ##### What's New
	- [Breaking] [Added] Type `object` to property `navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.page.params`, `navigation[].action.page.query`, `navigation[].action.page.url`, `navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.popup.params`, `navigation[].action.popup.query`, `navigation[].action.popup.url`, `navigation[].action.popup.type` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `navigation[].schedule` of schema `NavigationReference` in response with status code 200


#### updateNavigation

- ##### What's New
	- [Breaking] [Added] Type `object` to property `navigation[].action.page` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `navigation[].action.page.params`, `navigation[].action.page.query`, `navigation[].action.page.url`, `navigation[].action.page.type` in request body
	- [Breaking] [Added] Type `object` to property `navigation[].action.popup` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `navigation[].action.popup.params`, `navigation[].action.popup.query`, `navigation[].action.popup.url`, `navigation[].action.popup.type` in request body
	- [Breaking] [Added] Type `object` to property `navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.page.params`, `navigation[].action.page.query`, `navigation[].action.page.url`, `navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.popup.params`, `navigation[].action.popup.query`, `navigation[].action.popup.url`, `navigation[].action.popup.type` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `navigation[].schedule` of schema `NavigationReference` in request body
	- [Breaking] [Deleted] property `navigation[].schedule` of schema `NavigationReference` in response with status code 200


#### deleteNavigation

- ##### What's New
	- [Breaking] [Added] Type `object` to property `navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.page.params`, `navigation[].action.page.query`, `navigation[].action.page.url`, `navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `navigation[].action.popup.params`, `navigation[].action.popup.query`, `navigation[].action.popup.url`, `navigation[].action.popup.type` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `navigation[].schedule` of schema `NavigationReference` in response with status code 200


#### getPageMeta

- ##### What's New
	- [Breaking] [Added] Type `object` to property `systemPages[].navigation[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `systemPages[].navigation[].action.page.params`, `systemPages[].navigation[].action.page.query`, `systemPages[].navigation[].action.page.url`, `systemPages[].navigation[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `systemPages[].navigation[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `systemPages[].navigation[].action.popup.params`, `systemPages[].navigation[].action.popup.query`, `systemPages[].navigation[].action.popup.url`, `systemPages[].navigation[].action.popup.type` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `systemPages[].navigation[].schedule` of schema `NavigationReference` in response with status code 200
	- [Breaking] [Deleted] property `customPages[].seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `customPages[].seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `customPages[].seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `customPages[].seo.canonicalUrl` of schema `SEO` in response with status code 200


#### createPagePreview

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### updatePagePreview

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### deletePage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getSEOConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.additionalSitemap` of schema `SeoSchema` in response with status code 200


#### updateSEOConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.additionalSitemap` of schema `SeoSchema` in request body
	- [Breaking] [Deleted] property `additionalSitemap` of schema `SeoSchema` in response with status code 200


#### getDefaultSEOMarkupSchema

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getDefaultSEOMarkupSchema`



#### getSEOMarkupSchemas

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getSEOMarkupSchemas`



#### createSEOMarkupSchema

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createSEOMarkupSchema`



#### getSEOMarkupSchema

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getSEOMarkupSchema`



#### editSEOMarkupSchema

- ##### What's Deprecated
	- [Breaking] [Deleted] method `editSEOMarkupSchema`



#### deleteSEOMarkupSchema

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteSEOMarkupSchema`



#### getSlideshows

- ##### What's New
	- [Breaking] [Added] Type `object` to property `items[].media[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].media[].action.page.params`, `items[].media[].action.page.query`, `items[].media[].action.page.url`, `items[].media[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].media[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `items[].media[].action.popup.params`, `items[].media[].action.popup.query`, `items[].media[].action.popup.url`, `items[].media[].action.popup.type` in response with status code 200

- ##### What's Changed
	- [Changed] Path From `/service/platform/content/v1.0/company/{company_id}/application/{application_id}/slideshows` To `/service/platform/content/v1.0/company/{company_id}/application/{application_id}/slideshows/`


#### createSlideshow

- ##### What's New
	- [Breaking] [Added] Type `object` to property `media.action.page` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `media.action.page.params`, `media.action.page.query`, `media.action.page.url`, `media.action.page.type` in request body
	- [Breaking] [Added] Type `object` to property `media.action.popup` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `media.action.popup.params`, `media.action.popup.query`, `media.action.popup.url`, `media.action.popup.type` in request body
	- [Breaking] [Added] Type `object` to property `media[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.page.params`, `media[].action.page.query`, `media[].action.page.url`, `media[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `media[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.popup.params`, `media[].action.popup.query`, `media[].action.popup.url`, `media[].action.popup.type` in response with status code 200

- ##### What's Changed
	- [Changed] Path From `/service/platform/content/v1.0/company/{company_id}/application/{application_id}/slideshows` To `/service/platform/content/v1.0/company/{company_id}/application/{application_id}/slideshows/`


#### getSlideshowBySlug

- ##### What's New
	- [Breaking] [Added] Type `object` to property `media[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.page.params`, `media[].action.page.query`, `media[].action.page.url`, `media[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `media[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.popup.params`, `media[].action.popup.query`, `media[].action.popup.url`, `media[].action.popup.type` in response with status code 200


#### updateSlideshow

- ##### What's New
	- [Breaking] [Added] Type `object` to property `media.action.page` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `media.action.page.params`, `media.action.page.query`, `media.action.page.url`, `media.action.page.type` in request body
	- [Breaking] [Added] Type `object` to property `media.action.popup` of schema `ActionPage` in request body
	- [Breaking] [Added] properties `media.action.popup.params`, `media.action.popup.query`, `media.action.popup.url`, `media.action.popup.type` in request body
	- [Breaking] [Added] Type `object` to property `media[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.page.params`, `media[].action.page.query`, `media[].action.page.url`, `media[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `media[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.popup.params`, `media[].action.popup.query`, `media[].action.popup.url`, `media[].action.popup.type` in response with status code 200


#### deleteSlideshow

- ##### What's New
	- [Breaking] [Added] Type `object` to property `media[].action.page` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.page.params`, `media[].action.page.query`, `media[].action.page.url`, `media[].action.page.type` in response with status code 200
	- [Breaking] [Added] Type `object` to property `media[].action.popup` of schema `ActionPage` in response with status code 200
	- [Breaking] [Added] properties `media[].action.popup.params`, `media[].action.popup.query`, `media[].action.popup.url`, `media[].action.popup.type` in response with status code 200


#### getBlogBySlug

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### createPage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getPages

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `items[].seo.canonicalUrl` of schema `SEO` in response with status code 200


#### updatePage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in request body
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getPageBySlug

- ##### What's Deprecated
	- [Breaking] [Deleted] property `seo.sitemap` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `SEO` in response with status code 200
	- [Breaking] [Deleted] property `seo.canonicalUrl` of schema `SEO` in response with status code 200


#### getCustomFieldTypes

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomFieldTypes`



#### getResources

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getResources`



#### getCustomFieldDefinitions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomFieldDefinitions`



#### createCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createCustomFieldDefinition`



#### getCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomFieldDefinition`



#### updateCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateCustomFieldDefinition`



#### deleteCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteCustomFieldDefinition`



#### getCustomFields

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomFields`



#### getCustomFieldsByResourceId

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomFieldsByResourceId`



#### createCustomFieldByResourceId

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createCustomFieldByResourceId`



#### createCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createCustomObjectDefinition`



#### getCustomObjectDefinitions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomObjectDefinitions`



#### getCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomObjectDefinition`



#### updateCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateCustomObjectDefinition`



#### deleteCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteCustomObjectDefinition`



#### getCustomObjects

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomObjects`



#### createCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createCustomObject`



#### getCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCustomObject`



#### deleteCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteCustomObject`



#### updateCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateCustomObject`



#### getJobs

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getJobs`



#### importCustomObjectEntries

- ##### What's Deprecated
	- [Breaking] [Deleted] method `importCustomObjectEntries`



#### exportCustomObjectEntries

- ##### What's Deprecated
	- [Breaking] [Deleted] method `exportCustomObjectEntries`



#### sampleCustomObjectBulkEntry

- ##### What's Deprecated
	- [Breaking] [Deleted] method `sampleCustomObjectBulkEntry`



#### getAppCustomFieldTypes

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomFieldTypes`



#### getAppResources

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppResources`



#### getAppCustomFieldDefinitions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomFieldDefinitions`



#### createAppCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createAppCustomFieldDefinition`



#### getAppCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomFieldDefinition`



#### updateAppCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateAppCustomFieldDefinition`



#### deleteAppCustomFieldDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteAppCustomFieldDefinition`



#### getAppCustomFields

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomFields`



#### getAppCustomFieldsByResourceId

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomFieldsByResourceId`



#### createAppCustomFieldByResourceId

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createAppCustomFieldByResourceId`



#### createAppCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createAppCustomObjectDefinition`



#### getAppCustomObjectDefinitions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomObjectDefinitions`



#### getAppCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomObjectDefinition`



#### updateAppCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateAppCustomObjectDefinition`



#### deleteAppCustomObjectDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteAppCustomObjectDefinition`



#### getAppCustomObjects

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomObjects`



#### createAppCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createAppCustomObject`



#### getAppCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppCustomObject`



#### deleteAppCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteAppCustomObject`



#### updateAppCustomObject

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateAppCustomObject`



#### getAppJobs

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAppJobs`



#### importAppCustomObjectEntries

- ##### What's Deprecated
	- [Breaking] [Deleted] method `importAppCustomObjectEntries`



#### exportAppCustomObjectEntries

- ##### What's Deprecated
	- [Breaking] [Deleted] method `exportAppCustomObjectEntries`



#### sampleAppCustomObjectBulkEntry

- ##### What's Deprecated
	- [Breaking] [Deleted] method `sampleAppCustomObjectBulkEntry`



### Discount



#### getDiscounts

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 400

- ##### What's Deprecated
	- [Deleted] Value format from `date-time` from property `items[].validity.start` of schema `ValidityObject` in response with status code 200
	- [Deleted] Value format from `date-time` from property `items[].validity.end` of schema `ValidityObject` in response with status code 200
	- [Breaking] [Deleted] property `items[].zoneIds` of schema `DiscountJob` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `BadRequestObjectGet` in response with status code 400
	- [Breaking] [Deleted] property `data` of schema `BadRequestObjectGet` in response with status code 400

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `integer` of property `page.type` of schema `Page` in response with status code 200


#### createDiscount

- ##### What's New
	- [Breaking] [Added] Required status to property `is_active` in request body

- ##### What's Deprecated
	- [Deleted] Value format from `date-time` from property `validity.start` of schema `ValidityObject` in request body
	- [Deleted] Value format from `date-time` from property `validity.end` of schema `ValidityObject` in request body
	- [Deleted] Value format from `date-time` from property `validity.start` of schema `ValidityObject` in response with status code 200
	- [Deleted] Value format from `date-time` from property `validity.end` of schema `ValidityObject` in response with status code 200
	- [Breaking] [Deleted] property `zoneIds` of schema `DiscountJob` in response with status code 200


#### getDiscount

- ##### What's Deprecated
	- [Deleted] Value format from `date-time` from property `validity.start` of schema `ValidityObject` in response with status code 200
	- [Deleted] Value format from `date-time` from property `validity.end` of schema `ValidityObject` in response with status code 200
	- [Breaking] [Deleted] property `zoneIds` of schema `DiscountJob` in response with status code 200


#### updateDiscount

- ##### What's New
	- [Breaking] [Added] Required status to property `is_active` in request body

- ##### What's Deprecated
	- [Deleted] Value format from `date-time` from property `validity.start` of schema `ValidityObject` in request body
	- [Deleted] Value format from `date-time` from property `validity.end` of schema `ValidityObject` in request body
	- [Deleted] Value format from `date-time` from property `validity.start` of schema `ValidityObject` in response with status code 200
	- [Deleted] Value format from `date-time` from property `validity.end` of schema `ValidityObject` in response with status code 200
	- [Breaking] [Deleted] property `zoneIds` of schema `DiscountJob` in response with status code 200


#### upsertDiscountItems

- ##### What's New
	- [Added] property `items[].brandUid` of schema `DiscountItems` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].brandName` of schema `DiscountItems` in request body


#### validateDiscountFile

- ##### What's New
	- [Breaking] [Added] Required status to property `file_type` in response with status code 200
	- [Breaking] [Added] Required status to property `_id` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from `date-time` from property `validity.start` of schema `ValidityObject` in request body
	- [Deleted] Value format from `date-time` from property `validity.end` of schema `ValidityObject` in request body
	- [Breaking] [Deleted] property `companyId` of schema `FileJobRequest` in request body
	- [Deleted] properties `body.name`, `body.value`, `body.validity`, `body.meta`, `body.companyId`, `body.isActive`, `body.appIds`, `body.jobType`, `body.discountType`, `body.discountLevel`, `body.filePath`, `body.brandIds`, `body.storeIds`, `body.extensionIds`, `body.zoneIds`, `body.discountMeta`, `body.createdOn`, `body.modifiedOn`, `body.createdBy`, `body.modifiedBy` in response with status code 200
	- [Breaking] [Deleted] property `progress` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `extensionIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `zoneIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdBy` of schema `FileJobResponse` in response with status code 200


#### downloadDiscountFile

- ##### What's New
	- [Breaking] [Added] Required status to property `file_type` in response with status code 200
	- [Breaking] [Added] Required status to property `_id` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `body.name`, `body.value`, `body.validity`, `body.meta`, `body.companyId`, `body.isActive`, `body.appIds`, `body.jobType`, `body.discountType`, `body.discountLevel`, `body.filePath`, `body.brandIds`, `body.storeIds`, `body.extensionIds`, `body.zoneIds`, `body.discountMeta`, `body.createdOn`, `body.modifiedOn`, `body.createdBy`, `body.modifiedBy` in response with status code 200
	- [Breaking] [Deleted] property `progress` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `extensionIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `zoneIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdBy` of schema `FileJobResponse` in response with status code 200


#### getValidationJob

- ##### What's New
	- [Breaking] [Added] Required status to property `file_type` in response with status code 200
	- [Breaking] [Added] Required status to property `_id` in response with status code 200
	- [Breaking] [Added] Required status to property `message` in response with status code 400

- ##### What's Deprecated
	- [Deleted] properties `body.name`, `body.value`, `body.validity`, `body.meta`, `body.companyId`, `body.isActive`, `body.appIds`, `body.jobType`, `body.discountType`, `body.discountLevel`, `body.filePath`, `body.brandIds`, `body.storeIds`, `body.extensionIds`, `body.zoneIds`, `body.discountMeta`, `body.createdOn`, `body.modifiedOn`, `body.createdBy`, `body.modifiedBy` in response with status code 200
	- [Breaking] [Deleted] property `progress` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `extensionIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `zoneIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdBy` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `BadRequestObjectGet` in response with status code 400
	- [Breaking] [Deleted] property `data` of schema `BadRequestObjectGet` in response with status code 400


#### cancelValidationJob

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 400

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `BadRequestObjectGet` in response with status code 400
	- [Breaking] [Deleted] property `data` of schema `BadRequestObjectGet` in response with status code 400


#### getDownloadJob

- ##### What's New
	- [Breaking] [Added] Required status to property `file_type` in response with status code 200
	- [Breaking] [Added] Required status to property `_id` in response with status code 200
	- [Breaking] [Added] Required status to property `message` in response with status code 400

- ##### What's Deprecated
	- [Deleted] properties `body.name`, `body.value`, `body.validity`, `body.meta`, `body.companyId`, `body.isActive`, `body.appIds`, `body.jobType`, `body.discountType`, `body.discountLevel`, `body.filePath`, `body.brandIds`, `body.storeIds`, `body.extensionIds`, `body.zoneIds`, `body.discountMeta`, `body.createdOn`, `body.modifiedOn`, `body.createdBy`, `body.modifiedBy` in response with status code 200
	- [Breaking] [Deleted] property `progress` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `extensionIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `zoneIds` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedOn` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdBy` of schema `FileJobResponse` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `BadRequestObjectGet` in response with status code 400
	- [Breaking] [Deleted] property `data` of schema `BadRequestObjectGet` in response with status code 400


#### cancelDownloadJob

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 400

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `BadRequestObjectGet` in response with status code 400
	- [Breaking] [Deleted] property `data` of schema `BadRequestObjectGet` in response with status code 400


### FileStorage



#### startUpload

- ##### What's New
	- [Breaking] [Added] properties `params.subpath` in request body


#### appStartUpload

- ##### What's New
	- [Breaking] [Added] properties `params.subpath` in request body


#### appbrowse

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `search` (type: `string`)



#### browsefiles

- ##### What's Deprecated
	- [Breaking] [Deleted] method `browsefiles`



#### proxy

- ##### What's New
	- [Breaking] [Added] Value format `binary` to property `` of schema `` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `data`, `support` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `` of schema `ProxyResponse` in response with status code 200


#### getPdfTypes

- ##### What's Deprecated
	- [Deleted] Required status from property `data[].country_code` in response with status code 200


#### getDefaultPdfData

- ##### What's New
	- [Breaking] [Added] properties `data[].payload.conversionRate.rates.inr`, `data[].payload.conversionRate.rates.usd` in response with status code 200
	- [Added] property `data[].payload.isInternational` of schema `DummyTemplateDataPayload` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `data[].payload.utr` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.payments[].time` of schema `PaymentData` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.payments[].mode` of schema `PaymentData` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.payments[].name` of schema `PaymentData` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.payments[].meta` of schema `PaymentData` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.meta.generator.awbNumberBarcodeGenerator` of schema `MetaProperty` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.isExport` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.isExportShipment` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.txnId` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.poNumber` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.creditNoteId` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.currentDate` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.totalValueOfGoods` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.b2BBuyerDetails` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.isQwik` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.orderType` of schema `DummyTemplateDataPayload` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.deliveryPartnerDetail.origin` of schema `DeliveryPartnerDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.deliveryPartnerDetail.destination` of schema `DeliveryPartnerDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.invoiceDetail.deviceId` of schema `InvoiceDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.invoiceDetail.marketplaceInvoiceId` of schema `InvoiceDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.invoiceDetail.marketplaceShipmentId` of schema `InvoiceDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.invoiceDetail.channelOrderId` of schema `InvoiceDetail` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `data[].payload.companyDetail.gstin` of schema `CompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.companyDetail.sector` of schema `CompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.companyDetail.phone` of schema `CompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.companyDetail.trn` of schema `CompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.companyDetail.vat` of schema `CompanyDetail` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `data[].payload.companyDetail.phoneNo` of schema `CompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.companyDetail.displayAddress` of schema `CompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.companyDetail.businessCountryTimezone` of schema `CompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.companyDetail.businessCountryCurrency` of schema `CompanyDetail` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `data[].payload.storeDetail.gstin` of schema `StoreDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.storeDetail.sector` of schema `StoreDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.storeDetail.displayAddress` of schema `StoreDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.storeDetail.storeId` of schema `StoreDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.customerBillingDetail.sector` of schema `CustomerBillingDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.customerBillingDetail.email` of schema `CustomerBillingDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.customerBillingDetail.displayAddress` of schema `CustomerBillingDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.customerShippingDetail.sector` of schema `CustomerShippingDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.customerShippingDetail.displayAddress` of schema `CustomerShippingDetail` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `data[].payload.returnDetail.gstin` of schema `ReturnDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.returnDetail.sector` of schema `ReturnDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.returnDetail.displayAddress` of schema `ReturnDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.products[].meta` of schema `ItemsProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.products[].countryOfOrigin` of schema `ItemsProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.discount` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.promotion` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.coupon` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.reward` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.giftPrice` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.totalQuantity` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.subTotal` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.roundOff` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.productTable.totalValueOfGoods` of schema `ProductTable` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.registeredCompanyDetail.sector` of schema `RegisteredCompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].payload.registeredCompanyDetail.displayAddress` of schema `RegisteredCompanyDetail` in response with status code 200
	- [Breaking] [Deleted] property `data[].countryCode` of schema `DummyTemplateData` in response with status code 200


### Finance



#### generateReport

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### downloadReport

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### getData

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### getReason

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### getReportList

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### creditlineDataplatform

- ##### What's Deprecated
	- [Deleted] properties `page.current`, `page.type`, `page.size`, `page.itemTotal`, `page.nextId`, `page.hasPrevious`, `page.hasNext` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### invoiceListing

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].currency` of schema `InvoiceListingResponseItems` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### invoicePDF

- ##### What's Deprecated
	- [Deleted] Required status to Request body content


#### creditNoteDetails

- ##### What's New
	- [Added] property `data.cnDetails[]` of schema `CreditNoteDetails` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `data.cnDetails.staffId`, `data.cnDetails.expiryDate`, `data.cnDetails.channelOfIssuance`, `data.cnDetails.orderId`, `data.cnDetails.dateIssued`, `data.cnDetails.orderingChannel`, `data.cnDetails.shipmentId`, `data.cnDetails.storeId`, `data.cnDetails.invoiceNumber` in response with status code 200


#### generateReportCustomerCn

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `data.page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `data.page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `data.page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `data.page.nextId` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `data.page.hasPrevious` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `data.page.type` in response with status code 200


#### invoicePaymentDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] method `invoicePaymentDetails`



#### invoiceActivityLogs

- ##### What's Deprecated
	- [Breaking] [Deleted] method `invoiceActivityLogs`



#### unlockCreditNote

- ##### What's Deprecated
	- [Breaking] [Deleted] method `unlockCreditNote`



### Lead



#### getPlatformTickets

- ##### What's New
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `items[].source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `items[].source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `items[].source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `items[].source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200


#### createTicket

- ##### What's New
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `low` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `medium` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `high` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### getNewTickets

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `items[].content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `items[].source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `items[].source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `filters.priorities[].key` of schema `PriorityEnum` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getNewTickets` to `getTickets`


#### getPlatformTicket

- ##### What's New
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### editPlatformTicket

- ##### What's New
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `low` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `medium` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `high` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### getNewTicket

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getNewTicket` to `getTicket`


#### editNewTicket

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `low` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `medium` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `high` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `image` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `video` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `file` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `youtube` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `product` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `collection` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `brand` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `shipment` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `order` from property `content.attachments[].type` of schema `TicketAssetTypeEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `platform_panel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `sales_channel` from property `source` of schema `TicketSourceEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] operationId from `editNewTicket` to `editTicket`


#### createPlatformTicketHistory

- ##### What's New
	- [Added] Possible values to property `type` of schema `HistoryTypeEnum` in request body
	- [Added] Possible values to property `type` of schema `HistoryTypeEnum` in request body
	- [Added] Possible values to property `type` of schema `HistoryTypeEnum` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `rating` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `log` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `comment` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `thread` from property `type` of schema `HistoryTypeEnum` in request body


#### createNewHistory

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `rating` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `log` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `comment` from property `type` of schema `HistoryTypeEnum` in request body
	- [Breaking] [Deleted] Possible values from `thread` from property `type` of schema `HistoryTypeEnum` in request body

- ##### What's Changed
	- [Breaking] [Changed] operationId from `createNewHistory` to `createHistory`


#### getNewTicketHistory

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getNewTicketHistory` to `getTicketHistory`


#### getCustomForm

- ##### What's New
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### editCustomForm

- ##### What's New
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `low` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `medium` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `high` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### deleteCustomForm

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteCustomForm`



#### getCustomForms

- ##### What's New
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `items[].priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `low` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `items[].priority.key` of schema `PriorityEnum` in response with status code 200


#### createCustomForm

- ##### What's New
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority` of schema `PriorityEnum` in request body
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Added] Possible values to property `priority.key` of schema `PriorityEnum` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `low` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `medium` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `high` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority` of schema `PriorityEnum` in request body
	- [Breaking] [Deleted] Possible values from `low` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `medium` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `high` from property `priority.key` of schema `PriorityEnum` in response with status code 200
	- [Breaking] [Deleted] Possible values from `urgent` from property `priority.key` of schema `PriorityEnum` in response with status code 200


#### getNewTokenForVideoRoom

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getNewTokenForVideoRoom` to `getTokenForVideoRoom`


#### getPlatformVideoParticipants

- ##### What's New
	- [Breaking] [Added] Type `object` to property `participants[].user.emails[]` of schema `Email` in response with status code 200
	- [Breaking] [Added] properties `participants[].user.emails[].primary`, `participants[].user.emails[].verified`, `participants[].user.emails[].email`, `participants[].user.emails[].active` in response with status code 200
	- [Breaking] [Added] Type `object` to property `participants[].user.phoneNumbers[]` of schema `PhoneNumber` in response with status code 200
	- [Breaking] [Added] properties `participants[].user.phoneNumbers[].active`, `participants[].user.phoneNumbers[].primary`, `participants[].user.phoneNumbers[].verified`, `participants[].user.phoneNumbers[].phone`, `participants[].user.phoneNumbers[].countryCode` in response with status code 200
	- [Added] property `participants[].user.uid` of schema `UserSchema` in response with status code 200
	- [Added] property `participants[].user.debug` of schema `UserSchema` in response with status code 200
	- [Added] property `participants[].user.hasOldPasswordHash` of schema `UserSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `participants[].user.meta` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.dob` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.applicationId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.userId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.rrId` of schema `UserSchema` in response with status code 200


#### getNewVideoParticipants

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `participants[].user.meta` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.dob` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.applicationId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.userId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.externalId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] property `participants[].user.rrId` of schema `UserSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getNewVideoParticipants` to `getVideoParticipants`


### Order



#### invalidateShipmentCache

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX
	- [Breaking] [Added] Required status to property `message` in response with status code 5XX

- ##### What's Deprecated
	- [Deleted] Deprecated status from true


#### reassignLocation

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### updateShipmentLock

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `resumeTasksAfterUnlock` of schema `UpdateShipmentLockPayload` in request body
	- [Breaking] [Deleted] property `lockAfterTransition` of schema `UpdateShipmentLockPayload` in request body
	- [Breaking] [Deleted] property `unlockBeforeTransition` of schema `UpdateShipmentLockPayload` in request body


#### getAnnouncements

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### updateAddress

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### updateShipmentStatus

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### getRoleBasedActions

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX
	- [Breaking] [Added] Required status to property `message` in response with status code 5XX


#### getShipmentHistory

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX
	- [Breaking] [Added] Required status to property `message` in response with status code 5XX


#### postShipmentHistory

- ##### What's New
	- [Added] property `activityHistory[].activityHistory` of schema `PostHistoryDict` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property `activityHistory[].filters` of schema `PostHistoryDict` in request body
	- [Breaking] [Deleted] property `activityHistory[].data` of schema `PostHistoryDict` in request body
	- [Deleted] Required status from property `activityHistory[].filters` in request body

- ##### What's Changed
	- [Breaking] [Changed] Required status of property `activityHistory[].data` in request body


#### sendSmsNinja

- ##### What's Deprecated
	- [Breaking] [Deleted] property `result[].orderDetails.headers` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.currency` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.meta` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.discount` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.prices` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.userId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.taxDetails` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.mongoCartId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.deliveryCharges` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.transactionId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.collectBy` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.couponValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.orderValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.createdTime` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.totalOrderValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.orderingChannel` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.codCharges` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.cashbackValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.refundBy` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.affiliateOrderDate` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.paymentMethods` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.affiliateOrderId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.paymentModeId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.promotionEffectiveDiscount` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.modeOfPayment` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.cashbackApplied` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.fyndCredits` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.affiliateId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.orderingChannelLogo` of schema `OrderDetails` in response with status code 200


#### updatePackagingDimensions

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### createOrder

- ##### What's New
	- [Breaking] [Added] Required status to properties `shippingInfo.address1`, `shippingInfo.city`, `shippingInfo.country`, `shippingInfo.first_name`, `shippingInfo.pincode`, `shippingInfo.primary_email`, `shippingInfo.primary_mobile_number`, `shippingInfo.state` in request body
	- [Breaking] [Added] Required status to properties `billingInfo.address1`, `billingInfo.city`, `billingInfo.country`, `billingInfo.first_name`, `billingInfo.pincode`, `billingInfo.primary_email`, `billingInfo.primary_mobile_number`, `billingInfo.state` in request body
	- [Breaking] [Added] Required status to property `userInfo.primary_mobile_number` in request body

- ##### What's Deprecated
	- [Deleted] Possible nullable value from `true` from property `shipments[].meta` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].type` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].id` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].tags` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].vertical` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].quantity` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].status` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].price` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].gst` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].parentType` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].storeInvoiceId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].lockStatus` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].billingAddressJson` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].fulfilmentPriority` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].isActive` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].previousShipmentId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].pdfLinks` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].deliveryAddressJson` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].ewayBillId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].affiliateShipmentId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].fyndOrderId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].createdAt` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].deliveryAwbNumber` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].handOverContactJson` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].creditNoteId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].parentId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].affiliateId` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shipments[].packagingType` of schema `Shipment` in request body
	- [Breaking] [Deleted] property `shippingInfo.address` of schema `ShippingInfo` in request body
	- [Breaking] [Deleted] property `shippingInfo.area` of schema `ShippingInfo` in request body
	- [Breaking] [Deleted] property `shippingInfo.countryIsoCode` of schema `ShippingInfo` in request body
	- [Breaking] [Deleted] property `billingInfo.address` of schema `BillingInfo` in request body
	- [Breaking] [Deleted] property `billingInfo.area` of schema `BillingInfo` in request body
	- [Breaking] [Deleted] property `billingInfo.landmark` of schema `BillingInfo` in request body
	- [Breaking] [Deleted] property `billingInfo.countryIsoCode` of schema `BillingInfo` in request body
	- [Breaking] [Deleted] property `orderingStoreId` of schema `CreateOrderAPI` in request body
	- [Breaking] [Deleted] property `orderPlatform` of schema `CreateOrderAPI` in request body


#### checkOrderStatus

- ##### What's Deprecated
	- [Breaking] [Deleted] property `result[].orderDetails.headers` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.currency` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.meta` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.discount` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.prices` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.userId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.taxDetails` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.mongoCartId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.deliveryCharges` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.transactionId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.collectBy` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.couponValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.orderValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.createdTime` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.totalOrderValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.orderingChannel` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.codCharges` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.cashbackValue` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.refundBy` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.affiliateOrderDate` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.paymentMethods` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.affiliateOrderId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.paymentModeId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.promotionEffectiveDiscount` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.modeOfPayment` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.cashbackApplied` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.fyndCredits` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.affiliateId` of schema `OrderDetails` in response with status code 200
	- [Breaking] [Deleted] property `result[].orderDetails.orderingChannelLogo` of schema `OrderDetails` in response with status code 200


#### fetchCreditBalanceDetail

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### fetchRefundModeConfig

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### attachOrderUser

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### sendUserMobileOTP

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### verifyMobileOTP

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### downloadLanesReport

- ##### What's New
	- [Added] property `fromDate` of schema `BulkReportsDownloadRequest` in request body
	- [Added] property `toDate` of schema `BulkReportsDownloadRequest` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property `startDate` of schema `BulkReportsDownloadRequest` in request body
	- [Breaking] [Deleted] property `endDate` of schema `BulkReportsDownloadRequest` in request body


#### bulkStateTransistion

- ##### What's Deprecated
	- [Breaking] [Deleted] method `bulkStateTransistion`



#### bulkListing

- ##### What's Deprecated
	- [Breaking] [Deleted] method `bulkListing`



#### jobDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] method `jobDetails`



#### getFileByStatus

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getFileByStatus`



#### getManifestShipments

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getManifestShipments`



#### getManifests

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getManifests`



#### processManifests

- ##### What's Deprecated
	- [Breaking] [Deleted] method `processManifests`



#### getManifestDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getManifestDetails`



#### dispatchManifests

- ##### What's Deprecated
	- [Breaking] [Deleted] method `dispatchManifests`



#### uploadConsents

- ##### What's Deprecated
	- [Breaking] [Deleted] method `uploadConsents`



#### getManifestfilters

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getManifestfilters`



#### eInvoiceRetry

- ##### What's New
	- [Added] property `responseData[].success` of schema `EInvoiceResponseData` in response with status code 200
	- [Added] property `responseData[].irn` of schema `EInvoiceResponseData` in response with status code 200
	- [Added] property `responseData[].timeout` of schema `EInvoiceResponseData` in response with status code 200
	- [Added] property `responseData[].ackNo` of schema `EInvoiceResponseData` in response with status code 200
	- [Added] property `responseData[].ackDt` of schema `EInvoiceResponseData` in response with status code 200
	- [Added] property `responseData[].timeoutUnit` of schema `EInvoiceResponseData` in response with status code 200
	- [Added] property `success` of schema `EInvoiceRetryResponse` in response with status code 200
	- [Added] property `message` of schema `EInvoiceRetryResponse` in response with status code 200
	- [Added] property `successCount` of schema `EInvoiceRetryResponse` in response with status code 200
	- [Breaking] [Added] Required status to property `success_count` in response with status code 200
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `shipmentsData[].einvoiceType` of schema `EInvoiceRetryShipmentData` in request body
	- [Deleted] Required status from property `shipmentsData[].einvoice_type` in request body
	- [Breaking] [Deleted] property `responseData[].status` of schema `EInvoiceResponseData` in response with status code 200
	- [Breaking] [Deleted] property `responseData[].einvoiceType` of schema `EInvoiceResponseData` in response with status code 200
	- [Breaking] [Deleted] property `responseData[].einvoiceInfo` of schema `EInvoiceResponseData` in response with status code 200
	- [Deleted] Required status from property `responseData[].status` in response with status code 200
	- [Breaking] [Deleted] Response with status 400
	- [Breaking] [Deleted] Response with status 500

- ##### What's Changed
	- [Breaking] [Changed] Required status of property `responseData[].einvoice_type` in response with status code 200


#### trackShipment

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX

- ##### What's Deprecated
	- [Deleted] Possible nullable value from `true` from property `page.current` of schema `PageDetails` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `page.size` of schema `PageDetails` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `page.type` of schema `PageDetails` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `page.hasNext` of schema `PageDetails` in response with status code 200
	- [Breaking] [Deleted] property `page.hasPrevious` of schema `PageDetails` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `page.itemTotal` of schema `PageDetails` in response with status code 200


#### updateShipmentTracking

- ##### What's New
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX


#### failedOrderLogs

- ##### What's Deprecated
	- [Breaking] [Deleted] method `failedOrderLogs`



#### failedOrderLogDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] method `failedOrderLogDetails`



#### getShipments

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.type` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasNext` of schema `Page` in response with status code 200
	- [Added] property `page.total` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `startDate` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `endDate` (type: `string`)

	- [Breaking] [Deleted] property `items[].bags[].article.tags` of schema `Article` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].financialBreakup[].amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].bagStatus[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].bagStatus[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentOperationalStatus.createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentOperationalStatus.updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentStatus.createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentStatus.updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].currency` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].orderCreatedTs` of schema `ShipmentItem` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].shipmentStatus.status` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipmentStatus.createdTs` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipmentStatus.statusCreatedTs` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].estimatedSlaTs` of schema `ShipmentItem` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].deliveryAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].paymentInfo` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].statusCreatedTs` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.address1` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.tags` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.brandStoreTags[]` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.displayAddress` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipmentCreatedTs` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].currencyInfo` of schema `ShipmentItem` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `array` to `string` of property `items[].fulfillingStore.brandStoreTags` of schema `ShipmentItemFulFillingStore` in response with status code 200


#### getShipmentById

- ##### What's New
	- [Added] property `shipments[].shipmentDetails.shipments` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.articles` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.meta` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.boxType` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.fulfillmentId` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.dpId` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.affiliateShipmentId` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Required status to properties `shipments[].shipmentDetails.affiliate_shipment_id`, `shipments[].shipmentDetails.articles`, `shipments[].shipmentDetails.fulfillment_id`, `shipments[].shipmentDetails.shipments` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `fetchActiveShipment` (type: `boolean`)

	- [Breaking] [Deleted] `query` parameter `allowInactive` (type: `boolean`)

	- [Breaking] [Deleted] property `shipments[].order.createdTs` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].order.affiliateOrderId` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].article.tags` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].bagStatus[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].bagStatus[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].financialBreakup.amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `shipments[].bags[].deliveryAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].deliveryAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].paymentInfo` of schema `OrderBags` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].currentStatus.createdTs` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].status.createdTs` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].status.statusCreatedAt` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].currency` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].trackingList[].createdTs` of schema `TrackingList` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].estimatedSlaTs` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.stateCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.countryIsoCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.countryPhoneCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.displayAddress` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.stateCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.countryIsoCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.countryPhoneCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.displayAddress` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].orderingStore.address1` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].orderingStore.displayAddress` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].orderPlatform` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].paymentInfo` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bagStatusHistory[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bagStatusHistory[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].fulfillingStore.address1` of schema `FulfillingStore` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].fulfillingStore.displayAddress` of schema `FulfillingStore` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].shipmentCreatedTs` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].currencyInfo` of schema `PlatformShipment` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `shipments[].rtoAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].rtoAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200


#### getOrderById

- ##### What's New
	- [Added] property `shipments[].shipmentDetails.shipments` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.articles` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.meta` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.boxType` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.fulfillmentId` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.dpId` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `shipments[].shipmentDetails.affiliateShipmentId` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Required status to properties `shipments[].shipmentDetails.affiliate_shipment_id`, `shipments[].shipmentDetails.articles`, `shipments[].shipmentDetails.fulfillment_id`, `shipments[].shipmentDetails.shipments` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `allowInactive` (type: `boolean`)

	- [Breaking] [Deleted] property `order.prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `order.createdTs` of schema `OrderData` in response with status code 200
	- [Breaking] [Deleted] property `order.paymentInfo` of schema `OrderData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].order.createdTs` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].order.affiliateOrderId` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].article.tags` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].bagStatus[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].bagStatus[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].financialBreakup.amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `shipments[].bags[].deliveryAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].deliveryAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].paymentInfo` of schema `OrderBags` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bags[].currentStatus.createdTs` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].status.createdTs` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].status.statusCreatedAt` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].currency` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].trackingList[].createdTs` of schema `TrackingList` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].estimatedSlaTs` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.stateCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.countryIsoCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.countryPhoneCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].deliveryDetails.displayAddress` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.stateCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.countryIsoCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.countryPhoneCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].billingDetails.displayAddress` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].orderingStore.address1` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].orderingStore.displayAddress` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].orderPlatform` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].paymentInfo` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bagStatusHistory[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].bagStatusHistory[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].fulfillingStore.address1` of schema `FulfillingStore` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].fulfillingStore.displayAddress` of schema `FulfillingStore` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].shipmentCreatedTs` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].currencyInfo` of schema `PlatformShipment` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `shipments[].rtoAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `shipments[].rtoAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200


#### getLaneConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `startDate` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `endDate` (type: `string`)



#### getOrders

- ##### What's New
	- [Added] property `items[].shipments[].shipmentDetails.shipments` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `items[].shipments[].shipmentDetails.articles` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `items[].shipments[].shipmentDetails.meta` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `items[].shipments[].shipmentDetails.boxType` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `items[].shipments[].shipmentDetails.fulfillmentId` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `items[].shipments[].shipmentDetails.dpId` of schema `ShipmentDetails` in response with status code 200
	- [Added] property `items[].shipments[].shipmentDetails.affiliateShipmentId` of schema `ShipmentDetails` in response with status code 200
	- [Breaking] [Added] Required status to properties `items[].shipments[].shipmentDetails.affiliate_shipment_id`, `items[].shipments[].shipmentDetails.articles`, `items[].shipments[].shipmentDetails.fulfillment_id`, `items[].shipments[].shipmentDetails.shipments` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.type` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasNext` of schema `Page` in response with status code 200
	- [Added] property `page.total` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `startDate` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `endDate` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `allowInactive` (type: `boolean`)

	- [Breaking] [Deleted] property `items[].shipments[].order.createdTs` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].order.affiliateOrderId` of schema `OrderDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].article.tags` of schema `OrderBagArticle` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].bagStatus[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].bagStatus[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].financialBreakup.amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].shipments[].bags[].deliveryAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].deliveryAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].paymentInfo` of schema `OrderBags` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bags[].currentStatus.createdTs` of schema `CurrentStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].status.createdTs` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].status.statusCreatedAt` of schema `ShipmentStatusData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].currency` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].trackingList[].createdTs` of schema `TrackingList` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].estimatedSlaTs` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].deliveryDetails.stateCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].deliveryDetails.countryIsoCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].deliveryDetails.countryPhoneCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].deliveryDetails.displayAddress` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].billingDetails.stateCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].billingDetails.countryIsoCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].billingDetails.countryPhoneCode` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].billingDetails.displayAddress` of schema `UserDetailsData` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].orderingStore.address1` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].orderingStore.displayAddress` of schema `OrderingStoreDetails` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].orderPlatform` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].paymentInfo` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bagStatusHistory[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].bagStatusHistory[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].fulfillingStore.address1` of schema `FulfillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].fulfillingStore.displayAddress` of schema `FulfillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].shipmentCreatedTs` of schema `PlatformShipment` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].currencyInfo` of schema `PlatformShipment` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].shipments[].rtoAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipments[].rtoAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].currency` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Deleted] property `items[].orderCreatedTs` of schema `PlatformOrderItems` in response with status code 200
	- [Breaking] [Deleted] property `items[].currencyInfo` of schema `PlatformOrderItems` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### getApplicationShipments

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.type` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasPrevious` of schema `Page` in response with status code 200
	- [Breaking] [Added] Possible nullable value `true` to property `page.hasNext` of schema `Page` in response with status code 200
	- [Added] property `page.total` of schema `Page` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].bags[].article.tags` of schema `Article` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].financialBreakup[].amountToBeCollected` of schema `FinancialBreakup` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].bagStatus[].createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].bagStatus[].updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentOperationalStatus.createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentOperationalStatus.updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentStatus.createdTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].bags[].currentStatus.updatedTs` of schema `BagStatusHistory` in response with status code 200
	- [Breaking] [Deleted] property `items[].prices.amountToBeCollected` of schema `Prices` in response with status code 200
	- [Breaking] [Deleted] property `items[].currency` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].orderCreatedTs` of schema `ShipmentItem` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].shipmentStatus.status` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipmentStatus.createdTs` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipmentStatus.statusCreatedTs` of schema `ShipmentStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].estimatedSlaTs` of schema `ShipmentItem` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].deliveryAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].deliveryAddress.displayAddress` of schema `PlatformDeliveryAddress` in response with status code 200
	- [Breaking] [Deleted] property `items[].paymentInfo` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].statusCreatedTs` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.address1` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.tags` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.brandStoreTags[]` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].fulfillingStore.displayAddress` of schema `ShipmentItemFulFillingStore` in response with status code 200
	- [Breaking] [Deleted] property `items[].shipmentCreatedTs` of schema `ShipmentItem` in response with status code 200
	- [Breaking] [Deleted] property `items[].currencyInfo` of schema `ShipmentItem` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `array` to `string` of property `items[].fulfillingStore.brandStoreTags` of schema `ShipmentItemFulFillingStore` in response with status code 200


#### getfilters

- ##### What's Deprecated
	- [Deleted] Value format from `int32` from property `advanceFilter.returned[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Deleted] Value format from `int32` from property `advanceFilter.unfulfilled[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Deleted] Value format from `int32` from property `advanceFilter.filters[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Deleted] Value format from `int32` from property `advanceFilter.processed[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Deleted] Value format from `int32` from property `advanceFilter.actionCentre[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200
	- [Deleted] Value format from `int32` from property `globalFilter[].options[].minSearchSize` of schema `FilterInfoOption` in response with status code 200


#### getBulkShipmentExcelFile

- ##### What's New
	- [Breaking] [Deleted] `query` parameter `startDate` (type: `string`)

- [Added] `query` parameter `fromDate` (type: `string`)
	- [Breaking] [Deleted] `query` parameter `endDate` (type: `string`)

- [Added] `query` parameter `toDate` (type: `string`)


#### getBagById

- ##### What's New
	- [Added] property `id` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `tags` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `article` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `brand` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `item` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `identifier` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `quantity` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `reasons` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `type` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `meta` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `prices` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `dates` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `status` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `bagUpdateTime` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `gstDetails` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `parentPromoBags` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `financialBreakup` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `bagStatus` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `sellerIdentifier` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `originalBagList` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `articleDetails` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `currentOperationalStatus` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `orderingStore` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `affiliateBagDetails` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `qcRequired` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `restorePromos` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `affiliateDetails` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `bagStatusHistory` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `displayName` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `lineNumber` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `restoreCoupon` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `noOfBagsOrder` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `appliedPromos` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `journeyType` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `shipmentId` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `currentStatus` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `orderIntegrationId` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `operationalStatus` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Added] property `entityType` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX
	- [Breaking] [Added] Required status to property `message` in response with status code 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `data` of schema `BagDetailsPlatformResponse` in response with status code 200
	- [Breaking] [Deleted] property `statusCode` of schema `BagDetailsPlatformResponse` in response with status code 200


#### getBags

- ##### What's New
	- [Added] property `items` of schema `GetBagsPlatformResponse` in response with status code 200
	- [Added] property `page` of schema `GetBagsPlatformResponse` in response with status code 200
	- [Breaking] [Added] Required status to properties `items`, `page` in response with status code 200
	- [Breaking] [Added] Required status to property `message` in response with status code 4XX
	- [Breaking] [Added] Required status to property `message` in response with status code 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `data` of schema `GetBagsPlatformResponse` in response with status code 200
	- [Breaking] [Deleted] property `statusCode` of schema `GetBagsPlatformResponse` in response with status code 200


#### generatePOSReceiptByOrderId

- ##### What's Deprecated
	- [Breaking] [Deleted] property `paymentReceiptTemplate` of schema `GeneratePosOrderReceiptResponse` in response with status code 200
	- [Breaking] [Deleted] property `customerCnReceiptTemplate` of schema `GeneratePosOrderReceiptResponse` in response with status code 200
	- [Breaking] [Deleted] property `invoiceReceiptTemplate` of schema `GeneratePosOrderReceiptResponse` in response with status code 200


#### getAllowedTemplatesForBulk

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getAllowedTemplatesForBulk`



#### getTemplate

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getTemplate`



#### click2Call

- ##### What's New
	- [Added] method `click2Call`



#### processManifest

- ##### What's New
	- [Added] method `processManifest`



#### dispatchManifest

- ##### What's New
	- [Added] method `dispatchManifest`



#### uploadConsent

- ##### What's New
	- [Added] method `uploadConsent`



### Payment



#### getPaymentModeRoutes

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `orderId` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `shipmentId` (type: `string`)

	- [Deleted] Type from `object` from property `paymentOptions` of schema `PaymentOptions` in response with status code 200
	- [Deleted] properties `paymentOptions.paymentOption` in response with status code 200
	- [Deleted] Required status from property `paymentOptions.payment_option` in response with status code 200
	- [Breaking] [Deleted] property `paymentBreakup` of schema `PaymentOptionsResponse` in response with status code 200


#### getAllPayouts

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `items[].customers` of schema `PayoutCustomer` in response with status code 200
	- [Deleted] properties `items[].customers.mobile`, `items[].customers.name`, `items[].customers.email`, `items[].customers.id`, `items[].customers.uniqueExternalId` in response with status code 200
	- [Deleted] Type from `object` from property `items[].moreAttributes` of schema `PayoutMoreAttributes` in response with status code 200
	- [Deleted] properties `items[].moreAttributes.city`, `items[].moreAttributes.country`, `items[].moreAttributes.state`, `items[].moreAttributes.branchName`, `items[].moreAttributes.accountNo`, `items[].moreAttributes.accountHolder`, `items[].moreAttributes.ifscCode`, `items[].moreAttributes.accountType`, `items[].moreAttributes.bankName` in response with status code 200
	- [Deleted] Type from `object` from property `items[].payoutsAggregators[]` of schema `PayoutAggregator` in response with status code 200
	- [Deleted] properties `items[].payoutsAggregators[].aggregatorId`, `items[].payoutsAggregators[].aggregatorFundId`, `items[].payoutsAggregators[].payoutDetailsId` in response with status code 200


#### savePayout

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `bankDetails` of schema `PayoutBankDetails` in request body
	- [Deleted] properties `bankDetails.state`, `bankDetails.country`, `bankDetails.city`, `bankDetails.pincode`, `bankDetails.ifscCode`, `bankDetails.accountHolder`, `bankDetails.accountType`, `bankDetails.accountNo`, `bankDetails.bankName`, `bankDetails.branchName` in request body
	- [Deleted] Required status from properties `bankDetails.account_type`, `bankDetails.ifsc_code` in request body


#### updatePayout

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `bankDetails` of schema `PayoutBankDetails` in request body
	- [Deleted] properties `bankDetails.state`, `bankDetails.country`, `bankDetails.city`, `bankDetails.pincode`, `bankDetails.ifscCode`, `bankDetails.accountHolder`, `bankDetails.accountType`, `bankDetails.accountNo`, `bankDetails.bankName`, `bankDetails.branchName` in request body
	- [Deleted] Required status from properties `bankDetails.account_type`, `bankDetails.ifsc_code` in request body


#### getUserCODlimitRoutes

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `userCodData` of schema `CODdata` in response with status code 200
	- [Deleted] properties `userCodData.limit`, `userCodData.usages`, `userCodData.remainingLimit`, `userCodData.userId`, `userCodData.isActive` in response with status code 200
	- [Deleted] Required status from properties `userCodData.is_active`, `userCodData.limit`, `userCodData.remaining_limit`, `userCodData.usages`, `userCodData.user_id` in response with status code 200


#### edcDeviceStats

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `statistics` of schema `StatisticsData` in response with status code 200
	- [Deleted] properties `statistics.inactiveDeviceCount`, `statistics.activeDeviceCount` in response with status code 200
	- [Deleted] Required status from properties `statistics.active_device_count`, `statistics.inactive_device_count` in response with status code 200


#### updateEdcDevice

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `EdcDevice` in response with status code 200
	- [Deleted] properties `data.edcModel`, `data.storeId`, `data.aggregatorId`, `data.terminalUniqueIdentifier`, `data.edcDeviceSerialNo`, `data.isActive`, `data.aggregatorName`, `data.terminalSerialNo`, `data.merchantStorePosCode`, `data.deviceTag`, `data.applicationId` in response with status code 200
	- [Deleted] Required status from properties `data.aggregator_id`, `data.application_id`, `data.device_tag`, `data.edc_device_serial_no`, `data.is_active`, `data.store_id`, `data.terminal_serial_no`, `data.terminal_unique_identifier` in response with status code 200


#### getEdcDevice

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `EdcDevice` in response with status code 200
	- [Deleted] properties `data.edcModel`, `data.storeId`, `data.aggregatorId`, `data.terminalUniqueIdentifier`, `data.edcDeviceSerialNo`, `data.isActive`, `data.aggregatorName`, `data.terminalSerialNo`, `data.merchantStorePosCode`, `data.deviceTag`, `data.applicationId` in response with status code 200
	- [Deleted] Required status from properties `data.aggregator_id`, `data.application_id`, `data.device_tag`, `data.edc_device_serial_no`, `data.is_active`, `data.store_id`, `data.terminal_serial_no`, `data.terminal_unique_identifier` in response with status code 200


#### edcDeviceList

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `page` of schema `Page` in response with status code 200
	- [Deleted] properties `page.current`, `page.type`, `page.size`, `page.itemTotal`, `page.nextId`, `page.hasPrevious`, `page.hasNext` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200


#### getPosPaymentModeRoutes

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `orderId` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `displaySplit` (type: `boolean`)

	- [Breaking] [Deleted] `query` parameter `advancePayment` (type: `boolean`)

	- [Breaking] [Deleted] `query` parameter `shipmentId` (type: `string`)

	- [Deleted] Type from `object` from property `paymentOptions` of schema `PaymentOptionAndFlow` in response with status code 200
	- [Deleted] properties `paymentOptions.paymentOption`, `paymentOptions.paymentFlows`, `paymentOptions.paymentDefaultSelection` in response with status code 200
	- [Deleted] Required status from properties `paymentOptions.payment_flows`, `paymentOptions.payment_option` in response with status code 200
	- [Breaking] [Deleted] property `paymentBreakup` of schema `PaymentModeRouteResponse` in response with status code 200
	- [Breaking] [Deleted] property `advancePayment` of schema `PaymentModeRouteResponse` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Required status of query parameter `cartId`
	- [Breaking] [Changed] Required status of query parameter `checkoutMode`


#### resendOrCancelPayment

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `LinkStatus` in response with status code 200
	- [Deleted] properties `data.status`, `data.message` in response with status code 200
	- [Deleted] Required status from properties `data.message`, `data.status` in response with status code 200


#### getPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 400
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 500


#### createPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `meta` of schema `CreatePaymentLinkMeta` in request body
	- [Deleted] properties `meta.amount`, `meta.cartId`, `meta.checkoutMode`, `meta.assignCardId` in request body
	- [Deleted] Required status from properties `meta.amount`, `meta.cart_id`, `meta.checkout_mode` in request body
	- [Breaking] [Deleted] property `countryPhoneCode` of schema `CreatePaymentLinkRequest` in request body
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 400
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 500


#### pollingPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 400
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 500


#### resendPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 400
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 500


#### cancelPaymentLink

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Possible nullable value `true` to property `error` of schema `ErrorResponse` in response with status code 500

- ##### What's Deprecated
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 400
	- [Deleted] properties `error.msg`, `error.amount`, `error.expired`, `error.cancelled`, `error.paymentTransactionId`, `error.invalidId`, `error.merchantOrderId`, `error.merchantName` in response with status code 500


#### getPaymentModeControlRoutes

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPaymentModeControlRoutes`



#### setMerchantModeControlRoutes

- ##### What's Deprecated
	- [Breaking] [Deleted] method `setMerchantModeControlRoutes`



#### getPaymentModeCustomConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPaymentModeCustomConfig`



#### setPaymentModeCustomConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] method `setPaymentModeCustomConfig`



#### getPaymentCodeOption

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data` of schema `GetPaymentCode` in response with status code 200
	- [Deleted] properties `data.methodCode` in response with status code 200
	- [Deleted] Required status from property `data.method_code` in response with status code 200


#### getPaymentSession

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPaymentSession`



#### updatePaymentSession

- ##### What's Deprecated
	- [Breaking] [Deleted] property `checksum` of schema `PaymentSessionRequestSerializer` in request body
	- [Breaking] [Deleted] property `paymentDetails[].meta` of schema `PaymentSessionDetail` in request body
	- [Deleted] Required status from property `checksum` in request body


#### updateRefundSession

- ##### What's Deprecated
	- [Breaking] [Deleted] property `error` of schema `RefundSessionRequestSerializer` in request body
	- [Breaking] [Deleted] property `message` of schema `RefundSessionRequestSerializer` in request body
	- [Breaking] [Deleted] property `checksum` of schema `RefundSessionRequestSerializer` in request body
	- [Breaking] [Deleted] property `refundDetails[].pgRefundId` of schema `RefundSessionDetail` in request body
	- [Deleted] Required status from property `refund_details` in request body
	- [Deleted] Required status from property `checksum` in request body


#### createPaymentOrder

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createPaymentOrder`



#### getMerchantAggregatorAppVersion

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getMerchantAggregatorAppVersion`



#### patchMerchantPaymentOptionVersion

- ##### What's Deprecated
	- [Breaking] [Deleted] method `patchMerchantPaymentOptionVersion`



### Serviceability



#### getZones

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getZones`



#### createZone

- ##### What's New
	- [Added] property `identifier` of schema `ZoneRequest` in request body
	- [Added] property `data` of schema `ZoneRequest` in request body
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `name` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `slug` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `channels` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `mapping` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `companyId` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `isActive` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `storeIds` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `regionType` of schema `CreateZoneData` in request body
	- [Breaking] [Deleted] property `assignmentPreference` of schema `CreateZoneData` in request body
	- [Deleted] Required status from property `is_active` in request body
	- [Deleted] Required status from property `mapping` in request body
	- [Deleted] Required status from property `name` in request body
	- [Deleted] Required status from property `product` in request body
	- [Deleted] Required status from property `region_type` in request body
	- [Deleted] Required status from property `slug` in request body
	- [Deleted] Required status from property `store_ids` in request body
	- [Breaking] [Deleted] Response with status 400

- ##### What's Changed
	- [Breaking] [Changed] Required status of property `channels` in request body
	- [Breaking] [Changed] Required status of property `company_id` in request body
	- [Changed] Path From `/service/platform/logistics/v2.0/company/{company_id}/zones` To `/service/platform/logistics/v1.0/company/{company_id}/zone`


#### updateZoneById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateZoneById`



#### getZoneById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getZoneById`



#### getAllStores

- ##### What's Deprecated
	- [Deleted] Deprecated status from true


#### updatePincodeMopView

- ##### What's New
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### updatePincodeBulkView

- ##### What's New
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### updatePincodeCoDListing

- ##### What's New
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### updatePincodeAuditHistory

- ##### What's New
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### createCourierPartnerAccount

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createCourierPartnerAccount`



#### getCourierPartnerAccounts

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCourierPartnerAccounts`



#### updateCourierPartnerAccount

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateCourierPartnerAccount`



#### getCourierPartnerAccount

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCourierPartnerAccount`



#### updateCourierRule

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateCourierRule`



#### getCourierPartnerRule

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCourierPartnerRule`



#### createCourierPartnerRule

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createCourierPartnerRule`



#### getCourierPartnerRules

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCourierPartnerRules`



#### updateCompanyConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateCompanyConfiguration`



#### getCompanyConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCompanyConfiguration`



#### updateApplicationConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateApplicationConfiguration`



#### getApplicationConfiguration

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getApplicationConfiguration`



#### bulkTat

- ##### What's Deprecated
	- [Breaking] [Deleted] method `bulkTat`



#### getBulkTat

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getBulkTat`



#### patchApplicationServiceabilitySelfShipment

- ##### What's New
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400

- ##### What's Changed
	- [Breaking] [Changed] operationId from `patchApplicationServiceabilitySelfShipment` to `updateSelfShip`


#### getApplicationServiceabilitySelfShipment

- ##### What's New
	- [Added] Response with status 4XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getApplicationServiceabilitySelfShipment` to `getSelfShip`


#### getApplicationConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getApplicationConfig`



#### insertApplicationConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] method `insertApplicationConfig`



#### updateStoreRulesConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateStoreRulesConfig`



#### getStoreRules

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getStoreRules`



#### createStoreRules

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createStoreRules`



#### getStoreRule

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getStoreRule`



#### updateStoreRules

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateStoreRules`



#### bulkServiceability

- ##### What's Deprecated
	- [Breaking] [Deleted] method `bulkServiceability`



#### getBulkServiceability

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getBulkServiceability`



#### getServiceability

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getServiceability`



#### updateServiceability

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateServiceability`



#### createPackageMaterial

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createPackageMaterial`



#### getPackageMaterialList

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPackageMaterialList`



#### createPackageMaterialRule

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createPackageMaterialRule`



#### getPackageMaterialRules

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPackageMaterialRules`



#### updatePackageMaterialRule

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updatePackageMaterialRule`



#### getPackageMaterialRule

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPackageMaterialRule`



#### updatePackageMaterials

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updatePackageMaterials`



#### getPackageMaterials

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPackageMaterials`



#### updateCourierPartnerRulePriority

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateCourierPartnerRulePriority`



#### getOptimalLocations

- ##### What's New
	- [Added] property `identifier` of schema `ReAssignStoreRequest` in request body
	- [Added] property `configuration` of schema `ReAssignStoreRequest` in request body
	- [Added] property `articles` of schema `ReAssignStoreRequest` in request body
	- [Added] property `toPincode` of schema `ReAssignStoreRequest` in request body
	- [Added] property `ignoredLocations` of schema `ReAssignStoreRequest` in request body
	- [Breaking] [Added] Required status to property `to_pincode` in request body
	- [Added] property `success` of schema `ReAssignStoreResponse` in response with status code 200
	- [Added] property `error` of schema `ReAssignStoreResponse` in response with status code 200
	- [Added] property `articles` of schema `ReAssignStoreResponse` in response with status code 200
	- [Added] property `toPincode` of schema `ReAssignStoreResponse` in response with status code 200
	- [Breaking] [Added] Required status to property `success` in response with status code 200
	- [Breaking] [Added] Required status to property `to_pincode` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `article` of schema `OptimlLocationsRequestSchema` in request body
	- [Breaking] [Deleted] property `channelId` of schema `OptimlLocationsRequestSchema` in request body
	- [Breaking] [Deleted] property `channelType` of schema `OptimlLocationsRequestSchema` in request body
	- [Breaking] [Deleted] property `channelIdentifier` of schema `OptimlLocationsRequestSchema` in request body
	- [Breaking] [Deleted] property `toServiceability` of schema `OptimlLocationsRequestSchema` in request body
	- [Breaking] [Deleted] property `assignedStores` of schema `OptimalLocationsResponse` in response with status code 200
	- [Breaking] [Deleted] property `faultyArticles` of schema `OptimalLocationsResponse` in response with status code 200
	- [Breaking] [Deleted] Response with status 400

- ##### What's Changed
	- [Breaking] [Changed] Required status of property `channel_id` in request body
	- [Breaking] [Changed] Required status of property `channel_type` in request body
	- [Breaking] [Changed] Required status of property `to_serviceability` in request body
	- [Breaking] [Changed] Required status of property `assigned_stores` in response with status code 200
	- [Changed] Path From `/service/platform/logistics/v1.0/company/{company_id}/optimal-locations` To `/service/platform/logistics/v1.0/company/{company_id}/reassign`


#### getApplicationServiceability

- ##### What's New
	- [Added] method `getApplicationServiceability`



#### updateApplicationServiceability

- ##### What's New
	- [Added] method `updateApplicationServiceability`



#### getEntityRegionView

- ##### What's New
	- [Added] method `getEntityRegionView`



#### getListView

- ##### What's New
	- [Added] method `getListView`



#### getCompanyStoreView

- ##### What's New
	- [Added] method `getCompanyStoreView`



#### updateZoneControllerView

- ##### What's New
	- [Added] method `updateZoneControllerView`



#### getZoneDataView

- ##### What's New
	- [Added] method `getZoneDataView`



#### getZoneFromPincodeView

- ##### What's New
	- [Added] method `getZoneFromPincodeView`



#### getZonesFromApplicationIdView

- ##### What's New
	- [Added] method `getZonesFromApplicationIdView`



#### getZoneListView

- ##### What's New
	- [Added] method `getZoneListView`



#### getStore

- ##### What's New
	- [Added] method `getStore`



#### addAppDp

- ##### What's New
	- [Added] method `addAppDp`



#### deleteAppDp

- ##### What's New
	- [Added] method `deleteAppDp`



#### upsertDpAccount

- ##### What's New
	- [Added] method `upsertDpAccount`



#### getDpAccount

- ##### What's New
	- [Added] method `getDpAccount`



#### updateDpRule

- ##### What's New
	- [Added] method `updateDpRule`



#### getDpRules

- ##### What's New
	- [Added] method `getDpRules`



#### upsertDpRules

- ##### What's New
	- [Added] method `upsertDpRules`



#### getDpRuleInsert

- ##### What's New
	- [Added] method `getDpRuleInsert`



#### upsertDpCompanyRules

- ##### What's New
	- [Added] method `upsertDpCompanyRules`



#### getDpCompanyRules

- ##### What's New
	- [Added] method `getDpCompanyRules`



#### upsertDpApplicationRules

- ##### What's New
	- [Added] method `upsertDpApplicationRules`



#### getDpApplicationRules

- ##### What's New
	- [Added] method `getDpApplicationRules`



### Share



#### createShortLink

- ##### What's New
	- [Added] property `url.short` of schema `UrlInfo` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `url.shortUrl` of schema `UrlInfo` in response with status code 200


#### getShortLinks

- ##### What's New
	- [Breaking] [Deleted] `query` parameter `shortUrl` (type: `string`)

- [Added] `query` parameter `q` (type: `string`)
	- [Added] property `items[].url.short` of schema `UrlInfo` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `originalUrl` (type: `string`)

	- [Breaking] [Deleted] `query` parameter `title` (type: `string`)

	- [Breaking] [Deleted] property `items[].url.shortUrl` of schema `UrlInfo` in response with status code 200


#### getShortLinkByHash

- ##### What's New
	- [Added] property `url.short` of schema `UrlInfo` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `url.shortUrl` of schema `UrlInfo` in response with status code 200


#### updateShortLinkById

- ##### What's New
	- [Added] property `url.short` of schema `UrlInfo` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `url.shortUrl` of schema `UrlInfo` in response with status code 200


### Theme



#### getAllPages

- ##### What's Deprecated
	- [Breaking] [Deleted] property `pages[].sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].source` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.metaTags` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].createdAt` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `pages[].updatedAt` of schema `AvailablePageSchema` in response with status code 200


#### createPage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sections[].predicate.schedule` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `sections[].predicate.platform` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `sections[].predicate.zones` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `sections[].source` of schema `AvailablePageSchemaSections` in request body
	- [Breaking] [Deleted] property `seo.sitemap` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `seo.metaTags` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `createdAt` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `updatedAt` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].source` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Breaking] [Deleted] property `seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `AvailablePageSchema` in response with status code 200


#### updateMultiplePages

- ##### What's Deprecated
	- [Breaking] [Deleted] property `pages[].sections[].predicate.schedule` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `pages[].sections[].predicate.platform` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `pages[].sections[].predicate.zones` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `pages[].sections[].source` of schema `AvailablePageSchemaSections` in request body
	- [Breaking] [Deleted] property `pages[].seo.sitemap` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `pages[].seo.breadcrumb` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `pages[].seo.metaTags` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `pages[].createdAt` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `pages[].updatedAt` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `pages[].sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `pages[].sections[].source` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].seo.metaTags` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `pages[].createdAt` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `pages[].updatedAt` of schema `AvailablePageSchema` in response with status code 200


#### getPage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].source` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Breaking] [Deleted] property `seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `AvailablePageSchema` in response with status code 200


#### updatePage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sections[].predicate.schedule` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `sections[].predicate.platform` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `sections[].predicate.zones` of schema `AvailablePagePredicate` in request body
	- [Breaking] [Deleted] property `sections[].source` of schema `AvailablePageSchemaSections` in request body
	- [Breaking] [Deleted] property `seo.sitemap` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `seo.metaTags` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `createdAt` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `updatedAt` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].source` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Breaking] [Deleted] property `seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `AvailablePageSchema` in response with status code 200


#### deletePage

- ##### What's Deprecated
	- [Breaking] [Deleted] property `sections[].predicate.schedule` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.platform` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].predicate.zones` of schema `AvailablePagePredicate` in response with status code 200
	- [Breaking] [Deleted] property `sections[].source` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Breaking] [Deleted] property `seo.sitemap` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.breadcrumb` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `seo.metaTags` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `AvailablePageSchema` in response with status code 200


#### getCompanyLevelThemes

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `searchText` (type: `string`)

	- [Breaking] [Deleted] property `[].marketplaceThemeId.release` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `[].marketplaceThemeId.createdAt` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `[].marketplaceThemeId.updatedAt` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `[].appliedThemes` of schema `CompanyThemeSchema` in response with status code 200


#### getCompanyLevelPrivateThemes

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getCompanyLevelPrivateThemes`



#### addMarketplaceThemeToCompany

- ##### What's Deprecated
	- [Breaking] [Deleted] property `marketplaceThemeId.release` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `marketplaceThemeId.createdAt` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `marketplaceThemeId.updatedAt` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `appliedThemes` of schema `CompanyThemeSchema` in response with status code 200


#### deleteCompanyTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] property `marketplaceThemeId.release` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `marketplaceThemeId.createdAt` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `marketplaceThemeId.updatedAt` of schema `MarketplaceThemeId` in response with status code 200
	- [Breaking] [Deleted] property `appliedThemes` of schema `CompanyThemeSchema` in response with status code 200


#### getApplicationThemes

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `[].config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `[].config.list[].page[].page`, `[].config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `[].config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `[].assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `[].assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `[].src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `[].themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `[].companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `[].config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### getThemeById

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### updateTheme

- ##### What's New
	- [Breaking] [Added] properties  in request body
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in request body
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in request body
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in request body
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in request body
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### deleteTheme

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### addThemeToApplication

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### updateThemeName

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### applyTheme

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### duplicateTheme

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### getAppliedTheme

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### getThemeForPreview

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### upgradeTheme

- ##### What's New
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `ThemeConfiguration` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `config.list[].page[].page`, `config.list[].page[].settings` in response with status code 200
	- [Breaking] [Deleted] property `config.globalSchema.props[].value` of schema `Prop` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `CSS` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UMDJs` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `themeType` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `companyId` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ThemeConfigListPage` in response with status code 200


#### getThemeLibrary

- ##### What's New
	- [Added] method `getThemeLibrary`



#### addToThemeLibrary

- ##### What's New
	- [Added] method `addToThemeLibrary`



#### getPublicThemes

- ##### What's New
	- [Added] method `getPublicThemes`



#### publishTheme

- ##### What's New
	- [Added] method `publishTheme`



#### unpublishTheme

- ##### What's New
	- [Added] method `unpublishTheme`



#### archiveTheme

- ##### What's New
	- [Added] method `archiveTheme`



#### unarchiveTheme

- ##### What's New
	- [Added] method `unarchiveTheme`



### User



#### getCustomers

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].archive` of schema `UserSearchSchema` in response with status code 200
	- [Breaking] [Deleted] property `items[].status` of schema `UserSearchSchema` in response with status code 200
	- [Breaking] [Deleted] property `items[].rrId` of schema `UserSearchSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### searchUsers

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `users[].archive` of schema `UserSearchSchema` in response with status code 200
	- [Breaking] [Deleted] property `users[].status` of schema `UserSearchSchema` in response with status code 200
	- [Breaking] [Deleted] property `users[].rrId` of schema `UserSearchSchema` in response with status code 200


#### createUser

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `rrId` of schema `CreateUserRequestSchema` in request body
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### blockOrUnblockUsers

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### unDeleteUser

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### updateUser

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `rrId` of schema `UpdateUserRequestSchema` in request body
	- [Breaking] [Deleted] property `user.rrId` of schema `UserSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### createUserSession

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### deleteSession

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### getActiveSessions

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].location` of schema `SessionListResponseInfo` in response with status code 200
	- [Breaking] [Deleted] Response with status 400


#### deleteActiveSessions

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### archiveUser

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400


#### getPlatformConfig

- ##### What's New
	- [Added] property `deleteAccountConsent[]` of schema `PlatformSchema` in response with status code 200
	- [Added] property `sessionConfig[]` of schema `PlatformSchema` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `socialTokens.facebook.appSecret` of schema `Facebook` in response with status code 200
	- [Breaking] [Deleted] property `socialTokens.google.appSecret` of schema `Google` in response with status code 200
	- [Breaking] [Deleted] property `socialTokens.accountKit.appSecret` of schema `Accountkit` in response with status code 200
	- [Deleted] properties `deleteAccountConsent.consentText` in response with status code 200
	- [Deleted] properties `sessionConfig.duration`, `sessionConfig.type`, `sessionConfig.isRolling` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `PlatformSchema` in response with status code 200


#### updatePlatformConfig

- ##### What's New
	- [Added] property `deleteAccountConsent[]` of schema `PlatformSchema` in request body
	- [Added] property `sessionConfig[]` of schema `PlatformSchema` in request body
	- [Added] property `deleteAccountConsent[]` of schema `PlatformSchema` in response with status code 200
	- [Added] property `sessionConfig[]` of schema `PlatformSchema` in response with status code 200
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `socialTokens.facebook.appSecret` of schema `Facebook` in request body
	- [Breaking] [Deleted] property `socialTokens.google.appSecret` of schema `Google` in request body
	- [Breaking] [Deleted] property `socialTokens.accountKit.appSecret` of schema `Accountkit` in request body
	- [Deleted] properties `deleteAccountConsent.consentText` in request body
	- [Deleted] properties `sessionConfig.duration`, `sessionConfig.type`, `sessionConfig.isRolling` in request body
	- [Breaking] [Deleted] property `v` of schema `PlatformSchema` in request body
	- [Breaking] [Deleted] property `socialTokens.facebook.appSecret` of schema `Facebook` in response with status code 200
	- [Breaking] [Deleted] property `socialTokens.google.appSecret` of schema `Google` in response with status code 200
	- [Breaking] [Deleted] property `socialTokens.accountKit.appSecret` of schema `Accountkit` in response with status code 200
	- [Deleted] properties `deleteAccountConsent.consentText` in response with status code 200
	- [Deleted] properties `sessionConfig.duration`, `sessionConfig.type`, `sessionConfig.isRolling` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `PlatformSchema` in response with status code 200


#### createUserGroup

- ##### What's New
	- [Breaking] [Added] Required status to property `file_url` in request body
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `conditions` of schema `CreateUserGroup` in request body
	- [Breaking] [Deleted] property `type` of schema `CreateUserGroup` in request body
	- [Breaking] [Deleted] property `conditions` of schema `UserGroupResponseSchema` in response with status code 201
	- [Breaking] [Deleted] property `error` of schema `UserGroupResponseSchema` in response with status code 201
	- [Breaking] [Deleted] property `type` of schema `UserGroupResponseSchema` in response with status code 201
	- [Breaking] [Deleted] property `isActive` of schema `UserGroupResponseSchema` in response with status code 201


#### getUserGroups

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `type` (type: `string`)

	- [Breaking] [Deleted] property `items[].conditions` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `items[].error` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `items[].type` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `items[].isActive` of schema `UserGroupResponseSchema` in response with status code 200


#### updateUserGroup

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `conditions` of schema `UpdateUserGroupSchema` in request body
	- [Breaking] [Deleted] property `type` of schema `UpdateUserGroupSchema` in request body
	- [Breaking] [Deleted] property `conditions` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `isActive` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 404


#### getUserGroupById

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `conditions` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `isActive` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 404


#### updateUserGroupPartially

- ##### What's New
	- [Added] Response with status 4XX
	- [Added] Response with status 5XX

- ##### What's Deprecated
	- [Breaking] [Deleted] property `conditions` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `error` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `isActive` of schema `UserGroupResponseSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 404


#### createUserAttributeDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createUserAttributeDefinition`



#### getUserAttributeDefinitions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getUserAttributeDefinitions`



#### updateUserAttributeDefinition

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateUserAttributeDefinition`



#### deleteUserAttributeDefinitionById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteUserAttributeDefinitionById`



#### getUserAttributeDefinitionById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getUserAttributeDefinitionById`



#### updateUserAttribute

- ##### What's Deprecated
	- [Breaking] [Deleted] method `updateUserAttribute`



#### getUserAttribute

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getUserAttribute`



#### deleteUserAttribute

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteUserAttribute`



#### getUserAttributesForUser

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getUserAttributesForUser`



#### getUserAttributeById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getUserAttributeById`



### Webhook



#### manualRetryOfFailedEvent

- ##### What's New
	- [Breaking] [Added] Value format `date-time` to property `endDate` of schema `EventProcessRequest` in request body
	- [Breaking] [Added] Value format `date-time` to property `startDate` of schema `EventProcessRequest` in request body
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] property `status` of schema `RetryEventRequest` in request body

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `` of schema `RetrySuccessResponse` in response with status code 200


#### getEventCounts

- ##### What's New
	- [Breaking] [Added] Value format `date-time` to property `endDate` of schema `EventProcessRequest` in request body
	- [Breaking] [Added] Value format `date-time` to property `startDate` of schema `EventProcessRequest` in request body
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] property `status` of schema `RetryEventRequest` in request body


#### getManualRetryStatus

- ##### What's New
	- [Added] Response with status 400


#### manualRetryCancel

- ##### What's New
	- [Breaking] [Added] properties `success`, `message` in response with status code 200
	- [Added] Response with status 400


#### downloadDeliveryReport

- ##### What's New
	- [Breaking] [Added] Value format `date-time` to property `endDate` of schema `EventProcessRequest` in request body
	- [Breaking] [Added] Value format `date-time` to property `startDate` of schema `EventProcessRequest` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property `status` of schema `EventProcessRequest` in request body


#### getReportFilters

- ##### What's New
	- [Breaking] [Added] properties `items` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `array` from property `` of schema `` in response with status code 200
	- [Breaking] [Deleted] property `[]` of schema `` in response with status code 200


#### getHistoricalReports

- ##### What's New
	- [Breaking] [Added] Value format `int32` to property `items[].association.companyId` of schema `AssociationDetails` in response with status code 200
	- [Breaking] [Added] Value format `date-time` to property `items[].filters.endDate` of schema `HistoryFilters` in response with status code 200
	- [Breaking] [Added] Value format `date-time` to property `items[].filters.startDate` of schema `HistoryFilters` in response with status code 200
	- [Breaking] [Added] Value format `date-time` to property `items[].createdOn` of schema `HistoryResponseObject` in response with status code 200
	- [Breaking] [Added] Value format `date-time` to property `items[].updatedOn` of schema `HistoryResponseObject` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `items[].association` of schema `HistoryAssociation` in response with status code 200
	- [Breaking] [Deleted] property `items[].association.subscriberIds` of schema `HistoryAssociation` in response with status code 200
	- [Breaking] [Deleted] property `items[].filters.events` of schema `HistoryFilters` in response with status code 200
	- [Breaking] [Deleted] property `items[].filters.searchText` of schema `HistoryFilters` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].uploadServiceResponse` of schema `UploadServiceObject` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].updatedOn` of schema `HistoryItems` in response with status code 200
	- [Breaking] [Deleted] property `page` of schema `HistoryResponse` in response with status code 200


#### cancelJobByName

- ##### What's New
	- [Added] property `code` of schema `CancelResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `message` of schema `CancelResponse` in response with status code 200


#### getDeliveryReports

- ##### What's New
	- [Breaking] [Added] Value format `date-time` to property `endDate` of schema `EventProcessRequest` in request body
	- [Breaking] [Added] Value format `date-time` to property `startDate` of schema `EventProcessRequest` in request body
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] property `status` of schema `EventProcessRequest` in request body
	- [Breaking] [Deleted] property `rows[].messageId` of schema `EventProcessReportObject` in response with status code 200
	- [Breaking] [Deleted] property `rows[].eventTraceId` of schema `EventProcessReportObject` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `number` to `integer` of property `rows[].lastAttemptedOn` of schema `EventProcessReportObject` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.itemTotal` of schema `Page` in response with status code 200


#### fetchAllEventConfigurations

- ##### What's New
	- [Breaking] [Added] Value format `int32` to property `eventConfigs[].id` of schema `EventConfig` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `` of schema `EventConfigResponse` in response with status code 200
	- [Deleted] Type from `object` from property `eventConfigs[]` of schema `EventConfig` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `eventConfigs[].description` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].subscriberEventMapping` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].eventSchema` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].updatedOn` of schema `EventConfig` in response with status code 200


#### registerSubscriberToEvent

- ##### What's New
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in request body
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in request body
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in request body
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `SubscriberConfigResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedBy` of schema `SubscriberConfigResponse` in response with status code 200
	- [Breaking] [Deleted] property `updatedOn` of schema `SubscriberConfigResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdOn` of schema `SubscriberConfigResponse` in response with status code 200

- ##### What's Changed
	- [Changed] Path From `/service/platform/webhook/v1.0/company/{company_id}/subscriber/` To `/service/platform/webhook/v1.0/company/{company_id}/subscriber`


#### getSubscribersByCompany

- ##### What's New
	- [Added] property `id` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `name` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `association` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `status` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `webhookUrl` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `customHeaders` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `emailId` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `authMeta` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `createdOn` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `updatedOn` of schema `SubscriberResponse` in response with status code 200
	- [Added] property `eventConfigs` of schema `SubscriberResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items` of schema `SubscriberConfigList` in response with status code 200
	- [Breaking] [Deleted] property `page` of schema `SubscriberConfigList` in response with status code 200

- ##### What's Changed
	- [Changed] Required status of path parameter `company_id`
	- [Breaking] [Changed] Required status of query parameter `extension_id`
	- [Changed] Path From `/service/platform/webhook/v1.0/company/{company_id}/subscriber/` To `/service/platform/webhook/v1.0/company/{company_id}/subscriber`


#### updateSubscriberConfig

- ##### What's New
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in request body
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in request body
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in request body
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `SubscriberConfigResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedBy` of schema `SubscriberConfigResponse` in response with status code 200
	- [Breaking] [Deleted] property `updatedOn` of schema `SubscriberConfigResponse` in response with status code 200
	- [Breaking] [Deleted] property `createdOn` of schema `SubscriberConfigResponse` in response with status code 200

- ##### What's Changed
	- [Changed] Path From `/service/platform/webhook/v1.0/company/{company_id}/subscriber/` To `/service/platform/webhook/v1.0/company/{company_id}/subscriber`


#### getSubscriberById

- ##### What's New
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Added] Value format `int32` to property `eventConfigs[].id` of schema `EventConfig` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] property `modifiedBy` of schema `SubscriberResponse` in response with status code 200
	- [Deleted] Type from `object` from property `eventConfigs[]` of schema `EventConfig` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `eventConfigs[].description` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].subscriberEventMapping` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].eventSchema` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].updatedOn` of schema `EventConfig` in response with status code 200


#### getSubscribersByExtensionId

- ##### What's New
	- [Added] Possible values to property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Added] Possible values to property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Added] Value format `int32` to property `items[].eventConfigs[].id` of schema `EventConfig` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from `active` from property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `inactive` from property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from `blocked` from property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] property `items[].type` of schema `SubscriberResponse` in response with status code 200
	- [Breaking] [Deleted] property `items[].modifiedBy` of schema `SubscriberResponse` in response with status code 200
	- [Deleted] Type from `object` from property `items[].eventConfigs[]` of schema `EventConfig` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `items[].eventConfigs[].description` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `items[].eventConfigs[].subscriberEventMapping` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `items[].eventConfigs[].eventSchema` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `items[].eventConfigs[].updatedOn` of schema `EventConfig` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.itemTotal` of schema `Page` in response with status code 200
	- [Changed] Path From `/service/platform/webhook/v1.0/company/{company_id}/extension/{extension_id}/subscriber/` To `/service/platform/webhook/v1.0/company/{company_id}/extension/{extension_id}/subscriber`


## Public Client

- [Breaking] [Removed] Billing class from public client
- [Breaking] [Removed] Content class from public client


### Webhook



#### fetchAllWebhookEvents

- ##### What's New
	- [Breaking] [Added] Value format `int32` to property `eventConfigs[].id` of schema `EventConfig` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `eventConfigs[]` of schema `EventConfig` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `eventConfigs[].description` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].eventSchema` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].updatedOn` of schema `EventConfig` in response with status code 200


#### queryWebhookEventDetails

- ##### What's New
	- [Breaking] [Added] Value format `int32` to property `eventConfigs[].id` of schema `EventConfig` in response with status code 200

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `eventConfigs[]` of schema `EventConfig` in response with status code 200
	- [Deleted] Possible nullable value from `true` from property `eventConfigs[].description` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].eventSchema` of schema `EventConfig` in response with status code 200
	- [Breaking] [Deleted] property `eventConfigs[].updatedOn` of schema `EventConfig` in response with status code 200


#### notifyDepricatedEvent

- ##### What's Deprecated
	- [Breaking] [Deleted] method `notifyDepricatedEvent`



#### testHandlerTransformation

- ##### What's Deprecated
	- [Breaking] [Deleted] method `testHandlerTransformation`



#### validateSchema

- ##### What's Deprecated
	- [Breaking] [Deleted] method `validateSchema`









# CHANGE LOG (1.4.3) - fp-v1.9.2

## Application Client



### Cart



#### getCart

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 200


#### addItems

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>cart.lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 200


#### updateCart

- ##### What's New
	- [Added] <code>query</code> parameter <code>cartType</code> (type: <code>string</code>)


- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>cart.lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 200


#### applyCoupon

- ##### What's New
	- [Added] <code>query</code> parameter <code>cartType</code> (type: <code>string</code>)


- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 201


#### removeCoupon

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 200


#### applyRewardPoints

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 200


#### selectAddress

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 201


#### selectPaymentMode

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>lastModified</code> of schema <code>CartDetailResponse</code> in response with status code 200


#### validateCouponForPayment

- ##### What's New
	- [Added] <code>query</code> parameter <code>cartType</code> (type: <code>string</code>)



#### getShipments

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>lastModified</code> of schema <code>CartShipmentsResponse</code> in response with status code 200


#### checkoutCart

- ##### What's New
	- [Added] <code>query</code> parameter <code>cartType</code> (type: <code>string</code>)

	- [Added] property <code>iin</code> of schema <code>CartCheckoutDetailRequest</code> in request body
	- [Added] property <code>network</code> of schema <code>CartCheckoutDetailRequest</code> in request body
	- [Added] property <code>type</code> of schema <code>CartCheckoutDetailRequest</code> in request body
	- [Added] property <code>cardId</code> of schema <code>CartCheckoutDetailRequest</code> in request body

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>cart.lastModified</code> of schema <code>CheckCart</code> in response with status code 200


#### getCartSharedItems

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>cart.lastModified</code> of schema <code>SharedCart</code> in response with status code 200
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>cart.lastModified</code> of schema <code>SharedCart</code> in response with status code 404


#### updateCartWithSharedItems

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>cart.lastModified</code> of schema <code>SharedCart</code> in response with status code 200


#### getPromotionOffers

- ##### What's New
	- [Added] <code>query</code> parameter <code>cartType</code> (type: <code>string</code>)



#### checkoutCartV2

- ##### What's New
	- [Added] <code>query</code> parameter <code>cartType</code> (type: <code>string</code>)

	- [Added] property <code>iin</code> of schema <code>CartCheckoutDetailV2Request</code> in request body
	- [Added] property <code>network</code> of schema <code>CartCheckoutDetailV2Request</code> in request body
	- [Added] property <code>type</code> of schema <code>CartCheckoutDetailV2Request</code> in request body
	- [Added] property <code>cardId</code> of schema <code>CartCheckoutDetailV2Request</code> in request body

- ##### What's Changed
	- [Breaking] [Changed] Value format from <code>date</code> to <code>date-time</code> of property <code>cart.lastModified</code> of schema <code>CheckCart</code> in response with status code 200


### Catalog



#### getProductStockForTimeByIds

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getProducts

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getBrands

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getHomeProducts

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getCollections

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getCollectionItemsBySlug

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getFollowedListing

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getStores

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getInStockLocations

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


#### getProductSellersBySlug

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200


### Content



#### getBlog

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getBlogs

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getLandingPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.popup.type</code> in response with status code 200


#### getNavigations

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].navigation[].action.popup.type</code> in response with status code 200


#### getSlideshows

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].media[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].media[].action.popup.type</code> in response with status code 200


#### getSlideshow

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.popup.type</code> in response with status code 200


#### getPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getPages

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


### Lead



#### getTicket

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### createHistory

- ##### What's New
	- [Added] Possible values <code>rating</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>log</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>comment</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>thread</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body


#### createTicket

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>medium</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>high</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>urgent</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### getCustomForm

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### submitCustomForm

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>video</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>file</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>youtube</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>product</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>collection</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>brand</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>shipment</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>order</code> to property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>image</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>ticket.source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>ticket.source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>ticket.priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### getParticipantsInsideVideoRoom

- ##### What's New
	- [Added] property <code>participants[].user.meta</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.dob</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.applicationId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.userId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.rrId</code> of schema <code>UserSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>participants[].user.uid</code> of schema <code>UserSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>participants[].user.debug</code> of schema <code>UserSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>participants[].user.hasOldPasswordHash</code> of schema <code>UserSchema</code> in response with status code 200


### Logistic



#### getLocations

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200


#### getCountries

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200


#### getLocalities

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200


### Order



#### getOrders

- ##### What's New
	- [Added] <code>query</code> parameter <code>allowInactive</code> (type: <code>boolean</code>)

	- [Added] property <code>items[].shipments[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].shipments[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].shipments[].bags[].financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>items[].shipments[].bags[].article</code> of schema <code>Bags</code> in response with status code 200
	- [Added] property <code>items[].shipments[].order</code> of schema <code>Shipments</code> in response with status code 200
	- [Added] property <code>items[].shipments[].paymentInfo</code> of schema <code>Shipments</code> in response with status code 200


#### getOrderById

- ##### What's New
	- [Added] property <code>order.shipments[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>order.shipments[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>order.shipments[].bags[].financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>order.shipments[].bags[].article</code> of schema <code>Bags</code> in response with status code 200
	- [Added] property <code>order.shipments[].order</code> of schema <code>Shipments</code> in response with status code 200
	- [Added] property <code>order.shipments[].paymentInfo</code> of schema <code>Shipments</code> in response with status code 200


#### getPosOrderById

- ##### What's New
	- [Added] property <code>order.shipments[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>order.shipments[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>order.shipments[].bags[].financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>order.shipments[].bags[].article</code> of schema <code>Bags</code> in response with status code 200
	- [Added] property <code>order.shipments[].order</code> of schema <code>Shipments</code> in response with status code 200
	- [Added] property <code>order.shipments[].paymentInfo</code> of schema <code>Shipments</code> in response with status code 200


#### getShipmentById

- ##### What's New
	- [Added] property <code>shipment.prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>shipment.bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>shipment.bags[].financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>shipment.bags[].article</code> of schema <code>Bags</code> in response with status code 200
	- [Added] property <code>shipment.order</code> of schema <code>Shipments</code> in response with status code 200
	- [Added] property <code>shipment.paymentInfo</code> of schema <code>Shipments</code> in response with status code 200


### Payment



#### getPaymentModeRoutes

- ##### What's New
	- [Added] property <code>paymentOptions.paymentOption[]</code> of schema <code>PaymentOptionAndFlow</code> in response with status code 200
	- [Added] property <code>paymentOptions.paymentDefaultSelection</code> of schema <code>PaymentOptionAndFlow</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties <code>paymentOptions.paymentOption.list</code>, <code>paymentOptions.paymentOption.name</code>, <code>paymentOptions.paymentOption.isPayByCardPl</code>, <code>paymentOptions.paymentOption.addCardEnabled</code>, <code>paymentOptions.paymentOption.displayPriority</code>, <code>paymentOptions.paymentOption.displayName</code>, <code>paymentOptions.paymentOption.saveCard</code>, <code>paymentOptions.paymentOption.aggregatorName</code>, <code>paymentOptions.paymentOption.anonymousEnable</code> in response with status code 200
	- [Deleted] Required status from properties <code>paymentOptions.paymentOption.display_name</code>, <code>paymentOptions.paymentOption.display_priority</code>, <code>paymentOptions.paymentOption.name</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>object</code> to <code>array</code> of property <code>paymentOptions.paymentOption</code> of schema <code>RootPaymentMode</code> in response with status code 200


#### getPosPaymentModeRoutes

- ##### What's New
	- [Added] property <code>paymentOptions.paymentOption[]</code> of schema <code>PaymentOptionAndFlow</code> in response with status code 200
	- [Added] property <code>paymentOptions.paymentDefaultSelection</code> of schema <code>PaymentOptionAndFlow</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties <code>paymentOptions.paymentOption.list</code>, <code>paymentOptions.paymentOption.name</code>, <code>paymentOptions.paymentOption.isPayByCardPl</code>, <code>paymentOptions.paymentOption.addCardEnabled</code>, <code>paymentOptions.paymentOption.displayPriority</code>, <code>paymentOptions.paymentOption.displayName</code>, <code>paymentOptions.paymentOption.saveCard</code>, <code>paymentOptions.paymentOption.aggregatorName</code>, <code>paymentOptions.paymentOption.anonymousEnable</code> in response with status code 200
	- [Deleted] Required status from properties <code>paymentOptions.paymentOption.display_name</code>, <code>paymentOptions.paymentOption.display_priority</code>, <code>paymentOptions.paymentOption.name</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>object</code> to <code>array</code> of property <code>paymentOptions.paymentOption</code> of schema <code>RootPaymentMode</code> in response with status code 200


#### walletLinkInitate

- ##### What's Changed
	- [Breaking] [Changed] operationId from <code>walletLinkInitate</code> to <code>walletLinkInitiate</code>


#### validateVPA

- ##### What's New
	- [Added] property <code>aggregator</code> of schema <code>ValidateVPARequest</code> in request body


#### getPaymentModeRoutesPaymentLink

- ##### What's New
	- [Added] property <code>paymentOptions.paymentOption[]</code> of schema <code>PaymentOptionAndFlow</code> in response with status code 200
	- [Added] property <code>paymentOptions.paymentDefaultSelection</code> of schema <code>PaymentOptionAndFlow</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties <code>paymentOptions.paymentOption.list</code>, <code>paymentOptions.paymentOption.name</code>, <code>paymentOptions.paymentOption.isPayByCardPl</code>, <code>paymentOptions.paymentOption.addCardEnabled</code>, <code>paymentOptions.paymentOption.displayPriority</code>, <code>paymentOptions.paymentOption.displayName</code>, <code>paymentOptions.paymentOption.saveCard</code>, <code>paymentOptions.paymentOption.aggregatorName</code>, <code>paymentOptions.paymentOption.anonymousEnable</code> in response with status code 200
	- [Deleted] Required status from properties <code>paymentOptions.paymentOption.display_name</code>, <code>paymentOptions.paymentOption.display_priority</code>, <code>paymentOptions.paymentOption.name</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>object</code> to <code>array</code> of property <code>paymentOptions.paymentOption</code> of schema <code>RootPaymentMode</code> in response with status code 200


#### createPaymentOrder

- ##### What's Deprecated
	- [Deleted] Required status from property <code>success</code> in response with status code 200


### Rewards



#### getUserPointsHistory

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200


### Share



#### createShortLink

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getShortLinkByHash

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getOriginalShortLinkByHash

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


### Theme



#### getAllPages

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


### User



#### loginWithFacebook

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 401

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### loginWithGoogle

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### loginWithGoogleAndroid

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### loginWithGoogleIOS

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### loginWithAppleIOS

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### loginWithOTP

- ##### What's New
	- [Added] property <code>encryptOtp</code> of schema <code>SendOtpRequestSchema</code> in request body
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### loginWithEmailAndPassword

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendResetPasswordEmail

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendResetPasswordMobile

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### forgotPassword

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### resetForgotPassword

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendResetToken

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### loginWithToken

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>code</code> of schema <code>APIError</code> in response with status code 400
	- [Added] property <code>info</code> of schema <code>APIError</code> in response with status code 400
	- [Added] property <code>error</code> of schema <code>APIError</code> in response with status code 400
	- [Added] property <code>meta</code> of schema <code>APIError</code> in response with status code 400
	- [Added] property <code>authenticated</code> of schema <code>APIError</code> in response with status code 400
	- [Added] property <code>requestId</code> of schema <code>APIError</code> in response with status code 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### registerWithForm

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### verifyEmail

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### verifyMobile

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### hasPassword

- ##### What's New
	- [Added] Response with status 401

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>boolean</code> to <code>integer</code> of property <code>result</code> of schema <code>HasPasswordSuccess</code> in response with status code 200


#### updatePassword

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 500
	- [Breaking] [Deleted] Response with status 4XX


#### deleteUser

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 500
	- [Breaking] [Deleted] Response with status 4XX


#### logout

- ##### What's New
	- [Added] Response with status 401

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendOTPOnMobile

- ##### What's New
	- [Added] property <code>encryptOtp</code> of schema <code>SendMobileOtpRequestSchema</code> in request body
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendForgotOTPOnMobile

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### verifyMobileOTP

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### verifyMobileForgotOTP

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendOTPOnEmail

- ##### What's New
	- [Added] property <code>resendEmailToken</code> of schema <code>EmailOtpSuccess</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendForgotOTPOnEmail

- ##### What's New
	- [Added] property <code>resendEmailToken</code> of schema <code>EmailOtpSuccess</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### verifyEmailOTP

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### verifyEmailForgotOTP

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getLoggedInUser

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 401

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getListOfActiveSessions

- ##### What's New
	- [Added] Response with status 401

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getPlatformConfig

- ##### What's New
	- [Added] property <code>socialTokens.accountkit</code> of schema <code>SocialTokens</code> in response with status code 200
	- [Breaking] [Added] properties <code>deleteAccountConsent.consentText</code> in response with status code 200
	- [Breaking] [Added] properties <code>sessionConfig.duration</code>, <code>sessionConfig.type</code>, <code>sessionConfig.isRolling</code> in response with status code 200
	- [Added] property <code>v</code> of schema <code>PlatformSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>socialTokens.accountKit</code> of schema <code>SocialTokens</code> in response with status code 200
	- [Breaking] [Deleted] property <code>deleteAccountConsent[]</code> of schema <code>PlatformSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>sessionConfig[]</code> of schema <code>PlatformSchema</code> in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updateProfile

- ##### What's New
	- [Added] property <code>encryptOtp</code> of schema <code>EditProfileRequestSchema</code> in request body
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### addMobileNumber

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### deleteMobileNumber

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### setMobileNumberAsPrimary

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendVerificationLinkToMobile

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### addEmail

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### deleteEmail

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### setEmailAsPrimary

- ##### What's New
	- [Added] property <code>user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### sendVerificationLinkToEmail

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### userExists

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getUserAttributes

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updateUserAttributes

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


## Platform Client



### Cart



#### getCoupons

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.page</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.lastId</code> of schema <code>Page</code> in response with status code 200


#### createCoupon

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### getCouponById

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 404


#### updateCoupon

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 404


#### updateCouponPartially

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 404


#### getPromotions

- ##### What's New
	- [Added] property <code>items[].tags</code> of schema <code>PromotionListItem</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.page</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.lastId</code> of schema <code>Page</code> in response with status code 200


#### createPromotion

- ##### What's New
	- [Added] property <code>tags</code> of schema <code>PromotionAdd</code> in request body
	- [Added] property <code>tags</code> of schema <code>PromotionAdd</code> in response with status code 201
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### getPromotionById

- ##### What's New
	- [Added] property <code>tags</code> of schema <code>PromotionUpdate</code> in response with status code 200
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 404


#### updatePromotion

- ##### What's New
	- [Added] property <code>tags</code> of schema <code>PromotionUpdate</code> in request body
	- [Added] property <code>tags</code> of schema <code>PromotionUpdate</code> in response with status code 200
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 404


#### updatePromotionPartially

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 404


#### updateCartMetaConfig

- ##### What's New
	- [Added] property <code>maxCartValue</code> of schema <code>CartMetaConfigUpdate</code> in request body
	- [Added] property <code>maxCartValue</code> of schema <code>CartMetaConfigUpdate</code> in response with status code 200
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### fetchCartMetaConfig

- ##### What's New
	- [Added] property <code>maxCartValue</code> of schema <code>CartMetaConfigAdd</code> in response with status code 200
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### createCartMetaConfig

- ##### What's New
	- [Added] property <code>maxCartValue</code> of schema <code>CartMetaConfigAdd</code> in request body
	- [Added] property <code>maxCartValue</code> of schema <code>CartMetaConfigAdd</code> in response with status code 201
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### updatePriceAdjustment

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### removePriceAdjustment

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### addPriceAdjustment

- ##### What's New
	- [Added] property <code>error</code> of schema <code>OperationErrorResponse</code> in response with status code 400


#### getAbandonedCart

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.page</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.lastId</code> of schema <code>Page</code> in response with status code 200


#### platformCheckoutCart

- ##### What's New
	- [Added] property <code>iin</code> of schema <code>PlatformCartCheckoutDetailRequest</code> in request body
	- [Added] property <code>network</code> of schema <code>PlatformCartCheckoutDetailRequest</code> in request body
	- [Added] property <code>type</code> of schema <code>PlatformCartCheckoutDetailRequest</code> in request body
	- [Added] property <code>cardId</code> of schema <code>PlatformCartCheckoutDetailRequest</code> in request body


#### platformCheckoutCartV2

- ##### What's New
	- [Added] property <code>iin</code> of schema <code>PlatformCartCheckoutDetailV2Request</code> in request body
	- [Added] property <code>network</code> of schema <code>PlatformCartCheckoutDetailV2Request</code> in request body
	- [Added] property <code>type</code> of schema <code>PlatformCartCheckoutDetailV2Request</code> in request body
	- [Added] property <code>cardId</code> of schema <code>PlatformCartCheckoutDetailV2Request</code> in request body


### Catalog



#### getApplicationBrandListing

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>items[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].action.page.type</code> in response with status code 200
	- [Added] property <code>items[].action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getApplicationBrands

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>items[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].action.page.type</code> in response with status code 200
	- [Added] property <code>items[].action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getCategories

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>data[].items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>data[].items[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>data[].items[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>data[].items[].action.page.type</code> in response with status code 200
	- [Added] property <code>data[].items[].action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>data[].items[].childs[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>data[].items[].childs[].action.page.type</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>data[].items[].childs[].childs[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].childs[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].childs[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>data[].items[].childs[].childs[].action.page.type</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].childs[].action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>data[].items[].childs[].childs[].childs[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].childs[].childs[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].childs[].childs[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>data[].items[].childs[].childs[].childs[].action.page.type</code> in response with status code 200
	- [Added] property <code>data[].items[].childs[].childs[].childs[].action.popup</code> of schema <code>Action</code> in response with status code 200


#### getApplicationCategoryListing

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>items[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].action.page.type</code> in response with status code 200
	- [Added] property <code>items[].action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getAllCollections

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>items[].action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].action.page.type</code> in response with status code 200
	- [Added] property <code>items[].action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### createCollection

- ##### What's New
	- [Breaking] [Added] Required status to property <code>seo.breadcrumbs[].action[].type</code> in request body
	- [Added] property <code>seo.metaTags[].items[].key</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in request body
	- [Added] property <code>seo.metaTags[].items[].value</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in request body
	- [Breaking] [Added] Required status to properties <code>seo.metaTags[].items[].key</code>, <code>seo.metaTags[].items[].value</code> in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].title</code> of schema <code>ApplicationItemSeoMetaTags</code> in request body
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].items</code> of schema <code>ApplicationItemSeoMetaTags</code> in request body


#### updateCollection

- ##### What's New
	- [Breaking] [Added] Required status to property <code>seo.breadcrumbs[].action[].type</code> in request body
	- [Added] property <code>seo.metaTags[].items[].key</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in request body
	- [Added] property <code>seo.metaTags[].items[].value</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in request body
	- [Breaking] [Added] Required status to properties <code>seo.metaTags[].items[].key</code>, <code>seo.metaTags[].items[].value</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumbs[].action[].type</code> in response with status code 200
	- [Added] property <code>seo.metaTags[].items[].key</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in response with status code 200
	- [Added] property <code>seo.metaTags[].items[].value</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in response with status code 200
	- [Breaking] [Added] Required status to properties <code>seo.metaTags[].items[].key</code>, <code>seo.metaTags[].items[].value</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].title</code> of schema <code>ApplicationItemSeoMetaTags</code> in request body
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].items</code> of schema <code>ApplicationItemSeoMetaTags</code> in request body
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].title</code> of schema <code>ApplicationItemSeoMetaTags</code> in response with status code 200
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].items</code> of schema <code>ApplicationItemSeoMetaTags</code> in response with status code 200


#### getCollectionItems

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].brand.action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].brand.action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>items[].brand.action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].brand.action.page.type</code> in response with status code 200
	- [Added] property <code>items[].brand.action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### addCollectionItems

- ##### What's New
	- [Breaking] [Added] Required status to property <code>type</code> in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>itemsNotUpdated</code> of schema <code>UpdatedResponse</code> in response with status code 200


#### getCollectionDetail

- ##### What's New
	- [Breaking] [Added] Required status to property <code>seo.breadcrumbs[].action[].type</code> in response with status code 200
	- [Added] property <code>seo.metaTags[].items[].key</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in response with status code 200
	- [Added] property <code>seo.metaTags[].items[].value</code> of schema <code>ApplicationItemSeoMetaTagItem</code> in response with status code 200
	- [Breaking] [Added] Required status to properties <code>seo.metaTags[].items[].key</code>, <code>seo.metaTags[].items[].value</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].title</code> of schema <code>ApplicationItemSeoMetaTags</code> in response with status code 200
	- [Breaking] [Deleted] property <code>seo.metaTags[].items[].items</code> of schema <code>ApplicationItemSeoMetaTags</code> in response with status code 200


#### getApplicationDepartmentListing

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getAppLocations

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getAppProduct

- ##### What's New
	- [Added] property <code>customJson</code> of schema <code>OwnerAppItemResponse</code> in response with status code 200
	- [Added] property <code>customMeta</code> of schema <code>OwnerAppItemResponse</code> in response with status code 200


#### getAppicationProducts

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].brand.action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].brand.action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>items[].brand.action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].brand.action.page.type</code> in response with status code 200
	- [Added] property <code>items[].brand.action.popup</code> of schema <code>Action</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getDiscountedInventoryBySizeIdentifier

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getProductDetailBySlug

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>brand.action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>brand.action.page.params</code> of schema <code>ActionPage</code> in response with status code 200
	- [Added] property <code>brand.action.page.url</code> of schema <code>ActionPage</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>brand.action.page.type</code> in response with status code 200
	- [Added] property <code>brand.action.popup</code> of schema <code>Action</code> in response with status code 200


#### getAppProducts

- ##### What's New
	- [Added] property <code>items[].storeIdList</code> of schema <code>RawProduct</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getAutocompleteConfig

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getAutocompleteKeywordDetail

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### updateAutocompleteKeyword

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getAllSearchKeyword

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getSearchKeywords

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### listCategories

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### listDepartmentsData

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getDepartmentData

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getInventories

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getInventoryBulkUploadHistory

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getMarketplaceOptinDetail

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getCompanyBrandDetail

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getStoreDetail

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getProductBundle

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getProductAssetsInBulk

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getProductBulkUploadHistory

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### listProductTemplate

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### listProductTemplateCategories

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getInventoryBySizeIdentifier

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getProductSize

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getInventoryBySize

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getVariantsOfProducts

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getConfigurationMetadata

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getProducts

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getMarketplaces

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getApplicationFilterValues

- ##### What's New
	- [Added] method <code>getApplicationFilterValues</code>



#### getApplicationFilterKeys

- ##### What's New
	- [Added] method <code>getApplicationFilterKeys</code>



### Communication



#### createSmsProvider

- ##### What's New
	- [Added] property <code>token</code> of schema <code>SmsProviderReq</code> in request body


#### updateSmsProviderById

- ##### What's New
	- [Added] property <code>token</code> of schema <code>SmsProviderReq</code> in request body


#### verfiyOtp

- ##### What's New
	- [Added] property <code>email</code> of schema <code>VerifyOtpCommsSuccessRes</code> in response with status code 200


### CompanyProfile



#### editBrand

- ##### What's New
	- [Added] property <code>slug</code> of schema <code>CreateUpdateBrandRequestSerializer</code> in request body


#### createBrand

- ##### What's New
	- [Added] property <code>slug</code> of schema <code>CreateUpdateBrandRequestSerializer</code> in request body


#### getBrands

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getLocations

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


### Configuration



#### getApplicationById

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>object</code> to <code>string</code> of property <code>tokens[].createdBy</code> of schema <code>TokenSchema</code> in response with status code 200


### Content



#### createBlog

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getBlogs

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### updateBlog

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### deleteBlog

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getComponentById

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getLandingPages

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].action.popup.type</code> in response with status code 200


#### createLandingPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.popup.type</code> in response with status code 200


#### updateLandingPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.popup.type</code> in response with status code 200


#### deleteLandingPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>action.popup.type</code> in response with status code 200


#### getNavigations

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].navigation[].action.popup.type</code> in response with status code 200
	- [Added] property <code>items[].navigation[].schedule</code> of schema <code>NavigationReference</code> in response with status code 200


#### createNavigation

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>navigation[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>navigation[].action.popup.type</code> in request body
	- [Added] property <code>navigation[].schedule</code> of schema <code>NavigationReference</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.popup.type</code> in response with status code 200
	- [Added] property <code>navigation[].schedule</code> of schema <code>NavigationReference</code> in response with status code 200


#### getDefaultNavigations

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].navigation[].action.popup.type</code> in response with status code 200
	- [Added] property <code>items[].navigation[].schedule</code> of schema <code>NavigationReference</code> in response with status code 200


#### getNavigationBySlug

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.popup.type</code> in response with status code 200
	- [Added] property <code>navigation[].schedule</code> of schema <code>NavigationReference</code> in response with status code 200


#### updateNavigation

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>navigation[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>navigation[].action.popup.type</code> in request body
	- [Added] property <code>navigation[].schedule</code> of schema <code>NavigationReference</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.popup.type</code> in response with status code 200
	- [Added] property <code>navigation[].schedule</code> of schema <code>NavigationReference</code> in response with status code 200


#### deleteNavigation

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>navigation[].action.popup.type</code> in response with status code 200
	- [Added] property <code>navigation[].schedule</code> of schema <code>NavigationReference</code> in response with status code 200


#### getPageMeta

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>systemPages[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>systemPages[].navigation[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>systemPages[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>systemPages[].navigation[].action.popup.type</code> in response with status code 200
	- [Added] property <code>systemPages[].navigation[].schedule</code> of schema <code>NavigationReference</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>customPages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>customPages[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>customPages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>customPages[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### createPagePreview

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### updatePagePreview

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### deletePage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getSlideshows

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].media[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].media[].action.popup.type</code> in response with status code 200


#### createSlideshow

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media.action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>media.action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media.action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>media.action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.popup.type</code> in response with status code 200


#### getSlideshowBySlug

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.popup.type</code> in response with status code 200


#### updateSlideshow

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media.action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>media.action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media.action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>media.action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.popup.type</code> in response with status code 200


#### deleteSlideshow

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>media[].action.popup.type</code> in response with status code 200


#### getBlogBySlug

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### createPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getPages

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>items[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### updatePage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getPageBySlug

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


### FileStorage



#### proxy

- ##### What's New
	- [Breaking] [Added] properties <code>data</code>, <code>support</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from <code>binary</code> from property <code></code> of schema <code></code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code></code> of schema <code></code> in response with status code 200


### Finance



#### generateReport

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.itemCount</code> of schema <code>Page</code> in response with status code 200


#### downloadReport

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.itemCount</code> of schema <code>Page</code> in response with status code 200


#### getData

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.itemCount</code> of schema <code>Page</code> in response with status code 200


#### getReason

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.itemCount</code> of schema <code>Page</code> in response with status code 200


#### getReportList

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.itemCount</code> of schema <code>Page</code> in response with status code 200


#### creditlineDataplatform

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.itemCount</code> of schema <code>Page</code> in response with status code 200


#### invoiceListing

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page.itemCount</code> of schema <code>Page</code> in response with status code 200


#### generateReportCustomerCn

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>data.page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>data.page.size</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>data.page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>data.page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>data.page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>data.page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>data.page.itemCount</code> of schema <code>Page</code> in response with status code 200


### Lead



#### getPlatformTickets

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### createTicket

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>medium</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>high</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>urgent</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### getNewTickets

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>filters.priorities[].key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### getPlatformTicket

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### editPlatformTicket

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>low</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>medium</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>high</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>urgent</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### getNewTicket

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### editNewTicket

- ##### What's New
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Added] Possible values <code>low</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>medium</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>high</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>urgent</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>image</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>video</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>file</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>youtube</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>product</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>collection</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>brand</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>shipment</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>order</code> to property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Added] Possible values <code>platform_panel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>sales_channel</code> to property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>content.attachments[].type</code> of schema <code>TicketAssetTypeEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>source</code> of schema <code>TicketSourceEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### createPlatformTicketHistory

- ##### What's New
	- [Added] Possible values <code>rating</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>log</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>comment</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>thread</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body


#### createNewHistory

- ##### What's New
	- [Added] Possible values <code>rating</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>log</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>comment</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Added] Possible values <code>thread</code> to property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>type</code> of schema <code>HistoryTypeEnum</code> in request body


#### getCustomForm

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### editCustomForm

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>medium</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>high</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>urgent</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### deleteCustomForm

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### getCustomForms

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### createCustomForm

- ##### What's New
	- [Added] Possible values <code>low</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>medium</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>high</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>urgent</code> to property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Added] Possible values <code>low</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>medium</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>high</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Added] Possible values <code>urgent</code> to property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority</code> of schema <code>PriorityEnum</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>priority.key</code> of schema <code>PriorityEnum</code> in response with status code 200


#### getPlatformVideoParticipants

- ##### What's New
	- [Added] property <code>participants[].user.meta</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.dob</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.applicationId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.userId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.rrId</code> of schema <code>UserSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>participants[].user.uid</code> of schema <code>UserSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>participants[].user.debug</code> of schema <code>UserSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>participants[].user.hasOldPasswordHash</code> of schema <code>UserSchema</code> in response with status code 200


#### getNewVideoParticipants

- ##### What's New
	- [Added] property <code>participants[].user.meta</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.dob</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.applicationId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.userId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.externalId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] property <code>participants[].user.rrId</code> of schema <code>UserSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>participants[].user.uid</code> of schema <code>UserSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>participants[].user.debug</code> of schema <code>UserSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>participants[].user.hasOldPasswordHash</code> of schema <code>UserSchema</code> in response with status code 200


### Serviceability



#### getZones

- ##### What's New
	- [Breaking] [Added] properties <code>page.size</code>, <code>page.current</code>, <code>page.type</code>, <code>page.hasNext</code>, <code>page.itemTotal</code> in response with status code 200
	- [Breaking] [Added] Required status to properties <code>page.current</code>, <code>page.has_next</code>, <code>page.item_total</code>, <code>page.size</code>, <code>page.type</code> in response with status code 200
	- [Added] property <code>items[].channels[]</code> of schema <code>ListViewItems</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>page[]</code> of schema <code>ListViewResponse</code> in response with status code 200
	- [Breaking] [Deleted] property <code>items[].product</code> of schema <code>ListViewItems</code> in response with status code 200
	- [Deleted] properties <code>items[].channels.channelId</code>, <code>items[].channels.channelType</code> in response with status code 200
	- [Deleted] Required status from properties <code>items[].channels.channel_id</code>, <code>items[].channels.channel_type</code> in response with status code 200
	- [Deleted] Required status from property <code>items[].product</code> in response with status code 200
	- [Deleted] Required status from property <code>summary</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>array</code> to <code>object</code> of property <code>page</code> of schema <code>ListViewResponse</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>object</code> to <code>array</code> of property <code>items[].channels</code> of schema <code>ListViewChannels</code> in response with status code 200


#### getOptimalLocations

- ##### What's New
	- [Added] property <code>article</code> of schema <code>OptimlLocationsRequestSchema</code> in request body
	- [Added] property <code>channelId</code> of schema <code>OptimlLocationsRequestSchema</code> in request body
	- [Added] property <code>channelType</code> of schema <code>OptimlLocationsRequestSchema</code> in request body
	- [Added] property <code>channelIdentifier</code> of schema <code>OptimlLocationsRequestSchema</code> in request body
	- [Added] property <code>toServiceability</code> of schema <code>OptimlLocationsRequestSchema</code> in request body
	- [Added] property <code>assignedStores</code> of schema <code>OptimalLocationsResponse</code> in response with status code 200
	- [Added] property <code>faultyArticles</code> of schema <code>OptimalLocationsResponse</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>identifier</code> of schema <code>ReAssignStoreRequest</code> in request body
	- [Breaking] [Deleted] property <code>configuration</code> of schema <code>ReAssignStoreRequest</code> in request body
	- [Breaking] [Deleted] property <code>articles</code> of schema <code>ReAssignStoreRequest</code> in request body
	- [Breaking] [Deleted] property <code>toPincode</code> of schema <code>ReAssignStoreRequest</code> in request body
	- [Breaking] [Deleted] property <code>ignoredLocations</code> of schema <code>ReAssignStoreRequest</code> in request body
	- [Deleted] Required status from property <code>to_pincode</code> in request body
	- [Breaking] [Deleted] property <code>success</code> of schema <code>ReAssignStoreResponse</code> in response with status code 200
	- [Breaking] [Deleted] property <code>error</code> of schema <code>ReAssignStoreResponse</code> in response with status code 200
	- [Breaking] [Deleted] property <code>articles</code> of schema <code>ReAssignStoreResponse</code> in response with status code 200
	- [Breaking] [Deleted] property <code>toPincode</code> of schema <code>ReAssignStoreResponse</code> in response with status code 200
	- [Deleted] Required status from property <code>success</code> in response with status code 200
	- [Deleted] Required status from property <code>to_pincode</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Required status of property <code>configuration</code> in request body
	- [Breaking] [Changed] Required status of property <code>identifier</code> in request body
	- [Breaking] [Changed] Required status of property <code>ignored_locations</code> in request body
	- [Breaking] [Changed] Required status of property <code>error</code> in response with status code 200
	- [Changed] Path From <code>/service/platform/logistics/v1.0/company/{company_id}/reassign</code> To <code>/service/platform/logistics/v1.0/company/{company_id}/optimal-locations</code>


#### getCourierPartnerAccounts

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_previous</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


#### getCourierPartnerRules

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_previous</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


#### getBulkTat

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_previous</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


#### getStoreRules

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_previous</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


#### getBulkServiceability

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_previous</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


#### getPackageMaterialList

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_previous</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


#### getPackageMaterialRules

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_previous</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


### Order



#### updateShipmentLock

- ##### What's New
	- [Added] property <code>resumeTasksAfterUnlock</code> of schema <code>UpdateShipmentLockPayload</code> in request body


#### sendSmsNinja

- ##### What's New
	- [Added] property <code>result[].orderDetails.prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200


#### createOrder

- ##### What's New
	- [Added] property <code>shipments[].price.amountToBeCollected</code> of schema <code>Prices</code> in request body
	- [Added] property <code>orderingStoreId</code> of schema <code>CreateOrderAPI</code> in request body
	- [Added] property <code>orderPlatform</code> of schema <code>CreateOrderAPI</code> in request body

- ##### What's Deprecated
	- [Deleted] Required status from property <code>userInfo.primary_email</code> in request body

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>number</code> to <code>string</code> of property <code>shipments[].gst.gstinCode</code> of schema <code>ShipmentGstDetails</code> in request body


#### checkOrderStatus

- ##### What's New
	- [Added] property <code>result[].orderDetails.prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200


#### getShipments

- ##### What's New
	- [Added] property <code>items[].bags[].article.tags</code> of schema <code>Article</code> in response with status code 200
	- [Added] property <code>items[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].bags[].financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>items[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].paymentInfo</code> of schema <code>ShipmentItem</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.type</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.total</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.hasNext</code> of schema <code>Page</code> in response with status code 200


#### getShipmentById

- ##### What's New
	- [Added] <code>query</code> parameter <code>allowInactive</code> (type: <code>boolean</code>)

	- [Added] property <code>shipments[].order.affiliateOrderId</code> of schema <code>OrderDetailsData</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].article.tags</code> of schema <code>OrderBagArticle</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].financialBreakup.amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].paymentInfo</code> of schema <code>OrderBags</code> in response with status code 200
	- [Added] property <code>shipments[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>shipments[].orderPlatform</code> of schema <code>PlatformShipment</code> in response with status code 200
	- [Added] property <code>shipments[].paymentInfo</code> of schema <code>PlatformShipment</code> in response with status code 200


#### getOrderById

- ##### What's New
	- [Added] property <code>order.prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>order.paymentInfo</code> of schema <code>OrderData</code> in response with status code 200
	- [Added] property <code>shipments[].order.affiliateOrderId</code> of schema <code>OrderDetailsData</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].article.tags</code> of schema <code>OrderBagArticle</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].financialBreakup.amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>shipments[].bags[].paymentInfo</code> of schema <code>OrderBags</code> in response with status code 200
	- [Added] property <code>shipments[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>shipments[].orderPlatform</code> of schema <code>PlatformShipment</code> in response with status code 200
	- [Added] property <code>shipments[].paymentInfo</code> of schema <code>PlatformShipment</code> in response with status code 200


#### getOrders

- ##### What's New
	- [Added] <code>query</code> parameter <code>allowInactive</code> (type: <code>boolean</code>)

	- [Added] property <code>items[].shipments[].order.affiliateOrderId</code> of schema <code>OrderDetailsData</code> in response with status code 200
	- [Added] property <code>items[].shipments[].bags[].article.tags</code> of schema <code>OrderBagArticle</code> in response with status code 200
	- [Added] property <code>items[].shipments[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].shipments[].bags[].financialBreakup.amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>items[].shipments[].bags[].paymentInfo</code> of schema <code>OrderBags</code> in response with status code 200
	- [Added] property <code>items[].shipments[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].shipments[].orderPlatform</code> of schema <code>PlatformShipment</code> in response with status code 200
	- [Added] property <code>items[].shipments[].paymentInfo</code> of schema <code>PlatformShipment</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.type</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.total</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.hasNext</code> of schema <code>Page</code> in response with status code 200


#### getApplicationShipments

- ##### What's New
	- [Added] property <code>items[].bags[].article.tags</code> of schema <code>Article</code> in response with status code 200
	- [Added] property <code>items[].bags[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].bags[].financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200
	- [Added] property <code>items[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>items[].paymentInfo</code> of schema <code>ShipmentItem</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.type</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.total</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200
	- [Deleted] Possible nullable value from <code>true</code> from property <code>page.hasNext</code> of schema <code>Page</code> in response with status code 200


#### getBagById

- ##### What's New
	- [Added] property <code>data.article.tags</code> of schema <code>Article</code> in response with status code 200
	- [Added] property <code>data.order.prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>data.prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>data.shipment.price.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>data.financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>data.brand.modifiedOn</code> of schema <code>Brand</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>string</code> of property <code>data.shipment.gst.gstinCode</code> of schema <code>ShipmentGstDetails</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>data.fulfillingStore.phone</code> of schema <code>Store</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>data.orderingStore.phone</code> of schema <code>Store</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>string</code> of property <code>data.shipmentGst.gstinCode</code> of schema <code>ShipmentGstDetails</code> in response with status code 200


#### getBags

- ##### What's New
	- [Added] property <code>data.items[].article.tags</code> of schema <code>Article</code> in response with status code 200
	- [Added] property <code>data.items[].order.prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>data.items[].prices.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>data.items[].shipment.price.amountToBeCollected</code> of schema <code>Prices</code> in response with status code 200
	- [Added] property <code>data.items[].financialBreakup[].amountToBeCollected</code> of schema <code>FinancialBreakup</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>data.items[].brand.modifiedOn</code> of schema <code>Brand</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>string</code> of property <code>data.items[].shipment.gst.gstinCode</code> of schema <code>ShipmentGstDetails</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>data.items[].fulfillingStore.phone</code> of schema <code>Store</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>data.items[].orderingStore.phone</code> of schema <code>Store</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>string</code> of property <code>data.items[].shipmentGst.gstinCode</code> of schema <code>ShipmentGstDetails</code> in response with status code 200


### Payment



#### edcDeviceList

- ##### What's New
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.hasPrevious</code> of schema <code>Page</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Required status from property <code>page.current</code> in response with status code 200
	- [Deleted] Required status from property <code>page.has_next</code> in response with status code 200
	- [Deleted] Required status from property <code>page.item_total</code> in response with status code 200
	- [Deleted] Required status from property <code>page.size</code> in response with status code 200


#### getPosPaymentModeRoutes

- ##### What's New
	- [Added] property <code>paymentOptions.paymentDefaultSelection</code> of schema <code>PaymentOptionAndFlow</code> in response with status code 200


#### updatePaymentSession

- ##### What's New
	- [Added] property <code>checksum</code> of schema <code>PaymentSessionRequestSerializer</code> in request body
	- [Breaking] [Added] Required status to property <code>checksum</code> in request body


#### updateRefundSession

- ##### What's New
	- [Added] property <code>checksum</code> of schema <code>RefundSessionRequestSerializer</code> in request body
	- [Breaking] [Added] Required status to property <code>total_amount</code> in request body
	- [Breaking] [Added] Required status to property <code>checksum</code> in request body


### Share



#### createShortLink

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getShortLinks

- ##### What's New
	- [Breaking] [Deleted] <code>query</code> parameter <code>q</code> (type: <code>string</code>),
 [Added] <code>query</code> parameter <code>shortUrl</code> (type: <code>string</code>)
	- [Added] <code>query</code> parameter <code>originalUrl</code> (type: <code>string</code>)

	- [Added] <code>query</code> parameter <code>title</code> (type: <code>string</code>)


- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>items[].url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getShortLinkByHash

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### updateShortLinkById

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


### Theme



#### getAllPages

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### createPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### updateMultiplePages

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>pages[].seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### getPage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### updatePage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in request body
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


#### deletePage

- ##### What's New
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.page.type</code> in response with status code 200
	- [Breaking] [Added] Possible values <code>about-us,addresses,blog,brands,cards,cart,categories,brand,category,collection,collections,contact-us,external,faq,freshchat,home,notification-settings,orders,page,policy,product,product-request,products,profile,profile-order-shipment,profile-basic,profile-company,profile-emails,profile-phones,rate-us,refer-earn,settings,shared-cart,tnc,track-order,wishlist,sections,form,cart-delivery,cart-payment,cart-review,login,register,shipping-policy,return-policy,order-status</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>seo.breadcrumb[].action.popup.type</code> in response with status code 200


### User



#### getCustomers

- ##### What's New
	- [Added] property <code>items[].archive</code> of schema <code>UserSearchSchema</code> in response with status code 200
	- [Added] property <code>items[].status</code> of schema <code>UserSearchSchema</code> in response with status code 200
	- [Added] property <code>items[].rrId</code> of schema <code>UserSearchSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### searchUsers

- ##### What's New
	- [Added] property <code>users[].archive</code> of schema <code>UserSearchSchema</code> in response with status code 200
	- [Added] property <code>users[].status</code> of schema <code>UserSearchSchema</code> in response with status code 200
	- [Added] property <code>users[].rrId</code> of schema <code>UserSearchSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### createUser

- ##### What's New
	- [Added] property <code>rrId</code> of schema <code>CreateUserRequestSchema</code> in request body
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### blockOrUnblockUsers

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### archiveUser

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### unDeleteUser

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updateUser

- ##### What's New
	- [Added] property <code>rrId</code> of schema <code>UpdateUserRequestSchema</code> in request body
	- [Added] property <code>user.rrId</code> of schema <code>UserSchema</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### createUserSession

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### deleteSession

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getActiveSessions

- ##### What's New
	- [Added] property <code>items[].location</code> of schema <code>SessionListResponseInfo</code> in response with status code 200
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### deleteActiveSessions

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getPlatformConfig

- ##### What's New
	- [Added] property <code>socialTokens.facebook.appSecret</code> of schema <code>Facebook</code> in response with status code 200
	- [Added] property <code>socialTokens.google.appSecret</code> of schema <code>Google</code> in response with status code 200
	- [Added] property <code>socialTokens.accountKit.appSecret</code> of schema <code>Accountkit</code> in response with status code 200
	- [Breaking] [Added] properties <code>deleteAccountConsent.consentText</code> in response with status code 200
	- [Breaking] [Added] properties <code>sessionConfig.duration</code>, <code>sessionConfig.type</code>, <code>sessionConfig.isRolling</code> in response with status code 200
	- [Added] property <code>v</code> of schema <code>PlatformSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>deleteAccountConsent[]</code> of schema <code>PlatformSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>sessionConfig[]</code> of schema <code>PlatformSchema</code> in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updatePlatformConfig

- ##### What's New
	- [Added] property <code>socialTokens.facebook.appSecret</code> of schema <code>Facebook</code> in request body
	- [Added] property <code>socialTokens.google.appSecret</code> of schema <code>Google</code> in request body
	- [Added] property <code>socialTokens.accountKit.appSecret</code> of schema <code>Accountkit</code> in request body
	- [Breaking] [Added] properties <code>deleteAccountConsent.consentText</code> in request body
	- [Breaking] [Added] properties <code>sessionConfig.duration</code>, <code>sessionConfig.type</code>, <code>sessionConfig.isRolling</code> in request body
	- [Added] property <code>v</code> of schema <code>PlatformSchema</code> in request body
	- [Added] property <code>socialTokens.facebook.appSecret</code> of schema <code>Facebook</code> in response with status code 200
	- [Added] property <code>socialTokens.google.appSecret</code> of schema <code>Google</code> in response with status code 200
	- [Added] property <code>socialTokens.accountKit.appSecret</code> of schema <code>Accountkit</code> in response with status code 200
	- [Breaking] [Added] properties <code>deleteAccountConsent.consentText</code> in response with status code 200
	- [Breaking] [Added] properties <code>sessionConfig.duration</code>, <code>sessionConfig.type</code>, <code>sessionConfig.isRolling</code> in response with status code 200
	- [Added] property <code>v</code> of schema <code>PlatformSchema</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>deleteAccountConsent[]</code> of schema <code>PlatformSchema</code> in request body
	- [Breaking] [Deleted] property <code>sessionConfig[]</code> of schema <code>PlatformSchema</code> in request body
	- [Breaking] [Deleted] property <code>deleteAccountConsent[]</code> of schema <code>PlatformSchema</code> in response with status code 200
	- [Breaking] [Deleted] property <code>sessionConfig[]</code> of schema <code>PlatformSchema</code> in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### createUserGroup

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getUserGroups

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updateUserGroup

- ##### What's New
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getUserGroupById

- ##### What's New
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updateUserGroupPartially

- ##### What's New
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### createUserAttributeDefinition

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getUserAttributeDefinitions

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updateUserAttributeDefinition

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### deleteUserAttributeDefinitionById

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### updateUserAttribute

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getUserAttribute

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### deleteUserAttribute

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getUserAttributesForUser

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getUserAttributeById

- ##### What's New
	- [Added] Response with status 400

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


### Webhook



#### downloadDeliveryReport

- ##### What's Deprecated
	- [Deleted] Value format from <code>date-time</code> from property <code>endDate</code> of schema <code>EventProcessRequest</code> in request body
	- [Deleted] Value format from <code>date-time</code> from property <code>startDate</code> of schema <code>EventProcessRequest</code> in request body


#### getHistoricalReports

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from <code>date-time</code> from property <code>items[].filters.endDate</code> of schema <code>HistoryFilters</code> in response with status code 200
	- [Deleted] Value format from <code>date-time</code> from property <code>items[].filters.startDate</code> of schema <code>HistoryFilters</code> in response with status code 200
	- [Deleted] Value format from <code>date-time</code> from property <code>items[].createdOn</code> of schema <code>HistoryItems</code> in response with status code 200
	- [Deleted] Value format from <code>date-time</code> from property <code>items[].updatedOn</code> of schema <code>HistoryItems</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.totalPage</code> of schema <code>Page</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### getDeliveryReports

- ##### What's New
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Deleted] Value format from <code>date-time</code> from property <code>endDate</code> of schema <code>EventProcessRequest</code> in request body
	- [Deleted] Value format from <code>date-time</code> from property <code>startDate</code> of schema <code>EventProcessRequest</code> in request body
	- [Breaking] [Deleted] property <code>page.totalPage</code> of schema <code>Page</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>object</code> to <code>string</code> of property <code>rows[].data</code> of schema <code>EventProcessReportObject</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>rows[].lastAttemptedOn</code> of schema <code>EventProcessReportObject</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### fetchAllEventConfigurations

- ##### What's New
	- [Added] property <code>eventConfigs[].subscriberEventMapping</code> of schema <code>EventConfig</code> in response with status code 200


#### registerSubscriberToEvent

- ##### What's New
	- [Added] Possible values <code>active</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Added] Possible values <code>inactive</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Added] Possible values <code>blocked</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Added] Possible values <code>active</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>inactive</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>blocked</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200


#### getSubscribersByCompany

- ##### What's New
	- [Added] Possible values <code>active</code> to property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>inactive</code> to property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>blocked</code> to property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] property <code>items[].eventConfigs[].subscriberEventMapping</code> of schema <code>EventConfig</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.totalPage</code> of schema <code>Page</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


#### updateSubscriberConfig

- ##### What's New
	- [Added] Possible values <code>active</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Added] Possible values <code>inactive</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Added] Possible values <code>blocked</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Added] Possible values <code>active</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>inactive</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>blocked</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200


#### getSubscriberById

- ##### What's New
	- [Added] Possible values <code>active</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>inactive</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>blocked</code> to property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] property <code>eventConfigs[].subscriberEventMapping</code> of schema <code>EventConfig</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200


#### getSubscribersByExtensionId

- ##### What's New
	- [Added] Possible values <code>active</code> to property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>inactive</code> to property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] Possible values <code>blocked</code> to property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Added] property <code>items[].eventConfigs[].subscriberEventMapping</code> of schema <code>EventConfig</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Value format <code>int32</code> to property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200
	- [Added] property <code>page.nextId</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Added] Required status to property <code>page.type</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] Possible values from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200
	- [Breaking] [Deleted] property <code>page.totalPage</code> of schema <code>Page</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.current</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.size</code> of schema <code>Page</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>number</code> to <code>integer</code> of property <code>page.itemTotal</code> of schema <code>Page</code> in response with status code 200


## Public Client



### Billing



#### getStandardPlans

- ##### What's New
	- [Breaking] [Deleted] Required <code>query</code> parameter <code>platformType</code> (type: <code>string</code>),
 [Breaking] [Added] Required <code>query</code> parameter <code>platform</code> (type: <code>string</code>)


### Content



#### getCredentialsByEntity

- ##### What's New
	- [Breaking] [Added] Required status to path parameter <code>entity</code>
