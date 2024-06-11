# CHANGE LOG (1.4.7) - fp-v1.9.3

## Application Client

- [Added] Webhook class in application client


### Catalog



#### getProductSizesBySlug

- ##### What's New
	- [Added] property <code>pricePerPiece</code> of schema <code>ProductSizes</code> in response with status code 200


#### getProductVariantsBySlug

- ##### What's New
	- [Added] property <code>variants[].items[].customJson</code> of schema <code>ProductVariantItemResponse</code> in response with status code 200
	- [Added] property <code>variants[].logo</code> of schema <code>ProductVariantResponse</code> in response with status code 200


#### getProducts

- ##### What's New
	- [Added] property <code>items[].variants[].items[].customJson</code> of schema <code>ProductVariantItemResponse</code> in response with status code 200


#### getHomeProducts

- ##### What's New
	- [Added] property <code>items[].variants[].items[].customJson</code> of schema <code>ProductVariantItemResponse</code> in response with status code 200


#### getCollectionItemsBySlug

- ##### What's New
	- [Added] property <code>items[].variants[].items[].customJson</code> of schema <code>ProductVariantItemResponse</code> in response with status code 200


#### getFollowedListing

- ##### What's New
	- [Added] property <code>items[].variants[].items[].customJson</code> of schema <code>ProductVariantItemResponse</code> in response with status code 200


### Content



#### getBlog

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### getBlogs

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### getLandingPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getNavigations

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getSlideshows

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getSlideshow

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getPages

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


### Logistic



#### getPincodeCity
- [Note] This method is deprecated and it will be removed in future versions.


#### getTatProduct
- [Note] This method is deprecated and it will be removed in future versions.


#### getPincodeZones
- [Note] This method is deprecated and it will be removed in future versions.


#### getOptimalLocations
- [Note] This method is deprecated and it will be removed in future versions.


#### getLocations
- [Note] This method is deprecated and it will be removed in future versions.


### Order



#### getOrders

- ##### What's New
	- [Added] property <code>items[].shipments[].paymentInfo[].amount</code> of schema <code>ShipmentPaymentInfo</code> in response with status code 200
	- [Added] property <code>items[].shipments[].billingAddress</code> of schema <code>Shipments</code> in response with status code 200
	- [Added] property <code>items[].gstinCode</code> of schema <code>OrderSchema</code> in response with status code 200


#### getOrderById

- ##### What's New
	- [Added] property <code>order.shipments[].paymentInfo[].amount</code> of schema <code>ShipmentPaymentInfo</code> in response with status code 200
	- [Added] property <code>order.shipments[].billingAddress</code> of schema <code>Shipments</code> in response with status code 200
	- [Added] property <code>order.gstinCode</code> of schema <code>OrderSchema</code> in response with status code 200


#### getShipmentById

- ##### What's New
	- [Added] property <code>shipment.paymentInfo[].amount</code> of schema <code>ShipmentPaymentInfo</code> in response with status code 200
	- [Added] property <code>shipment.billingAddress</code> of schema <code>Shipments</code> in response with status code 200


### Payment



#### checkAndUpdatePaymentStatus

- ##### What's Deprecated
	- [Deleted] Required status from property <code>amount</code> in request body
	- [Deleted] Required status from property <code>contact</code> in request body
	- [Deleted] Required status from property <code>currency</code> in request body
	- [Deleted] Required status from property <code>customer_id</code> in request body
	- [Deleted] Required status from property <code>email</code> in request body
	- [Deleted] Required status from property <code>merchant_transaction_id</code> in request body
	- [Deleted] Required status from property <code>order_id</code> in request body
	- [Deleted] Required status from property <code>status</code> in request body


#### getPaymentModeRoutes

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.fynd.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.epaylater.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.razorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.juspay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ajiodhan.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.simpl.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.rupifi.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.mswipe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.stripe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ccavenue.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.payubiz.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.jiopay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.bqrRazorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.upiRazorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200


