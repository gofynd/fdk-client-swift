
import Foundation

public class ApplicationClient {

    public let catalog: Catalog

    public let lead: Lead

    public let fileStorage: FileStorage

    public let payment: Payment

    public let order: Order

    public let logistic: Logistic

    public init(config: ApplicationConfig) {
        
        catalog = Catalog(config: config)
        
        lead = Lead(config: config)
        
        fileStorage = FileStorage(config: config)
        
        payment = Payment(config: config)
        
        order = Order(config: config)
        
        logistic = Logistic(config: config)
        
    }

    
    
    public class Catalog {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        /**
        *
        * Summary: Get a product
        * Description: Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given **slug**. If successful, returns a Product resource in the response body specified in `ProductDetail`
        **/
        public func getProductDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductDetail?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get the sizes of a product
        * Description: A product can exist in multiple sizes. Use this API to fetch all the available sizes of a product. If successful, returns a ProductSize object in the response body as specified in `ProductSizes`
        **/
        public func getProductSizesBySlug(
            slug: String,
            storeId: String?,
            
            onResponse: @escaping (_ response: ProductSizes?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = storeId {
                xQuery["store_id"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get price a product size
        * Description: Any available product can exist in multiple sizes. Sometimes prices may vary among different sizes of the same product. Use this API to retrieve the price of the product of a particular size with the location details it is available in.
        **/
        public func getProductPriceBySlug(
            slug: String,
            size: String,
            pincode: String,
            storeId: String?,
            
            onResponse: @escaping (_ response: ProductSizePriceResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = storeId {
                xQuery["store_id"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/pincode/\(pincode)/price/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductSizePriceResponse.self, from: data)
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
        * Summary: List sellers of a product
        * Description: A product of a particular size can be sold by multiple sellers. Use this API to fetch the sellers who are selling this product and have the stock of a particular size
        **/
        public func getProductSellersBySlug(
            slug: String,
            size: String,
            pincode: String,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ProductSizeSellersResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/pincode/\(pincode)/sellers/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductSizeSellersResponse.self, from: data)
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
            pincode: String,
            pageSize: Int?
            
            ) -> Paginator<ProductSizeSellersResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductSizeSellersResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getProductSellersBySlug(
                        
                        slug: slug,
                        size: size,
                        pincode: pincode,
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
        * Summary: Compare products
        * Description: Compare between the features of the given set of products Use this API to compare how one product ranks against other products. Note that at least one slug is mandatory in request query.
        **/
        public func getProductComparisonBySlugs(
            slug: [String],
            
            onResponse: @escaping (_ response: ProductsComparisonResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["slug"] = slug
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/compare/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get comparison between similar products
        * Description: Compare between the features of the given set of products Use this API to compare how one product ranks against other products
        **/
        public func getSimilarComparisonProductBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductCompareResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/similar/compare/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get comparison between frequently compared products with the given product
        * Description: Compare between the features of the give product with frequently compared products Use this API to compare how one product ranks against other products
        **/
        public func getComparedFrequentlyProductBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductFrequentlyComparedSimilarResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/similar/compared-frequently/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get similar products
        * Description: Get products similar to the one specified by the `identifier`. If successful, it returns a group of similar products based on type as described in `SimilarProductByTypeResponse`
        **/
        public func getProductSimilarByIdentifier(
            slug: String,
            similarType: String,
            
            onResponse: @escaping (_ response: SimilarProductByTypeResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/similar/\(similarType)/",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SimilarProductByTypeResponse.self, from: data)
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
        * Summary: Get variant of a particular product
        * Description: A product can have a different type of variants varies from color to shade etc. Use this API to fetch all the available variants of a product. If successful, returns a Products for different variants type in the response body as specified in `ProductVariantResponse`
        **/
        public func getProductVariantsBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: ProductVariantsResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/variants/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get the stock of a product
        * Description: Retrieve the available stock of the products. You can use this API to retrieve stock of multiple products at a time. Only 50 product IDs can be given in a single API request
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
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/stock-status/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get the stock of a product
        * Description: Retrieve the available stock of the products. You can use this api to get stock status of products whose inventory is updated in given time
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
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/stock-status/poll/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: List the products
        * Description: List all the products associated with a brand, collection or category in a requested sort order. The API additionally supports arbitrary search queries that may refer the name of any product, brand, category or collection. If successful, returns a paginated list of products specified in `ProductListingResponse`
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
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: List all the brands
        * Description: A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`
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
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/brands/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get metadata of a brand
        * Description: Fetch metadata of a brand. If successful, returns a metadata object specified in `BrandDetailResponse`
        **/
        public func getBrandDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: BrandDetailResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/brands/\(slug)/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: List all the categories
        * Description: List all the categories. You can optionally pass filter the brands by the department. If successful, returns a paginated list of brands specified in `CategoryListingResponse`
        **/
        public func getCategories(
            department: String?,
            
            onResponse: @escaping (_ response: CategoryListingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = department {
                xQuery["department"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/categories/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get metadata of a category
        * Description: Fetch metadata of a category. If successful, returns a metadata object specified in `CategoryMetaResponse`
        **/
        public func getCategoryDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: CategoryMetaResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/categories/\(slug)/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: List the products
        * Description: List all the products associated with a brand, collection or category in a random order. If successful, returns a paginated list of products specified in `HomeListingResponse`
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
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/home/listing/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: List all the departments
        * Description: Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`
        **/
        public func getDepartments(
            
            onResponse: @escaping (_ response: DepartmentResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/departments/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get relevant suggestions for a search query
        * Description: Retrieves a list of suggestions for a given search query. Each suggestion is a valid search term that's generated on the basis of what is given in query. This is particularly useful to enhance the user experience in search. The given search query can be a partial name of any product, brand and category. For example, if the given search query `q` is _ski_ the relevant search suggestions returned might be a list containing _skirt_, _ski shoes_, __skin cream_ etc.
        **/
        public func getSearchResults(
            q: String,
            
            onResponse: @escaping (_ response: AutoCompleteResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["q"] = q
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/auto-complete/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: List all the collections
        * Description: A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections`
        **/
        public func getCollections(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: GetCollectionListingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/collections/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
            pageSize: Int?
            
            ) -> Paginator<GetCollectionListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetCollectionListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getCollections(
                        
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
        * Summary: Get the items in a collection
        * Description: Get items in a collection specified by its `slug`.
        **/
        public func getCollectionItemsBySlug(
            slug: String,
            f: String?,
            filters: Bool?,
            sortOn: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ProductListingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
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
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/collections/\(slug)/items/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
                        filters: filters,
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
        * Summary: Get a particular collection
        * Description: Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`
        **/
        public func getCollectionDetailBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: CollectionDetailResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/collections/\(slug)/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get a list of followed Products, Brands, Collections
        * Description: A User can follow a Product they like. This API retrieves the products the user have followed. If successful, returns a Followed resource in the response body specified in `GetFollowResponseSchema`
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
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/follow/\(collectionType)/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Follow a particular Product
        * Description: Follow a particular Product specified by its uid. Pass the uid of the product in request URL
        **/
        public func followById(
            collectionType: String,
            collectionId: String,
            
            onResponse: @escaping (_ response: FollowPostResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/catalog/v1.0/follow/\(collectionType)/\(collectionId)/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: UnFollow a Product
        * Description: You can undo a followed Product or Brand by its id, we refer this action as _unfollow_. Pass the uid of the product in request URL
        **/
        public func unfollowById(
            collectionType: String,
            collectionId: String,
            
            onResponse: @escaping (_ response: FollowPostResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/catalog/v1.0/follow/\(collectionType)/\(collectionId)/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get Follow Count
        * Description: Get count of followers for given collection type and collection id.
        **/
        public func getFollowerCountById(
            collectionType: String,
            collectionId: String,
            
            onResponse: @escaping (_ response: FollowerCountResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/follow/\(collectionType)/\(collectionId)/count/",
                query: nil,
                extraHeaders:  [],
                body: nil,
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
        * Summary: Get the Ids of followed product, brand and collection.
        * Description: You can get the ids of all the followed Product, Brand and Collections. Pass collection_type as query parameter to fetch specific Ids
        **/
        public func getFollowIds(
            collectionType: String?,
            
            onResponse: @escaping (_ response: FollowIdsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = collectionType {
                xQuery["collection_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/follow/ids/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
        * Summary: List store meta information.
        * Description: Use this API to get list of stores for specific application. If successful, returns list of stores specified in `StoreListingResponse`
        **/
        public func getStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            range: Int?,
            latitude: Double?,
            longitude: Double?,
            
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
            
            if let value = range {
                xQuery["range"] = value
            }
            
            if let value = latitude {
                xQuery["latitude"] = value
            }
            
            if let value = longitude {
                xQuery["longitude"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/locations/",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
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
            range: Int?,
            latitude: Double?,
            longitude: Double?
            
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
                        range: range,
                        latitude: latitude,
                        longitude: longitude
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
    
    
    
    public class Lead {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        /**
        *
        * Summary: Get Ticket with the specific id
        * Description: Get Ticket with the specific id, this is used to view the ticket details
        **/
        public func getTicket(
            id: String,
            
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/lead/v1.0/ticket/\(id)",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(Ticket.self, from: data)
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
        * Summary: Create history for specific Ticket
        * Description: Create history for specific Ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func createHistory(
            ticketId: String,
            body: TicketHistoryPayload,
            onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/lead/v1.0/ticket/\(ticketId)/history",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(TicketHistory.self, from: data)
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
        * Summary: Create Ticket
        * Description: This is used to Create Ticket.
        **/
        public func createTicket(
            body: AddTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/lead/v1.0/ticket/",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(Ticket.self, from: data)
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
        * Summary: Get specific Custom Form using it's slug
        * Description: Get specific Custom Form using it's slug, this is used to view the form.
        **/
        public func getCustomForm(
            slug: String,
            
            onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/lead/v1.0/form/\(slug)",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CustomForm.self, from: data)
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
        * Summary: Submit Response for a specific Custom Form using it's slug
        * Description: Submit Response for a specific Custom Form using it's slug, this response is then used to create a ticket on behalf of the user.
        **/
        public func submitCustomForm(
            slug: String,
            body: CustomFormSubmissionPayload,
            onResponse: @escaping (_ response: SubmitCustomFormResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/lead/v1.0/form/\(slug)/submit",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SubmitCustomFormResponse.self, from: data)
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
        * Summary: Get participants of a specific Video Room using it's unique name
        * Description: Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.
        **/
        public func getParticipantsInsideVideoRoom(
            uniqueName: String,
            
            onResponse: @escaping (_ response: GetParticipantsInsideVideoRoomResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/lead/v1.0/video/room/\(uniqueName)/participants",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetParticipantsInsideVideoRoomResponse.self, from: data)
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
        * Summary: Get Token to join a specific Video Room using it's unqiue name
        * Description: Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.
        **/
        public func getTokenForVideoRoom(
            uniqueName: String,
            
            onResponse: @escaping (_ response: GetTokenForVideoRoomResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/lead/v1.0/video/room/\(uniqueName)/token",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetTokenForVideoRoomResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
    }
    
    
    
    public class FileStorage {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        /**
        *
        * Summary: This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.
        * Description: Uploads an arbitrarily sized buffer or blob.

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

        **/
        public func startUpload(
            namespace: String,
            body: StartRequest,
            onResponse: @escaping (_ response: StartResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/assets/v1.0/namespaces/\(namespace)/upload/start/",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StartResponse.self, from: data)
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
        * Summary: This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.
        * Description: Uploads an arbitrarily sized buffer or blob.

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

        **/
        public func completeUpload(
            namespace: String,
            body: StartResponse,
            onResponse: @escaping (_ response: CompleteResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/assets/v1.0/namespaces/\(namespace)/upload/complete/",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CompleteResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
    }
    
    
    
    public class Payment {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        /**
        *
        * Summary: Get payment gateway keys
        * Description: Get payment gateway (key, secrets, merchant, sdk/api detail) to complete payment at front-end.
        **/
        public func getAggregatorsConfig(
            xApiToken: String,
            refresh: Bool?,
            
            onResponse: @escaping (_ response: AggregatorsConfigDetailResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = [] 
            xHeaders.append((key: "x-api-token", value: xApiToken))
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/config/aggregators/key",
                query: xQuery,
                extraHeaders:  xHeaders,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AggregatorsConfigDetailResponse.self, from: data)
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
        * Summary: Attach a saved card to customer.
        * Description: Attach a saved card to customer at payment gateway i.e stripe and refresh card cache.
        **/
        public func attachCardToCustomer(
            body: AttachCardRequest,
            onResponse: @escaping (_ response: AttachCardsResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/card/attach",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AttachCardsResponse.self, from: data)
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
        * Summary: Fetch active payment gateway for card
        * Description: Fetch active payment gateway along with customer id for cards payments.
        **/
        public func getActiveCardAggregator(
            refresh: Bool?,
            
            onResponse: @escaping (_ response: ActiveCardPaymentGatewayResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/card/aggregator",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ActiveCardPaymentGatewayResponse.self, from: data)
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
        * Summary: Fetch the list of saved cards of user.
        * Description: Fetch the list of saved cards of user from active payment gateway.
        **/
        public func getActiveUserCards(
            forceRefresh: Bool?,
            
            onResponse: @escaping (_ response: ListCardsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = forceRefresh {
                xQuery["force_refresh"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/cards",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ListCardsResponse.self, from: data)
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
        * Summary: Delete an user card.
        * Description: Delete an added user card on payment gateway and remove from cache.
        **/
        public func deleteUserCard(
            body: DeletehCardRequest,
            onResponse: @escaping (_ response: DeleteCardsResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/card/remove",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DeleteCardsResponse.self, from: data)
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
        * Summary: Validate customer for payment.
        * Description: Validate customer for payment i.e Simpl paylater, Rupifi loan.
        **/
        public func verifyCustomerForPayment(
            body: ValidateCustomerRequest,
            onResponse: @escaping (_ response: ValidateCustomerResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/payment/customer/validation",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ValidateCustomerResponse.self, from: data)
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
        * Summary: Verify and charge payment
        * Description: Verify and charge payment server to server for Simpl & Mswipe.
        **/
        public func verifyAndChargePayment(
            body: ChargeCustomerRequest,
            onResponse: @escaping (_ response: ChargeCustomerResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/payment/confirm/charge",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ChargeCustomerResponse.self, from: data)
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
        * Summary: Payment Initialisation server to server for UPI and BharatQR.
        * Description: Payment Initialisation for UPI & BharatQR code, UPI requests to app and QR code to be displayed on screen.
        **/
        public func initialisePayment(
            body: PaymentInitializationRequest,
            onResponse: @escaping (_ response: PaymentInitializationResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/payment/request",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PaymentInitializationResponse.self, from: data)
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
        * Summary: Continous polling to check status of payment on server.
        * Description: Continous polling on interval to check status of payment untill timeout.
        **/
        public func checkAndUpdatePaymentStatus(
            body: PaymentStatusUpdateRequest,
            onResponse: @escaping (_ response: PaymentStatusUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/payment/confirm/polling",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PaymentStatusUpdateResponse.self, from: data)
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
        * Summary: Get All Valid Payment Options
        * Description: Use this API to get Get All Valid Payment Options for making payment
        **/
        public func getPaymentModeRoutes(
            amount: Int,
            cartId: String,
            pincode: String,
            checkoutMode: String,
            refresh: Bool?,
            assignCardId: String?,
            userDetails: String?,
            
            onResponse: @escaping (_ response: PaymentModeRouteResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["amount"] = amount
            
            xQuery["cart_id"] = cartId
            
            xQuery["pincode"] = pincode
            
            xQuery["checkout_mode"] = checkoutMode
            
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
            if let value = assignCardId {
                xQuery["assign_card_id"] = value
            }
            
            if let value = userDetails {
                xQuery["user_details"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/payment/options",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PaymentModeRouteResponse.self, from: data)
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
        * Summary: Get All Valid Payment Options for POS
        * Description: Use this API to get Get All Valid Payment Options for making payment
        **/
        public func getPosPaymentModeRoutes(
            amount: Int,
            cartId: String,
            pincode: String,
            checkoutMode: String,
            refresh: Bool?,
            assignCardId: String?,
            orderType: String,
            userDetails: String?,
            
            onResponse: @escaping (_ response: PaymentModeRouteResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["amount"] = amount
            
            xQuery["cart_id"] = cartId
            
            xQuery["pincode"] = pincode
            
            xQuery["checkout_mode"] = checkoutMode
            
            
            if let value = refresh {
                xQuery["refresh"] = value
            }
            
            if let value = assignCardId {
                xQuery["assign_card_id"] = value
            }
            xQuery["order_type"] = orderType
            
            
            if let value = userDetails {
                xQuery["user_details"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/payment/options/pos",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PaymentModeRouteResponse.self, from: data)
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
        * Summary: List Refund Transfer Mode
        * Description: Get all active transfer mode for adding beneficiary details
        **/
        public func getActiveRefundTransferModes(
            
            onResponse: @escaping (_ response: TransferModeResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/refund/transfer-mode",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(TransferModeResponse.self, from: data)
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
        * Summary: Enable/Disable Refund Transfer Mode
        * Description: Activate or Deactivate Transfer Mode to collect Beneficiary Details for Refund
        **/
        public func enableOrDisableRefundTransferMode(
            body: UpdateRefundTransferModeRequest,
            onResponse: @escaping (_ response: UpdateRefundTransferModeResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/payment/v1.0/refund/transfer-mode",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateRefundTransferModeResponse.self, from: data)
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
        * Summary: List User Beneficiary
        * Description: Get all active  beneficiary details added by the user for refund
        **/
        public func getUserBeneficiariesDetail(
            orderId: String,
            
            onResponse: @escaping (_ response: OrderBeneficiaryResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["order_id"] = orderId
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/refund/user/beneficiary",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderBeneficiaryResponse.self, from: data)
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
        * Summary: Ifsc Code Verification
        * Description: Get True/False for correct IFSC Code for adding bank details for refund
        **/
        public func verifyIfscCode(
            ifscCode: String?,
            
            onResponse: @escaping (_ response: IfscCodeResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = ifscCode {
                xQuery["ifsc_code"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/ifsc-code/verify",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(IfscCodeResponse.self, from: data)
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
        * Summary: List Order Beneficiary
        * Description: Get all active  beneficiary details added by the user for refund
        **/
        public func getOrderBeneficiariesDetail(
            orderId: String,
            
            onResponse: @escaping (_ response: OrderBeneficiaryResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["order_id"] = orderId
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/refund/order/beneficiaries",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderBeneficiaryResponse.self, from: data)
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
        * Summary: Save Beneficiary details on otp validation.
        * Description: Save Beneficiary details on otp validation.
        **/
        public func verifyOtpAndAddBeneficiaryForBank(
            body: AddBeneficiaryViaOtpVerificationRequest,
            onResponse: @escaping (_ response: AddBeneficiaryViaOtpVerificationResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/refund/verification/bank",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AddBeneficiaryViaOtpVerificationResponse.self, from: data)
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
        * Summary: Save bank details for cancelled/returned order
        * Description: Use this API to save bank details for returned/cancelled order to refund amount in his account.
        **/
        public func addBeneficiaryDetails(
            body: AddBeneficiaryDetailsRequest,
            onResponse: @escaping (_ response: RefundAccountResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/refund/account",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(RefundAccountResponse.self, from: data)
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
        * Summary: Send Otp on Adding wallet beneficiary
        * Description: Send Otp on Adding wallet beneficiary for user mobile verification
        **/
        public func verifyOtpAndAddBeneficiaryForWallet(
            body: WalletOtpRequest,
            onResponse: @escaping (_ response: WalletOtpResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/refund/verification/wallet",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(WalletOtpResponse.self, from: data)
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
        * Summary: Mark Default Beneficiary For Refund
        * Description: Mark Default Beneficiary ot of all Beneficiary Details for Refund
        **/
        public func updateDefaultBeneficiary(
            body: SetDefaultBeneficiaryRequest,
            onResponse: @escaping (_ response: SetDefaultBeneficiaryResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/refund/beneficiary/default",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SetDefaultBeneficiaryResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
    }
    
    
    
    public class Order {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        /**
        *
        * Summary: Get Orders for application based on application Id
        * Description: Get Orders
        **/
        public func getOrders(
            pageNo: Int?,
            pageSize: Int?,
            fromDate: String?,
            toDate: String?,
            orderStatus: Int?,
            
            onResponse: @escaping (_ response: OrderList?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = fromDate {
                xQuery["from_date"] = value
            }
            
            if let value = toDate {
                xQuery["to_date"] = value
            }
            
            if let value = orderStatus {
                xQuery["order_status"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders",
                query: xQuery,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderList.self, from: data)
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
        * Summary: Get Order by order id for application based on application Id
        * Description: Get Order By Fynd Order Id
        **/
        public func getOrderById(
            orderId: String,
            
            onResponse: @escaping (_ response: OrderById?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders/\(orderId)",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderById.self, from: data)
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
        * Summary: Get Shipment by shipment id and order id for application based on application Id
        * Description: Get Shipment
        **/
        public func getShipmentById(
            shipmentId: String,
            
            onResponse: @escaping (_ response: ShipmentById?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders/shipments/\(shipmentId)",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentById.self, from: data)
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
        * Summary: Get Shipment reasons by shipment id and order id for application based on application Id
        * Description: Get Shipment Reasons
        **/
        public func getShipmentReasons(
            shipmentId: String,
            
            onResponse: @escaping (_ response: ShipmentReasons?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders/shipments/\(shipmentId)/reasons",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentReasons.self, from: data)
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
        * Summary: Update Shipment status by shipment id and order id for application based on application Id
        * Description: Update Shipment Status
        **/
        public func updateShipmentStatus(
            shipmentId: String,
            body: ShipmentStatusUpdateBody,
            onResponse: @escaping (_ response: ShipmentStatusUpdate?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/order/v1.0/orders/shipments/\(shipmentId)/status",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentStatusUpdate.self, from: data)
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
        * Summary: Track Shipment by shipment id and order id for application based on application Id
        * Description: Shipment Track
        **/
        public func trackShipment(
            shipmentId: String,
            
            onResponse: @escaping (_ response: ShipmentTrack?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders/shipments/\(shipmentId)/track",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentTrack.self, from: data)
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
        * Summary: Get POS Order by order id for application based on application Id
        * Description: Get Order By Fynd Order Id
        **/
        public func getPosOrderById(
            orderId: String,
            
            onResponse: @escaping (_ response: PosOrderById?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders/pos-order/\(orderId)",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PosOrderById.self, from: data)
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
    }
    
    
    
    public class Logistic {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        /**
        *
        * Summary: Get Tat Product
        * Description: Get Tat Product
        **/
        public func getTatProduct(
            body: GetTatProductReqBody,
            onResponse: @escaping (_ response: GetTatProductResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/logistics/v1.0",
                query: nil,
                extraHeaders:  [],
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetTatProductResponse.self, from: data)
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
        * Summary: Get City from Pincode
        * Description: Get City from Pincode
        **/
        public func getPincodeCity(
            pincode: String,
            
            onResponse: @escaping (_ response: GetPincodeCityResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/logistics/v1.0/pincode/\(pincode)",
                query: nil,
                extraHeaders:  [],
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetPincodeCityResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
    }
    
    
}