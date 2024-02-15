import Foundation

extension ApplicationClient {

    public class Catalog {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getProductDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/") 
            
            ulrs["getProductSizesBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/sizes/") 
            
            ulrs["getProductComparisonBySlugs"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/compare/") 
            
            ulrs["getSimilarComparisonProductBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/similar/compare/") 
            
            ulrs["getComparedFrequentlyProductBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/similar/compared-frequently/") 
            
            ulrs["getProductVariantsBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/variants/") 
            
            ulrs["getProductStockByIds"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/stock-status/") 
            
            ulrs["getProductStockForTimeByIds"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/stock-status/poll/") 
            
            ulrs["getProducts"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/") 
            
            ulrs["getBrands"] = config.domain.appendAsPath("/service/application/catalog/v1.0/brands/") 
            
            ulrs["getBrandDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/brands/{slug}/") 
            
            ulrs["getCategories"] = config.domain.appendAsPath("/service/application/catalog/v1.0/categories/") 
            
            ulrs["getCategoryDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/categories/{slug}/") 
            
            ulrs["getHomeProducts"] = config.domain.appendAsPath("/service/application/catalog/v1.0/home/listing/") 
            
            ulrs["getDepartments"] = config.domain.appendAsPath("/service/application/catalog/v1.0/departments/") 
            
            ulrs["getSearchResults"] = config.domain.appendAsPath("/service/application/catalog/v1.0/auto-complete/") 
            
            ulrs["getCollections"] = config.domain.appendAsPath("/service/application/catalog/v1.0/collections/") 
            
            ulrs["getCollectionItemsBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/collections/{slug}/items/") 
            
            ulrs["getCollectionDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/collections/{slug}/") 
            
            ulrs["getFollowedListing"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}/") 
            
            ulrs["unfollowById"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}/{collection_id}/") 
            
            ulrs["followById"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}/{collection_id}/") 
            
            ulrs["getFollowerCountById"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}/{collection_id}/count/") 
            
            ulrs["getFollowIds"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/ids/") 
            
            ulrs["getStores"] = config.domain.appendAsPath("/service/application/catalog/v1.0/locations/") 
            
            ulrs["getInStockLocations"] = config.domain.appendAsPath("/service/application/catalog/v1.0/in-stock/locations/") 
            
            ulrs["getLocationDetailsById"] = config.domain.appendAsPath("/service/application/catalog/v1.0/locations/{location_id}/") 
            
            ulrs["getProductBundlesBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/product-grouping/") 
            
            ulrs["getProductPriceBySlug"] = config.domain.appendAsPath("/service/application/catalog/v3.0/products/{slug}/sizes/{size}/price/") 
            
            ulrs["getProductSellersBySlug"] = config.domain.appendAsPath("/service/application/catalog/v3.0/products/{slug}/sizes/{size}/sellers/") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Fetches detailed product information by slug.
        * Description: Retrieve a product by its slug value.
        **/
        public func getProductDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductDetail?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getProductDetailBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductDetail.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves available sizes for a product by slug.
        * Description: Retrieve the size options available for a specific product based on its slug.
        **/
        public func getProductSizesBySlug(
            slug: String,
            storeId: Int?,
            
            onResponse: @escaping (_ response: ProductSizes?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = storeId {
    
    xQuery["store_id"] = value
    
}


 


            
            var fullUrl = relativeUrls["getProductSizesBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductSizes.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Compares multiple products by slugs.
        * Description: Retrieves side-by-side comparisons of multiple products identified by their slugs.
        **/
        public func getProductComparisonBySlugs(
            slug: [String],
            
            onResponse: @escaping (_ response: ProductsComparisonResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["slug"] = slug



 


            
            let fullUrl = relativeUrls["getProductComparisonBySlugs"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductsComparisonResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Fetches similar products for comparison.
        * Description: Gets products similar to the one identified by the given slug for comparison.
        **/
        public func getSimilarComparisonProductBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductCompareResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getSimilarComparisonProductBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductCompareResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves products frequently compared with a given product.
        * Description: Retrieve products that are often compared to the product specified by its slug.
        **/
        public func getComparedFrequentlyProductBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductFrequentlyComparedSimilarResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getComparedFrequentlyProductBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductFrequentlyComparedSimilarResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves product variants by slug.
        * Description: Retrieves all available variants of a specific product identified by its slug.
        **/
        public func getProductVariantsBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductVariantsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getProductVariantsBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductVariantsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Checks product stock by IDs.
        * Description: Retrieves the current stock status for products identified by their IDs.
        **/
        public func getProductStockByIds(
            itemId: String?,
            alu: String?,
            skuCode: String?,
            ean: String?,
            upc: String?,
            
            onResponse: @escaping (_ response: ProductStockStatusResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = itemId {
    
    xQuery["item_id"] = value
    
}


if let value = alu {
    
    xQuery["alu"] = value
    
}


if let value = skuCode {
    
    xQuery["sku_code"] = value
    
}


if let value = ean {
    
    xQuery["ean"] = value
    
}


if let value = upc {
    
    xQuery["upc"] = value
    
}


 


            
            let fullUrl = relativeUrls["getProductStockByIds"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductStockStatusResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Fetches future stock data for products.
        * Description: Retrieves projected stock levels for specified products at a future time.
        **/
        public func getProductStockForTimeByIds(
            timestamp: String,
            pageSize: Int?,
            pageId: String?,
            
            onResponse: @escaping (_ response: ProductStockPolling?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["timestamp"] = timestamp



if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = pageId {
    
    xQuery["page_id"] = value
    
}


 


            
            let fullUrl = relativeUrls["getProductStockForTimeByIds"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductStockPolling.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getProductStockForTimeByIds
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getProductStockForTimeByIdsPaginator(
            timestamp: String,
            pageSize: Int?
            
            ) -> Paginator<ProductStockPolling> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductStockPolling>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getProductStockForTimeByIds(
                        
                        timestamp: timestamp,
                        pageSize: paginator.pageSize
                        ,
                        pageId: paginator.pageId
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageId = response.page.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Lists all products.
        * Description: Retrieves a list of all products in the catalog. Choose a sort order or make arbitrary search queries by entering the product name, brand, category or collection.
        **/
        public func getProducts(
            q: String?,
            f: String?,
            filters: Bool?,
            sortOn: String?,
            pageId: String?,
            pageSize: Int?,
            pageNo: Int?,
            pageType: String?,
            
            onResponse: @escaping (_ response: ProductListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = q {
    
    xQuery["q"] = value
    
}


if let value = f {
    
    xQuery["f"] = value
    
}


if let value = filters {
    
    xQuery["filters"] = value
    
}


if let value = sortOn {
    
    xQuery["sort_on"] = value
    
}


if let value = pageId {
    
    xQuery["page_id"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageType {
    
    xQuery["page_type"] = value
    
}


 


            
            let fullUrl = relativeUrls["getProducts"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getProducts
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getProductsPaginator(
            q: String?,
            f: String?,
            filters: Bool?,
            sortOn: String?,
            pageSize: Int?
            
            ) -> Paginator<ProductListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getProducts(
                        
                        q: q,
                        f: f,
                        filters: filters,
                        sortOn: sortOn,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        ,
                        pageNo: paginator.pageNo
                        ,
                        pageType: paginator.type
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageId = response.page.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Fetches all available brands.
        * Description: Retrieves a comprehensive list of all brands in the catalog under which a product is sold.
        **/
        public func getBrands(
            department: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: BrandListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = department {
    
    xQuery["department"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


 


            
            let fullUrl = relativeUrls["getBrands"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BrandListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getBrands
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getBrandsPaginator(
            department: String?,
            pageSize: Int?
            
            ) -> Paginator<BrandListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<BrandListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getBrands(
                        
                        department: department,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves detailed brand info by slug.
        * Description: Retrieve metadata of a brand such as name, information, logo, banner, etc.
        **/
        public func getBrandDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: BrandDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getBrandDetailBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BrandDetailResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Lists all product categories.
        * Description: Retrieves a list of all available product categories. Also filter the categories by department.
        **/
        public func getCategories(
            department: String?,
            
            onResponse: @escaping (_ response: CategoryListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = department {
    
    xQuery["department"] = value
    
}


 


            
            let fullUrl = relativeUrls["getCategories"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CategoryListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves category details by slug.
        * Description: Retrieve detailed information about a specific product category using its slug and Retrieve metadata of a category such as name, information, logo, banner, etc.
        **/
        public func getCategoryDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: CategoryMetaResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getCategoryDetailBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CategoryMetaResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Fetches homepage-featured products.
        * Description: List all the products associated with a brand, collection or category in a random order.
        **/
        public func getHomeProducts(
            sortOn: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: HomeListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = sortOn {
    
    xQuery["sort_on"] = value
    
}


if let value = pageId {
    
    xQuery["page_id"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


 


            
            let fullUrl = relativeUrls["getHomeProducts"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(HomeListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getHomeProducts
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getHomeProductsPaginator(
            sortOn: String?,
            pageSize: Int?
            
            ) -> Paginator<HomeListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<HomeListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getHomeProducts(
                        
                        sortOn: sortOn,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageId = response.page.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Lists all departments.
        * Description: Retrieves a list of all available product departments. Departments are a way to categorise similar products.
        **/
        public func getDepartments(
            
            onResponse: @escaping (_ response: DepartmentResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getDepartments"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DepartmentResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves search result listings.
        * Description: Retrieves products that match the user's search criteria.
        **/
        public func getSearchResults(
            q: String,
            
            onResponse: @escaping (_ response: AutoCompleteResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["q"] = q



 


            
            let fullUrl = relativeUrls["getSearchResults"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AutoCompleteResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Fetches all available collections.
        * Description: Retrieves a list of curated product collections.
        **/
        public func getCollections(
            pageNo: Int?,
            pageSize: Int?,
            tag: [String]?,
            q: String?,
            
            onResponse: @escaping (_ response: GetCollectionListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = tag {
    
    xQuery["tag"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


 


            
            let fullUrl = relativeUrls["getCollections"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetCollectionListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getCollections
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getCollectionsPaginator(
            pageSize: Int?,
            tag: [String]?,
            q: String?
            
            ) -> Paginator<GetCollectionListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetCollectionListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getCollections(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        tag: tag,
                        q: q
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Lists items in a collection by slug.
        * Description: Retrieve items in a specific collection identified by its slug.
        **/
        public func getCollectionItemsBySlug(
            slug: String,
            f: String?,
            q: String?,
            filters: Bool?,
            sortOn: String?,
            pageId: String?,
            pageSize: Int?,
            pageNo: Int?,
            pageType: String?,
            
            onResponse: @escaping (_ response: ProductListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = f {
    
    xQuery["f"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = filters {
    
    xQuery["filters"] = value
    
}


if let value = sortOn {
    
    xQuery["sort_on"] = value
    
}


if let value = pageId {
    
    xQuery["page_id"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageType {
    
    xQuery["page_type"] = value
    
}


 


            
            var fullUrl = relativeUrls["getCollectionItemsBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getCollectionItemsBySlug
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getCollectionItemsBySlugPaginator(
            slug: String,
            f: String?,
            q: String?,
            filters: Bool?,
            sortOn: String?,
            pageSize: Int?
            
            ) -> Paginator<ProductListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getCollectionItemsBySlug(
                        
                        slug: slug,
                        f: f,
                        q: q,
                        filters: filters,
                        sortOn: sortOn,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        ,
                        pageNo: paginator.pageNo
                        ,
                        pageType: paginator.type
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageId = response.page.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves collection details by slug.
        * Description: Retrieve detailed information about a specific collection using its slug.
        **/
        public func getCollectionDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: CollectionDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getCollectionDetailBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CollectionDetailResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves user's followed listings.
        * Description: Retrieve a list of products or brands the user is following.
        **/
        public func getFollowedListing(
            collectionType: String,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: GetFollowListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageId {
    
    xQuery["page_id"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


 


            
            var fullUrl = relativeUrls["getFollowedListing"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetFollowListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getFollowedListing
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getFollowedListingPaginator(
            collectionType: String,
            pageSize: Int?
            
            ) -> Paginator<GetFollowListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetFollowListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getFollowedListing(
                        
                        collectionType: collectionType,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageId = response.page.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Unfollows an item by ID.
        * Description: Removes a followed item, brand, or product based on its ID.
        **/
        public func unfollowById(
            collectionType: String,
            collectionId: String,
            
            onResponse: @escaping (_ response: FollowPostResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["unfollowById"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_id" + "}", with: "\(collectionId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "DELETE",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FollowPostResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Follows an item by ID.
        * Description: Adds a product, brand, or item to the user's followed list by its ID.
        **/
        public func followById(
            collectionType: String,
            collectionId: String,
            
            onResponse: @escaping (_ response: FollowPostResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["followById"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_id" + "}", with: "\(collectionId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FollowPostResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves follower count for an item.
        * Description: Retrieves the total number of followers for a specific item by its ID.
        **/
        public func getFollowerCountById(
            collectionType: String,
            collectionId: String,
            
            onResponse: @escaping (_ response: FollowerCountResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getFollowerCountById"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_id" + "}", with: "\(collectionId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FollowerCountResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Fetches IDs of followed items.
        * Description: Retrieves the IDs of all items the user is currently following like Products, Brands and Collections.
        **/
        public func getFollowIds(
            collectionType: String?,
            
            onResponse: @escaping (_ response: FollowIdsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = collectionType {
    
    xQuery["collection_type"] = value
    
}


 


            
            let fullUrl = relativeUrls["getFollowIds"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FollowIdsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Lists available stores.
        * Description: Retrieves a list of all physical or online stores.
        **/
        public func getStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            city: String?,
            range: Int?,
            latitude: Double?,
            longitude: Double?,
            tags: String?,
            
            onResponse: @escaping (_ response: StoreListingResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = city {
    
    xQuery["city"] = value
    
}


if let value = range {
    
    xQuery["range"] = value
    
}


if let value = latitude {
    
    xQuery["latitude"] = value
    
}


if let value = longitude {
    
    xQuery["longitude"] = value
    
}


if let value = tags {
    
    xQuery["tags"] = value
    
}


 


            
            let fullUrl = relativeUrls["getStores"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StoreListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getStores
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getStoresPaginator(
            pageSize: Int?,
            q: String?,
            city: String?,
            range: Int?,
            latitude: Double?,
            longitude: Double?,
            tags: String?
            
            ) -> Paginator<StoreListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<StoreListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getStores(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        q: q,
                        city: city,
                        range: range,
                        latitude: latitude,
                        longitude: longitude,
                        tags: tags
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Finds in-stock locations for products.
        * Description: Lists locations where specified products are currently in stock.
        **/
        public func getInStockLocations(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            city: String?,
            range: Int?,
            latitude: Double?,
            longitude: Double?,
            
            onResponse: @escaping (_ response: ApplicationStoreListing?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = city {
    
    xQuery["city"] = value
    
}


if let value = range {
    
    xQuery["range"] = value
    
}


if let value = latitude {
    
    xQuery["latitude"] = value
    
}


if let value = longitude {
    
    xQuery["longitude"] = value
    
}


 


            
            let fullUrl = relativeUrls["getInStockLocations"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ApplicationStoreListing.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getInStockLocations
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getInStockLocationsPaginator(
            pageSize: Int?,
            q: String?,
            city: String?,
            range: Int?,
            latitude: Double?,
            longitude: Double?
            
            ) -> Paginator<ApplicationStoreListing> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ApplicationStoreListing>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getInStockLocations(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        q: q,
                        city: city,
                        range: range,
                        latitude: latitude,
                        longitude: longitude
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves location details by ID.
        * Description: Retrieves detailed information about a specific location using its ID.
        **/
        public func getLocationDetailsById(
            locationId: Int,
            
            onResponse: @escaping (_ response: StoreDetails?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getLocationDetailsById"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "location_id" + "}", with: "\(locationId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StoreDetails.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Fetches product bundles by slug.
        * Description: Retrieve products bundles to the one specified by its slug.
        **/
        public func getProductBundlesBySlug(
            slug: String?,
            id: String?,
            
            onResponse: @escaping (_ response: ProductBundle?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = slug {
    
    xQuery["slug"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
}


 


            
            let fullUrl = relativeUrls["getProductBundlesBySlug"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductBundle.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Retrieves product price by slug.
        * Description: Retrieve the price of a product size at all the selling locations near to a PIN Code.
        **/
        public func getProductPriceBySlug(
            slug: String,
            size: String,
            storeId: Int?,
            moq: Int?,
            
            onResponse: @escaping (_ response: ProductSizePriceResponseV3?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = storeId {
    
    xQuery["store_id"] = value
    
}


if let value = moq {
    
    xQuery["moq"] = value
    
}


 


            
            var fullUrl = relativeUrls["getProductPriceBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "size" + "}", with: "\(size)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductSizePriceResponseV3.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Lists sellers for a product by slug.
        * Description: Retrieve a list of all sellers offering a specific product identified by its slug. 
        **/
        public func getProductSellersBySlug(
            slug: String,
            size: String,
            strategy: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ProductSizeSellersResponseV3?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = strategy {
    
    xQuery["strategy"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


 


            
            var fullUrl = relativeUrls["getProductSellersBySlug"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "size" + "}", with: "\(size)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductSizeSellersResponseV3.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getProductSellersBySlug
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getProductSellersBySlugPaginator(
            slug: String,
            size: String,
            strategy: String?,
            pageSize: Int?
            
            ) -> Paginator<ProductSizeSellersResponseV3> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductSizeSellersResponseV3>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getProductSellersBySlug(
                        
                        slug: slug,
                        size: size,
                        strategy: strategy,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
    }
}