#### getPosPaymentModeRoutes

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.fynd.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.epaylater.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.razorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.juspay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ajiodhan.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.simpl.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.rupifi.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.mswipe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.stripe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ccavenue.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.payubiz.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.jiopay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.bqrRazorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.upiRazorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200


#### getPaymentModeRoutesPaymentLink

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.fynd.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.epaylater.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.razorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.juspay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ajiodhan.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.simpl.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.rupifi.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.mswipe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.stripe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ccavenue.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.payubiz.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.jiopay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.bqrRazorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.upiRazorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200


#### checkAndUpdatePaymentStatusPaymentLink

- ##### What's Deprecated
	- [Deleted] Required status from property <code>amount</code> in request body
	- [Deleted] Required status from property <code>contact</code> in request body
	- [Deleted] Required status from property <code>currency</code> in request body
	- [Deleted] Required status from property <code>customer_id</code> in request body
	- [Deleted] Required status from property <code>email</code> in request body
	- [Deleted] Required status from property <code>merchant_transaction_id</code> in request body
	- [Deleted] Required status from property <code>order_id</code> in request body
	- [Deleted] Required status from property <code>status</code> in request body


### Theme



#### getAllPages

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


## Platform Client

- [Added] Analytics class in platform client


### Cart



#### overrideCart

- ##### What's New
	- [Added] property <code>callbackUrl</code> of schema <code>OverrideCheckoutReq</code> in request body


#### getPriceAdjustments

- ##### What's New
	- [Added] method <code>getPriceAdjustments</code>



### Catalog



#### getApplicationBrandListing

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getApplicationBrands

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getCategories

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].childs[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].childs[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].childs[].childs[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].childs[].childs[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].childs[].childs[].childs[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].items[].childs[].childs[].childs[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getApplicationCategoryListing

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getAllCollections

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getCollectionItems

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].brand.action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].brand.action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getAppicationProducts

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].brand.action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].brand.action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getProductDetailBySlug

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>brand.action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>brand.action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getInventoryBulkUploadHistory

- ##### What's New
	- [Added] <code>query</code> parameter <code>search</code> (type: <code>string</code>)

	- [Breaking] [Added] properties <code>items[].failedRecords[].identifiers</code>, <code>items[].failedRecords[].message</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>items[].failedRecords[]</code> of schema <code>BulkInventoryGetItems</code> in response with status code 200


#### createMarketplaceOptin

- ##### What's New
	- [Added] Response with status 201

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 200

- ##### What's Changed
	- [Changed] Path From <code>/service/platform/catalog/v1.0/company/{company_id}/marketplaces/{marketplace}/optin/</code> To <code>/service/platform/catalog/v1.0/company/{company_id}/channel/{marketplace_slug}/opt-in</code>


#### getConfigurationMetadata

- ##### What's New
	- [Breaking] [Added] properties <code>condition[].key</code>, <code>condition[].display</code> in response with status code 200
	- [Breaking] [Added] properties <code>data[].key</code>, <code>data[].display</code>, <code>data[].filterTypes</code>, <code>data[].compatibleUnits</code> in response with status code 200
	- [Breaking] [Added] properties <code>values.type</code>, <code>values.sort</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>values[]</code> of schema <code>GetConfigMetadataResponse</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>array</code> to <code>object</code> of property <code>values</code> of schema <code>GetConfigMetadataResponse</code> in response with status code 200


#### uploadBulkProducts

- ##### What's New
	- [Added] property <code>department</code> of schema <code>BulkProductJob</code> in request body
	- [Added] property <code>productType</code> of schema <code>BulkProductJob</code> in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>cancelled</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>failed</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>stage</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>succeed</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>total</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>cancelledRecords</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>createdBy</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>createdOn</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>customTemplateTag</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>failedRecords</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>isActive</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>modifiedBy</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>modifiedOn</code> of schema <code>BulkJob</code> in request body
	- [Breaking] [Deleted] property <code>trackingUrl</code> of schema <code>BulkJob</code> in request body
	- [Deleted] Required status from properties <code>company_id</code>, <code>created_on</code> in request body


### Content



