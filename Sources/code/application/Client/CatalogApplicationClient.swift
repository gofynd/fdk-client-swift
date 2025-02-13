import Foundation

extension ApplicationClient {

    public class Catalog {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getProductDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}") 
            
            ulrs["getProductSizesBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/sizes") 
            
            ulrs["getProductComparisonBySlugs"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/compare") 
            
            ulrs["getSimilarComparisonProductBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/similar/compare") 
            
            ulrs["getComparedFrequentlyProductBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/similar/compared-frequently") 
            
            ulrs["getProductVariantsBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/{slug}/variants") 
            
            ulrs["getProductStockByIds"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/stock-status") 
            
            ulrs["getProductStockForTimeByIds"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/stock-status/poll") 
            
            ulrs["getProducts"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products") 
            
            ulrs["getBrands"] = config.domain.appendAsPath("/service/application/catalog/v1.0/brands") 
            
            ulrs["getBrandDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/brands/{slug}") 
            
            ulrs["getCategories"] = config.domain.appendAsPath("/service/application/catalog/v1.0/categories") 
            
            ulrs["getCategoryDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/categories/{slug}") 
            
            ulrs["getHomeProducts"] = config.domain.appendAsPath("/service/application/catalog/v1.0/home/listing") 
            
            ulrs["getDepartments"] = config.domain.appendAsPath("/service/application/catalog/v1.0/departments") 
            
            ulrs["getSearchResults"] = config.domain.appendAsPath("/service/application/catalog/v1.0/auto-complete") 
            
            ulrs["getCollections"] = config.domain.appendAsPath("/service/application/catalog/v1.0/collections") 
            
            ulrs["getCollectionItemsBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/collections/{slug}/items") 
            
            ulrs["getCollectionDetailBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/collections/{slug}") 
            
            ulrs["getFollowedListing"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}") 
            
            ulrs["unfollowById"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}/{collection_id}") 
            
            ulrs["followById"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}/{collection_id}") 
            
            ulrs["getFollowerCountById"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/{collection_type}/{collection_id}/count") 
            
            ulrs["getFollowIds"] = config.domain.appendAsPath("/service/application/catalog/v1.0/follow/ids") 
            
            ulrs["getStores"] = config.domain.appendAsPath("/service/application/catalog/v2.0/locations") 
            
            ulrs["getInStockLocations"] = config.domain.appendAsPath("/service/application/catalog/v2.0/in-stock/locations") 
            
            ulrs["getLocationDetailsById"] = config.domain.appendAsPath("/service/application/catalog/v2.0/locations/{location_id}") 
            
            ulrs["getProductBundlesBySlug"] = config.domain.appendAsPath("/service/application/catalog/v2.0/product-grouping") 
            
            ulrs["getProductPriceBySlug"] = config.domain.appendAsPath("/service/application/catalog/v1.0/products/sizes/price") 
            
            ulrs["getProductSellersBySlug"] = config.domain.appendAsPath("/service/application/catalog/v4.0/products/{slug}/sizes/{size}/sellers") 
            
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
        * Description: Get product details such as price, attributes, HSN code, SKU code, etc.
        **/
        public func getProductDetailBySlug(
            slug: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductDetail?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getProductDetailBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Provides detailed information about a product, including its availability (sellable), available sizes with quantities, dimensions, weight, availability status, price details (marked, effective, selling), minimum order quantity (MOQ).
        **/
        public func getProductSizesBySlug(
            slug: String,
            storeId: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductSizes?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = storeId {
                xQuery["store_id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getProductSizesBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
        * Description: Get all the products that have the same category.
        **/
        public func getProductComparisonBySlugs(
            slug: [String],
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductsComparisonResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["slug"] = slug
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getProductComparisonBySlugs"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
        * Description: Get all products within the same category as the one specified by the provided slug.
        **/
        public func getSimilarComparisonProductBySlug(
            slug: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductCompareResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getSimilarComparisonProductBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get products that are often compared to the product specified by its slug.
        **/
        public func getComparedFrequentlyProductBySlug(
            slug: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductFrequentlyComparedSimilarResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getComparedFrequentlyProductBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get all available variants of a specific product identified by its slug.
        **/
        public func getProductVariantsBySlug(
            slug: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductVariantsResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getProductVariantsBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get the current stock status for products identified by their IDs, such as SKU, ALU, EAN, etc.
        **/
        public func getProductStockByIds(
            itemId: Int?,
            alu: String?,
            skuCode: String?,
            ean: String?,
            upc: String?,
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getProductStockByIds"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
        * Description: Get the available stock levels for all products associated with a particular sales channel at a specified future time.
        **/
        public func getProductStockForTimeByIds(
            timestamp: String,
            pageSize: Int?,
            pageId: String?,
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getProductStockForTimeByIds"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            pageSize: Int?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<ProductStockPolling> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductStockPolling>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getProductStockForTimeByIds(
                    timestamp: timestamp,
                    pageSize: paginator.pageSize,
                    pageId: paginator.pageId,
                    
                    headers: headers
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
        * Description: List all products available in the catalog. It supports filtering based on product name, brand, department, category, collection, and more, while also offering sorting options based on factors like price, ratings, discounts, and other relevant criteria.
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
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getProducts"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            pageSize: Int?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<ProductListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getProducts(
                    q: q,
                    f: f,
                    filters: filters,
                    sortOn: sortOn,
                    pageId: paginator.pageId,
                    pageSize: paginator.pageSize,
                    pageNo: paginator.pageNo,
                    pageType: paginator.type,
                    
                    headers: headers
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
        * Description: Get a list of all the available brands. Filtering can be applied to the department.
        **/
        public func getBrands(
            department: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getBrands"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            pageSize: Int?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<BrandListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<BrandListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getBrands(
                    department: department,
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    
                    headers: headers
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
        * Description: Get metadata of a brand such as name, information, logo, banner, etc.
        **/
        public func getBrandDetailBySlug(
            slug: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BrandDetailResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getBrandDetailBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: List all available product categories. Also, users can filter the categories by department.
        **/
        public func getCategories(
            department: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CategoryListingResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = department {
                xQuery["department"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCategories"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
        * Description: Get detailed information about a specific product category using its slug and get metadata of a category such as name, information, logo, banner, etc.
        **/
        public func getCategoryDetailBySlug(
            slug: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CategoryMetaResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCategoryDetailBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getHomeProducts"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            pageSize: Int?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<HomeListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<HomeListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getHomeProducts(
                    sortOn: sortOn,
                    pageId: paginator.pageId,
                    pageSize: paginator.pageSize,
                    
                    headers: headers
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
        * Description: List all departments associated with available products.
        **/
        public func getDepartments(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: DepartmentResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getDepartments"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get products, brands, or categories based on a search query, which can be a partial or full name match.
        **/
        public func getSearchResults(
            q: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AutoCompleteResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["q"] = q
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getSearchResults"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
        * Description: List of curated product collections with filtering options based on tags and collection names.
        **/
        public func getCollections(
            pageNo: Int?,
            pageSize: Int?,
            tag: [String]?,
            q: String?,
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCollections"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            q: String?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<GetCollectionListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetCollectionListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getCollections(
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    tag: tag,
                    q: q,
                    
                    headers: headers
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
        * Description: Fetch items within a particular collection identified by its slug.
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
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCollectionItemsBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            pageSize: Int?,
            headers: [(key: String, value: String)]? = nil
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
                    pageId: paginator.pageId,
                    pageSize: paginator.pageSize,
                    pageNo: paginator.pageNo,
                    pageType: paginator.type,
                    
                    headers: headers
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
        * Description: Get detailed information about a specific collection using its slug.
        **/
        public func getCollectionDetailBySlug(
            slug: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CollectionDetailResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCollectionDetailBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get a list of products or brands the user is following.
        **/
        public func getFollowedListing(
            collectionType: String,
            pageId: String?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetFollowListingResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pageId {
                xQuery["page_id"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getFollowedListing"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            pageSize: Int?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<GetFollowListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetFollowListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getFollowedListing(
                    collectionType: collectionType,
                    pageId: paginator.pageId,
                    pageSize: paginator.pageSize,
                    
                    headers: headers
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
        * Description: Remove a followed item, brand, or product using its collection ID.
        **/
        public func unfollowById(
            collectionType: String,
            collectionId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FollowPostResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["unfollowById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_id" + "}", with: "\(collectionId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "DELETE",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Add a product, brand, or item to the user's followed list by collection Id.
        **/
        public func followById(
            collectionType: String,
            collectionId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FollowPostResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["followById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_id" + "}", with: "\(collectionId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get the total number of followers for a specific item by its ID.
        **/
        public func getFollowerCountById(
            collectionType: String,
            collectionId: Int,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FollowerCountResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getFollowerCountById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_type" + "}", with: "\(collectionType)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "collection_id" + "}", with: "\(collectionId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get the IDs of all items the user is currently following, such as Products, Brands, and Collections.
        **/
        public func getFollowIds(
            collectionType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FollowIdsResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = collectionType {
                xQuery["collection_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getFollowIds"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
        * Summary: Get store meta information.
        * Description: List all stores associated with the sales channel.
        **/
        public func getStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            city: String?,
            range: Int?,
            latitude: Double?,
            longitude: Double?,
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getStores"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<StoreListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<StoreListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getStores(
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    q: q,
                    city: city,
                    range: range,
                    latitude: latitude,
                    longitude: longitude,
                    
                    headers: headers
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
        * Summary: Get store meta information.
        * Description: List stores where specified products are currently in stock.
        **/
        public func getInStockLocations(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            city: String?,
            range: Int?,
            latitude: Double?,
            longitude: Double?,
            
            headers: [(key: String, value: String)]? = nil,
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
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getInStockLocations"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
            longitude: Double?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<ApplicationStoreListing> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ApplicationStoreListing>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getInStockLocations(
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    q: q,
                    city: city,
                    range: range,
                    latitude: latitude,
                    longitude: longitude,
                    
                    headers: headers
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
        * Summary: Get store meta information.
        * Description: Get details about a store based on its location Id.
        **/
        public func getLocationDetailsById(
            locationId: Int,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: StoreDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getLocationDetailsById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "location_id" + "}", with: "\(locationId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
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
        * Description: Get products bundles to the one specified by its slug.
        **/
        public func getProductBundlesBySlug(
            slug: String?,
            id: Int?,
            size: String?,
            sellerId: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductBundle?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = slug {
                xQuery["slug"] = value
            }
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = size {
                xQuery["size"] = value
            }
            
            if let value = sellerId {
                xQuery["seller_id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getProductBundlesBySlug"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
        * Summary: get size price for multiple products
        * Description: Get the price of a product size at all the selling locations near to a PIN Code.
        **/
        public func getProductPriceBySlug(
            body: ProductSizePriceV1Request,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductSizePriceResponseV1?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getProductPriceBySlug"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductSizePriceResponseV1.self, from: data)
                        
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
        * Summary: Get the sellers of a product size at a PIN Code
        * Description: List all sellers offering a specific product identified by its slug and size.
        **/
        public func getProductSellersBySlug(
            slug: String,
            size: String,
            pincode: String?,
            strategy: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ProductSizeSellersResponseV4?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pincode {
                xQuery["pincode"] = value
            }
            
            if let value = strategy {
                xQuery["strategy"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getProductSellersBySlug"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "size" + "}", with: "\(size)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
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
                        
                        let response = Utility.decode(ProductSizeSellersResponseV4.self, from: data)
                        
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
            pincode: String?,
            strategy: String?,
            pageSize: Int?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<ProductSizeSellersResponseV4> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductSizeSellersResponseV4>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getProductSellersBySlug(
                    slug: slug,
                    size: size,
                    pincode: pincode,
                    strategy: strategy,
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    
                    headers: headers
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