#### createBlog

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### getBlogs

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>items[].publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### updateBlog

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### deleteBlog

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### getComponentById

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### getLandingPages

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### createLandingPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### updateLandingPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### deleteLandingPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getNavigations

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### createNavigation

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getDefaultNavigations

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getNavigationBySlug

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### updateNavigation

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### deleteNavigation

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getPageMeta

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>systemPages[].navigation[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>systemPages[].navigation[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>customPages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>customPages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### createPagePreview

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### updatePagePreview

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### deletePage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getSlideshows

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### createSlideshow

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media.action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media.action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getSlideshowBySlug

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### updateSlideshow

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media.action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media.action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### deleteSlideshow

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>media[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getBlogBySlug

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200
	- [Added] property <code>publishDate</code> of schema <code>BlogSchema</code> in response with status code 200


#### createPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getPages

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>items[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### updatePage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getPageBySlug

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


### Serviceability



#### patchApplicationServiceabilitySelfShipment
- [Note] This method is deprecated and it will be removed in future versions.


### Order



#### getManifestShipments

- ##### What's Changed
	- [Changed] Path From <code>/service/platform/order-manage/v1.0/company/{company_id}/manifests/shipments</code> To <code>/service/platform/order-manage/v1.0/company/{company_id}/manifest/shipments-listing</code>


#### getManifests

- ##### What's New
	- [Added] property <code>items[].filters.deselectedShipments</code> of schema <code>Filters</code> in response with status code 200
	- [Added] property <code>items[].meta.filters.deselectedShipments</code> of schema <code>Filters</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>items[].filters.dpIds</code> of schema <code>Filters</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>items[].meta.filters.dpIds</code> of schema <code>Filters</code> in response with status code 200


#### processManifests

- ##### What's New
	- [Added] property <code>items.filters.deselectedShipments</code> of schema <code>Filters</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>items.filters.dpIds</code> of schema <code>Filters</code> in response with status code 200


#### getManifestDetails

- ##### What's New
	- [Added] property <code>manifestDetails[].filters.deselectedShipments</code> of schema <code>Filters</code> in response with status code 200
	- [Added] property <code>manifestDetails[].meta.filters.deselectedShipments</code> of schema <code>Filters</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>manifestDetails[].filters.dpIds</code> of schema <code>Filters</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>string</code> of property <code>manifestDetails[].meta.filters.dpIds</code> of schema <code>Filters</code> in response with status code 200


#### dispatchManifests

- ##### What's Deprecated
	- [Breaking] [Deleted] Required <code>path</code> parameter <code>manifestId</code> (type: <code>string</code>)


- ##### What's Changed
	- [Changed] Path From <code>/service/platform/order-manage/v1.0/company/{company_id}/manifest/{manifest_id}/dispatch</code> To <code>/service/platform/order-manage/v1.0/company/{company_id}/manifest/dispatch</code>


#### generateProcessManifest

- ##### What's New
	- [Added] method <code>generateProcessManifest</code>



### Payment



#### getPosPaymentModeRoutes

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.fynd.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.epaylater.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.razorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.juspay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ajiodhan.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.simpl.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.rupifi.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.mswipe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.stripe.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.ccavenue.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.payubiz.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.jiopay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>string</code> to <code>object</code> of property <code>paymentOptions.paymentFlows.bqrRazorpay.paymentFlowData</code> of schema <code>AggregatorRoute</code> in response with status code 200


### Theme



#### getAllPages

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### createPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### updateMultiplePages

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>pages[].seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### getPage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### updatePage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in request body
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


#### deletePage

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.page.type</code> of schema <code>PageType</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>seo.breadcrumb[].action.popup.type</code> of schema <code>PageType</code> in response with status code 200


### Webhook



#### getHistoricalReports

- ##### What's New
	- [Added] property <code>items[].filters.webhookType</code> of schema <code>HistoryFilters</code> in response with status code 200


#### fetchAllEventConfigurations

- ##### What's New
	- [Added] property <code>eventConfigs[].subscriberEventMapping.topic</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Added] property <code>eventConfigs[].group</code> of schema <code>EventConfig</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>eventConfigs[].subscriberEventMapping.id</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>eventConfigs[].subscriberEventMapping.eventId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>eventConfigs[].subscriberEventMapping.subscriberId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200


#### registerSubscriberToEvent

- ##### What's New
	- [Added] property <code>provider</code> of schema <code>SubscriberConfigResponse</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from <code>blocked</code> from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from <code>blocked</code> from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200


#### getSubscribersByCompany

- ##### What's New
	- [Added] property <code>items[].eventConfigs[].subscriberEventMapping.topic</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Added] property <code>items[].eventConfigs[].group</code> of schema <code>EventConfig</code> in response with status code 200
	- [Added] property <code>items[].provider</code> of schema <code>SubscriberResponse</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from <code>blocked</code> from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>items[].eventConfigs[].subscriberEventMapping.id</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>items[].eventConfigs[].subscriberEventMapping.eventId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>items[].eventConfigs[].subscriberEventMapping.subscriberId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200


#### updateSubscriberConfig

- ##### What's New
	- [Added] property <code>provider</code> of schema <code>SubscriberConfigResponse</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from <code>blocked</code> from property <code>status</code> of schema <code>SubscriberStatus</code> in request body
	- [Breaking] [Deleted] Possible values from <code>blocked</code> from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200


#### getSubscriberById

- ##### What's New
	- [Added] property <code>eventConfigs[].subscriberEventMapping.topic</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Added] property <code>eventConfigs[].group</code> of schema <code>EventConfig</code> in response with status code 200
	- [Added] property <code>provider</code> of schema <code>SubscriberResponse</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from <code>blocked</code> from property <code>status</code> of schema <code>SubscriberStatus</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>eventConfigs[].subscriberEventMapping.id</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>eventConfigs[].subscriberEventMapping.eventId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>eventConfigs[].subscriberEventMapping.subscriberId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200


#### getSubscribersByExtensionId

- ##### What's New
	- [Added] property <code>items[].eventConfigs[].subscriberEventMapping.topic</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Added] property <code>items[].eventConfigs[].group</code> of schema <code>EventConfig</code> in response with status code 200
	- [Added] property <code>items[].provider</code> of schema <code>SubscriberResponse</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from <code>blocked</code> from property <code>items[].status</code> of schema <code>SubscriberStatus</code> in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>items[].eventConfigs[].subscriberEventMapping.id</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>items[].eventConfigs[].subscriberEventMapping.eventId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200
	- [Breaking] [Changed] Type from <code>integer</code> to <code>number</code> of property <code>items[].eventConfigs[].subscriberEventMapping.subscriberId</code> of schema <code>SubscriberEventMapping</code> in response with status code 200


#### registerSubscriberToEventV2

- ##### What's New
	- [Added] method <code>registerSubscriberToEventV2</code>



#### updateSubscriberV2

- ##### What's New
	- [Added] method <code>updateSubscriberV2</code>



## Public Client



### Webhook



#### fetchAllWebhookEvents

- ##### What's New
	- [Added] property <code>eventConfigs[].group</code> of schema <code>EventConfig</code> in response with status code 200


#### queryWebhookEventDetails

- ##### What's New
	- [Added] property <code>eventConfigs[].group</code> of schema <code>EventConfig</code> in response with status code 200


# CHANGE LOG (1.4.6) - fp-v1.9.2

## Application Client

- [Breaking] [Removed] PosCart class from application client


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

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>getPosOrderById</code>



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

- ##### What's New
	- [Added] property <code>url.shortUrl</code> of schema <code>UrlInfo</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getShortLinkByHash

- ##### What's New
	- [Added] property <code>url.shortUrl</code> of schema <code>UrlInfo</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getOriginalShortLinkByHash

- ##### What's New
	- [Added] property <code>url.shortUrl</code> of schema <code>UrlInfo</code> in response with status code 200

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

- [Breaking] [Removed] Inventory class from platform client


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
	- [Added] <code>query</code> parameter <code>pageId</code> (type: <code>string</code>)

	- [Added] <code>query</code> parameter <code>pageType</code> (type: <code>string</code>)

	- [Added] <code>query</code> parameter <code>brandIds</code> (type: <code>array</code>)

	- [Added] <code>query</code> parameter <code>sellerIdentifiers</code> (type: <code>array</code>)

	- [Added] <code>query</code> parameter <code>qtyGt</code> (type: <code>integer</code>)

	- [Added] <code>query</code> parameter <code>qtyLt</code> (type: <code>integer</code>)

	- [Added] <code>query</code> parameter <code>qtyType</code> (type: <code>string</code>)

	- [Added] <code>query</code> parameter <code>fromDate</code> (type: <code>string</code>)

	- [Added] <code>query</code> parameter <code>toDate</code> (type: <code>string</code>)

	- [Added] property <code>items[].quantities.damaged.updatedAt</code> of schema <code>Quantity</code> in response with status code 200
	- [Added] property <code>items[].quantities.sellable.updatedAt</code> of schema <code>Quantity</code> in response with status code 200
	- [Added] property <code>items[].quantities.notAvailable.updatedAt</code> of schema <code>Quantity</code> in response with status code 200
	- [Added] property <code>items[].quantities.orderCommitted.updatedAt</code> of schema <code>Quantity</code> in response with status code 200
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



#### createBrand

- ##### What's New
	- [Added] property <code>slugKey</code> of schema <code>CreateBrandRequestSerializer</code> in request body


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


#### getDefaultPdfData

- ##### What's New
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].payload.companyDetail.gstin</code> of schema <code>CompanyDetail</code> in response with status code 200
	- [Breaking] [Added] Possible nullable value <code>true</code> to property <code>data[].payload.companyDetail.phoneNo</code> of schema <code>CompanyDetail</code> in response with status code 200


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



#### invalidateShipmentCache
- [Note] This method is deprecated and it will be removed in future versions.


#### updateShipmentLock

- ##### What's New
	- [Added] property <code>resumeTasksAfterUnlock</code> of schema <code>UpdateShipmentLockPayload</code> in request body
	- [Added] property <code>lockAfterTransition</code> of schema <code>UpdateShipmentLockPayload</code> in request body
	- [Added] property <code>unlockBeforeTransition</code> of schema <code>UpdateShipmentLockPayload</code> in request body


#### click2Call

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>click2Call</code>



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
	- [Added] property <code>refundDetails[].pgRefundId</code> of schema <code>RefundSessionDetail</code> in request body
	- [Added] property <code>checksum</code> of schema <code>RefundSessionRequestSerializer</code> in request body
	- [Breaking] [Added] Required status to property <code>total_amount</code> in request body
	- [Breaking] [Added] Required status to property <code>checksum</code> in request body


### Share



#### createShortLink

- ##### What's New
	- [Added] property <code>url.shortUrl</code> of schema <code>UrlInfo</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getShortLinks

- ##### What's New
	- [Breaking] [Deleted] <code>query</code> parameter <code>q</code> (type: <code>string</code>),
 [Added] <code>query</code> parameter <code>shortUrl</code> (type: <code>string</code>)
	- [Added] <code>query</code> parameter <code>originalUrl</code> (type: <code>string</code>)

	- [Added] <code>query</code> parameter <code>title</code> (type: <code>string</code>)

	- [Added] property <code>items[].url.shortUrl</code> of schema <code>UrlInfo</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>items[].url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### getShortLinkByHash

- ##### What's New
	- [Added] property <code>url.shortUrl</code> of schema <code>UrlInfo</code> in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property <code>url.short</code> of schema <code>UrlInfo</code> in response with status code 200


#### updateShortLinkById

- ##### What's New
	- [Added] property <code>url.shortUrl</code> of schema <code>UrlInfo</code> in response with status code 200

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


#### getThemeLibrary

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>getThemeLibrary</code>



#### addToThemeLibrary

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>addToThemeLibrary</code>



#### getPublicThemes

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>getPublicThemes</code>



#### publishTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>publishTheme</code>



#### unpublishTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>unpublishTheme</code>



#### archiveTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>archiveTheme</code>



#### unarchiveTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] method <code>unarchiveTheme</code>



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
