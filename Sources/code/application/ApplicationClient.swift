
import Foundation

public class ApplicationClient {

    public let catalog: Catalog

    public let cart: Cart

    public let common: Common

    public let lead: Lead

    public let theme: Theme

    public let user: User

    public let content: Content

    public let communication: Communication

    public let share: Share

    public let fileStorage: FileStorage

    public let configuration: Configuration

    public let payment: Payment

    public let order: Order

    public let rewards: Rewards

    public let feedback: Feedback

    public let posCart: PosCart

    public let logistic: Logistic

    public init(config: ApplicationConfig) {
        
        catalog = Catalog(config: config)
        
        cart = Cart(config: config)
        
        common = Common(config: config)
        
        lead = Lead(config: config)
        
        theme = Theme(config: config)
        
        user = User(config: config)
        
        content = Content(config: config)
        
        communication = Communication(config: config)
        
        share = Share(config: config)
        
        fileStorage = FileStorage(config: config)
        
        configuration = Configuration(config: config)
        
        payment = Payment(config: config)
        
        order = Order(config: config)
        
        rewards = Rewards(config: config)
        
        feedback = Feedback(config: config)
        
        posCart = PosCart(config: config)
        
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
        * Description: Use this API to retrieve a product by its slug value.
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
        * Summary: Get the sizes of a product
        * Description: A product can have multiple sizes. Use this API to fetch all the available sizes of a product.
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


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/",
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
        * Summary: Get the price of a product size at a PIN Code
        * Description: Prices may vary for different sizes of a product. Use this API to retrieve the price of a product size at all the selling locations near to a PIN Code.
        **/
        public func getProductPriceBySlug(
            slug: String,
            size: String,
            pincode: String,
            storeId: Int?,
            
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
                responseType: "application/json",
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
        * Summary: Get the sellers of a product size at a PIN Code
        * Description: A product of a particular size may be sold by multiple sellers. Use this API to fetch the sellers having the stock of a particular size at a given PIN Code.
        **/
        public func getProductSellersBySlug(
            slug: String,
            size: String,
            pincode: String,
            strategy: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ProductSizeSellersResponse?, _ error: FDKError?) -> Void
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


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/pincode/\(pincode)/sellers/",
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
            strategy: String?,
            pageSize: Int?
            
            ) -> Paginator<ProductSizeSellersResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ProductSizeSellersResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getProductSellersBySlug(
                        
                        slug: slug,
                        size: size,
                        pincode: pincode,
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
        
        
        
        
        /**
        *
        * Summary: Compare products
        * Description: Use this API to compare the features of products belonging to the same category. Note that at least one slug is mandatory in the request query.
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
        * Summary: Get comparison between similar products
        * Description: Use this API to compare a given product automatically with similar products. Only one slug is needed.
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
        * Summary: Get comparison between frequently compared products with the given product
        * Description: Use this API to compare a given product automatically with products that are frequently compared with it. Only one slug is needed.
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
        * Summary: Get similar products
        * Description: Use this API to retrieve products similar to the one specified by its slug. You can search not only similar looking products, but also those that are sold by same seller, or those that belong to the same category, price, specifications, etc.
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
                responseType: "application/json",
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
        * Description: A product can have a different type of variants such as colour, shade, memory. Use this API to fetch all the available variants of a product using its slug.
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
        * Summary: Get the stock of a product
        * Description: Retrieve the available stock of the products. Use this API to retrieve stock of multiple products (up to 50) at a time.
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
        * Summary: Get the stock of a product
        * Description: Retrieve the available stock of the products. Use this API to get the stock status of products whose inventory is updated at the specified time
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
        * Summary: Get all the products
        * Description: Use this API to list all the products. You may choose a sort order or make arbitrary search queries by entering the product name, brand, category or collection.
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
        * Summary: Get all the brands
        * Description: A brand is the name under which a product is sold. Use this API to list all the brands. You can also filter the brands by department.
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
        * Summary: Get metadata of a brand
        * Description: Fetch metadata of a brand such as name, information, logo, banner, etc.
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
        * Summary: List all the categories
        * Description: Use this API to list all the categories. You can also filter the categories by department.
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
        * Summary: Get metadata of a category
        * Description: Fetch metadata of a category such as name, information, logo, banner, etc.
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
        * Summary: List the products
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


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/home/listing/",
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
        * Summary: Get relevant suggestions for a search query
        * Description: Retrieves a list of suggestions for a given search query. Each suggestion is a valid search term that's generated on the basis of query. This is particularly useful to enhance the user experience while using the search tool.
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
        * Summary: List all the collections
        * Description: Collections are a great way to organize your products and can improve the ability for customers to find items quickly and efficiently.
        **/
        public func getCollections(
            pageNo: Int?,
            pageSize: Int?,
            tag: [String]?,
            
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


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/collections/",
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
            tag: [String]?
            
            ) -> Paginator<GetCollectionListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetCollectionListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getCollections(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        tag: tag
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
        * Description: Get the details of a collection by its `slug`.
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
        * Summary: Get a list of followed Products, Brands, Collections
        * Description: Users can follow a product they like. This API retrieves the products the user have followed.
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
        * Summary: Follow an entity (product/brand/collection)
        * Description: Follow a particular entity such as product, brand, collection specified by its ID.
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
        * Summary: Unfollow an entity (product/brand/collection)
        * Description: You can undo a followed product, brand or collection by its ID. This action is referred as _unfollow_.
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
        * Summary: Get Follow Count
        * Description: Get the total count of followers for a given collection type and collection ID.
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
        * Summary: Get the IDs of followed products, brands and collections.
        * Description: You can get the IDs of all the followed Products, Brands and Collections. Pass collection_type as query parameter to fetch specific Ids
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
        * Description: Use this API to get a list of stores in a specific application.
        **/
        public func getStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            city: String?,
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


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/locations/",
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
                        city: city,
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
        
        
        
        
        /**
        *
        * Summary: Get store meta information.
        * Description: Use this API to get a list of stores in a specific application.
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


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/in-stock/locations/",
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
        * Summary: Get store meta information.
        * Description: Use this API to get meta details for a store.
        **/
        public func getLocationDetailsById(
            locationId: Int,
            
            onResponse: @escaping (_ response: StoreDetails?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/locations/\(locationId)/",
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
        
        
    }
    
    
    
    public class Cart {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Fetch all items added to the cart
        * Description: Use this API to get details of all the items added to a cart.
        **/
        public func getCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            assignCardId: Int?,
            
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


if let value = assignCardId {
    
    xQuery["assign_card_id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/detail",
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Fetch last-modified timestamp
        * Description: Use this API to fetch Last-Modified timestamp in header metadata.
        **/
        public func getCartLastModified(
            id: String?,
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "head",
                url: "/service/application/cart/v1.0/detail",
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
                        
                        let response = data.dictionary
                        
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
        * Summary: Add items to cart
        * Description: Use this API to add items to the cart.
        **/
        public func addItems(
            i: Bool?,
            b: Bool?,
            body: AddCartRequest,
            onResponse: @escaping (_ response: AddCartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/detail",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(AddCartDetailResponse.self, from: data)
                        
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
        * Summary: Update items in the cart
        * Description: Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
        **/
        public func updateCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            body: UpdateCartRequest,
            onResponse: @escaping (_ response: UpdateCartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/detail",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateCartDetailResponse.self, from: data)
                        
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
        * Summary: Count items in the cart
        * Description: Use this API to get the total number of items present in cart.
        **/
        public func getItemCount(
            id: String?,
            
            onResponse: @escaping (_ response: CartItemCountResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/basic",
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
                        
                        let response = Utility.decode(CartItemCountResponse.self, from: data)
                        
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
        * Summary: Fetch Coupon
        * Description: Use this API to get a list of available coupons along with their details.
        **/
        public func getCoupons(
            id: String?,
            
            onResponse: @escaping (_ response: GetCouponResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/coupon",
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
                        
                        let response = Utility.decode(GetCouponResponse.self, from: data)
                        
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
        * Summary: Apply Coupon
        * Description: Use this API to apply coupons on items in the cart.
        **/
        public func applyCoupon(
            i: Bool?,
            b: Bool?,
            p: Bool?,
            id: String?,
            body: ApplyCouponRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


if let value = p {
    
    xQuery["p"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/coupon",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Remove Coupon Applied
        * Description: Remove Coupon applied on the cart by passing uid in request body.
        **/
        public func removeCoupon(
            id: String?,
            
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/cart/v1.0/coupon",
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Get discount offers based on quantity
        * Description: Use this API to get a list of applicable offers along with current, next and best offer for given product. Either one of uid, item_id, slug should be present.
        **/
        public func getBulkDiscountOffers(
            itemId: Int?,
            articleId: String?,
            uid: Int?,
            slug: String?,
            
            onResponse: @escaping (_ response: BulkPriceResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = itemId {
    
    xQuery["item_id"] = value
    
}


if let value = articleId {
    
    xQuery["article_id"] = value
    
}


if let value = uid {
    
    xQuery["uid"] = value
    
}


if let value = slug {
    
    xQuery["slug"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/bulk-price",
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
                        
                        let response = Utility.decode(BulkPriceResponse.self, from: data)
                        
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
        * Summary: Apply reward points at cart
        * Description: Use this API to redeem a fixed no. of reward points by applying it to the cart.
        **/
        public func applyRewardPoints(
            id: String?,
            i: Bool?,
            b: Bool?,
            body: RewardPointRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/redeem/points/",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Fetch address
        * Description: Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddresses(
            cartId: String?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: GetAddressesResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = cartId {
    
    xQuery["cart_id"] = value
    
}


if let value = mobileNo {
    
    xQuery["mobile_no"] = value
    
}


if let value = checkoutMode {
    
    xQuery["checkout_mode"] = value
    
}


if let value = tags {
    
    xQuery["tags"] = value
    
}


if let value = isDefault {
    
    xQuery["is_default"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/address",
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
                        
                        let response = Utility.decode(GetAddressesResponse.self, from: data)
                        
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
        * Summary: Add address to an account
        * Description: Use this API to add an address to an account.
        **/
        public func addAddress(
            body: Address,
            onResponse: @escaping (_ response: SaveAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/address",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(SaveAddressResponse.self, from: data)
                        
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
        * Summary: Fetch a single address by its ID
        * Description: Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `Address`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddressById(
            id: String,
            cartId: String?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: Address?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = cartId {
    
    xQuery["cart_id"] = value
    
}


if let value = mobileNo {
    
    xQuery["mobile_no"] = value
    
}


if let value = checkoutMode {
    
    xQuery["checkout_mode"] = value
    
}


if let value = tags {
    
    xQuery["tags"] = value
    
}


if let value = isDefault {
    
    xQuery["is_default"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/address/\(id)",
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
                        
                        let response = Utility.decode(Address.self, from: data)
                        
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
        * Summary: Update address added to an account
        * Description: Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>
        **/
        public func updateAddress(
            id: String,
            body: Address,
            onResponse: @escaping (_ response: UpdateAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/address/\(id)",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateAddressResponse.self, from: data)
                        
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
        * Summary: Remove address associated with an account
        * Description: Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.
        **/
        public func removeAddress(
            id: String,
            
            onResponse: @escaping (_ response: DeleteAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/cart/v1.0/address/\(id)",
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
                        
                        let response = Utility.decode(DeleteAddressResponse.self, from: data)
                        
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
        * Summary: Select an address from available addresses
        * Description: <p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>
        **/
        public func selectAddress(
            cartId: String?,
            i: Bool?,
            b: Bool?,
            body: SelectCartAddressRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = cartId {
    
    xQuery["cart_id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/select-address",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Update cart payment
        * Description: Use this API to update cart payment.
        **/
        public func selectPaymentMode(
            id: String?,
            body: UpdateCartPaymentRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/payment",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Verify the coupon eligibility against the payment mode
        * Description: Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.
        **/
        public func validateCouponForPayment(
            id: String?,
            addressId: String?,
            paymentMode: String?,
            paymentIdentifier: String?,
            aggregatorName: String?,
            merchantCode: String?,
            
            onResponse: @escaping (_ response: PaymentCouponValidate?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = addressId {
    
    xQuery["address_id"] = value
    
}


if let value = paymentMode {
    
    xQuery["payment_mode"] = value
    
}


if let value = paymentIdentifier {
    
    xQuery["payment_identifier"] = value
    
}


if let value = aggregatorName {
    
    xQuery["aggregator_name"] = value
    
}


if let value = merchantCode {
    
    xQuery["merchant_code"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/payment/validate/",
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
                        
                        let response = Utility.decode(PaymentCouponValidate.self, from: data)
                        
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
        * Summary: Get delivery date and options before checkout
        * Description: Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.
        **/
        public func getShipments(
            p: Bool?,
            id: String?,
            addressId: String?,
            areaCode: String?,
            
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = p {
    
    xQuery["p"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
}


if let value = addressId {
    
    xQuery["address_id"] = value
    
}


if let value = areaCode {
    
    xQuery["area_code"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/shipment",
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
                        
                        let response = Utility.decode(CartShipmentsResponse.self, from: data)
                        
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
        * Summary: Checkout all items in the cart
        * Description: Use this API to checkout all items in the cart for payment and order generation. For COD, order will be directly generated, whereas for other checkout modes, user will be redirected to a payment gateway.
        **/
        public func checkoutCart(
            body: CartCheckoutDetailRequest,
            onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/checkout",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartCheckoutResponse.self, from: data)
                        
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
        * Summary: Update the cart meta
        * Description: Use this API to update cart meta like checkout_mode and gstin.
        **/
        public func updateCartMeta(
            id: String?,
            body: CartMetaRequest,
            onResponse: @escaping (_ response: CartMetaResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/meta",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartMetaResponse.self, from: data)
                        
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
        * Summary: Generate token for sharing the cart
        * Description: Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.
        **/
        public func getCartShareLink(
            body: GetShareCartLinkRequest,
            onResponse: @escaping (_ response: GetShareCartLinkResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/share-cart",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(GetShareCartLinkResponse.self, from: data)
                        
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
        * Summary: Get details of a shared cart
        * Description: Use this API to get the shared cart details as per the token generated using the share-cart API.
        **/
        public func getCartSharedItems(
            token: String,
            
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/share-cart/\(token)",
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
                        
                        let response = Utility.decode(SharedCartResponse.self, from: data)
                        
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
        * Summary: Merge or replace existing cart
        * Description: Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.
        **/
        public func updateCartWithSharedItems(
            token: String,
            action: String,
            
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/share-cart/\(token)/\(action)",
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
                        
                        let response = Utility.decode(SharedCartResponse.self, from: data)
                        
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
    
    
    
    public class Common {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get countries, states, cities
        * Description: 
        **/
        public func getLocations(
            locationType: String?,
            id: String?,
            
            onResponse: @escaping (_ response: Locations?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = locationType {
    
    xQuery["location_type"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/common/configuration/v1.0/location",
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
                        
                        let response = Utility.decode(Locations.self, from: data)
                        
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
                responseType: "application/json",
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
            id: String,
            body: TicketHistoryPayload,
            onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/lead/v1.0/ticket/\(id)/history",
                query: nil,
                extraHeaders:  [],
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
                responseType: "application/json",
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
                responseType: "application/json",
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
                responseType: "application/json",
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
                responseType: "application/json",
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
                responseType: "application/json",
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
    
    
    
    public class Theme {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get all pages of a theme
        * Description: Use this API to retrieve all the available pages of a theme by its ID.
        **/
        public func getAllPages(
            themeId: String,
            
            onResponse: @escaping (_ response: AllAvailablePageSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/theme/v1.0/\(themeId)/page",
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
                        
                        let response = Utility.decode(AllAvailablePageSchema.self, from: data)
                        
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
        * Summary: Get page of a theme
        * Description: Use this API to retrieve a page of a theme.
        **/
        public func getPage(
            themeId: String,
            pageValue: String,
            
            onResponse: @escaping (_ response: AvailablePageSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/theme/v1.0/\(themeId)/\(pageValue)",
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
                        
                        let response = Utility.decode(AvailablePageSchema.self, from: data)
                        
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
        * Summary: Get the theme currently applied to an application
        * Description: An application has multiple themes, but only one theme can be applied at a time. Use this API to retrieve the theme currently applied to the application.
        **/
        public func getAppliedTheme(
            
            onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/theme/v1.0/applied-theme",
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
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                        
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
        * Summary: Get a theme for a preview
        * Description: A theme can be previewed before applying it. Use this API to retrieve the preview of a theme by its ID.
        **/
        public func getThemeForPreview(
            themeId: String,
            
            onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/theme/v1.0/\(themeId)/preview",
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
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                        
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
    
    
    
    public class User {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Login or Register using Facebook
        * Description: Use this API to login or register using Facebook credentials.
        **/
        public func loginWithFacebook(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/facebook-token",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        
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
        * Summary: Login or Register using Google
        * Description: Use this API to login or register using Google Account credentials.
        **/
        public func loginWithGoogle(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/google-token",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        
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
        * Summary: Login or Register using Google
        * Description: Use this API to login or register using Google Account credentials.
        **/
        public func loginWithGoogleOauth(
            platform: String?,
            
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/authentication/v1.0/login/google",
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
                        
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        
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
        * Summary: Login or Register using Google
        * Description: Use this API to login or register using Google Account credentials.
        **/
        public func loginWithGoogleAndRedirect(
            platform: String?,
            
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/authentication/v1.0/login/google/callback",
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
                        
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        
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
        * Summary: Login or Register using Google on Android
        * Description: Use this API to login or register in Android app using Google Account credentials.
        **/
        public func loginWithGoogleAndroid(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/google-android",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        
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
        * Summary: Login or Register using Google on iOS
        * Description: Use this API to login or register in iOS app using Google Account credentials.
        **/
        public func loginWithGoogleIOS(
            platform: String?,
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/google-ios",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        
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
        * Summary: Login or Register with OTP
        * Description: Use this API to login or register with a One-time Password (OTP) sent via Email or SMS.
        **/
        public func loginWithOTP(
            platform: String?,
            body: SendOtpRequestSchema,
            onResponse: @escaping (_ response: SendOtpResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/otp",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(SendOtpResponse.self, from: data)
                        
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
        * Summary: Login or Register with password
        * Description: Use this API to login or register using an email address and password.
        **/
        public func loginWithEmailAndPassword(
            body: PasswordLoginRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/password",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        
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
        * Summary: Reset Password
        * Description: Use this API to reset a password using the link sent on email.
        **/
        public func sendResetPasswordEmail(
            platform: String?,
            body: SendResetPasswordEmailRequestSchema,
            onResponse: @escaping (_ response: ResetPasswordSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/password/reset",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(ResetPasswordSuccess.self, from: data)
                        
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
        * Summary: Forgot Password
        * Description: Use this API to reset a password using the code sent on email or SMS.
        **/
        public func forgotPassword(
            body: ForgotPasswordRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/password/reset/forgot",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        
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
        * Summary: Reset Password using token
        * Description: Use this API to send code to reset password.
        **/
        public func sendResetToken(
            body: CodeRequestBodySchema,
            onResponse: @escaping (_ response: ResetPasswordSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/password/reset/token",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(ResetPasswordSuccess.self, from: data)
                        
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
        * Summary: Login or Register with token
        * Description: Use this API to login or register using a token for authentication.
        **/
        public func loginWithToken(
            body: TokenRequestBodySchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/token",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        
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
        * Summary: Registration using a form
        * Description: Use this API to perform user registration by sending form data in the request body.
        **/
        public func registerWithForm(
            platform: String?,
            body: FormRegisterRequestSchema,
            onResponse: @escaping (_ response: RegisterFormSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/register/form",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(RegisterFormSuccess.self, from: data)
                        
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
        * Summary: Verify email
        * Description: Use this API to send a verification code to verify an email.
        **/
        public func verifyEmail(
            body: CodeRequestBodySchema,
            onResponse: @escaping (_ response: VerifyEmailSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/verify/email",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(VerifyEmailSuccess.self, from: data)
                        
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
        * Summary: Verify mobile
        * Description: Use this API to send a verification code to verify a mobile number.
        **/
        public func verifyMobile(
            body: CodeRequestBodySchema,
            onResponse: @escaping (_ response: VerifyEmailSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/verify/mobile",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(VerifyEmailSuccess.self, from: data)
                        
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
        * Summary: Check password
        * Description: Use this API to check if user has created a password for login.
        **/
        public func hasPassword(
            
            onResponse: @escaping (_ response: HasPasswordSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/authentication/v1.0/has-password",
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
                        
                        let response = Utility.decode(HasPasswordSuccess.self, from: data)
                        
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
        * Summary: Update user password
        * Description: Use this API to update the password.
        **/
        public func updatePassword(
            body: UpdatePasswordRequestSchema,
            onResponse: @escaping (_ response: VerifyEmailSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/password",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(VerifyEmailSuccess.self, from: data)
                        
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
        * Summary: Logs out currently logged in user
        * Description: Use this API to check to logout a user from the app.
        **/
        public func logout(
            
            onResponse: @escaping (_ response: LogoutSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/authentication/v1.0/logout",
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
                        
                        let response = Utility.decode(LogoutSuccess.self, from: data)
                        
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
        * Summary: Send OTP on mobile
        * Description: Use this API to send an OTP to a mobile number.
        **/
        public func sendOTPOnMobile(
            platform: String?,
            body: SendMobileOtpRequestSchema,
            onResponse: @escaping (_ response: OtpSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/mobile/send",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(OtpSuccess.self, from: data)
                        
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
        * Summary: Verify OTP on mobile
        * Description: Use this API to verify the OTP received on a mobile number.
        **/
        public func verifyMobileOTP(
            platform: String?,
            body: VerifyOtpRequestSchema,
            onResponse: @escaping (_ response: VerifyOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/mobile/verify",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(VerifyOtpSuccess.self, from: data)
                        
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
        * Summary: Send OTP on email
        * Description: Use this API to send an OTP to an email ID.
        **/
        public func sendOTPOnEmail(
            platform: String?,
            body: SendEmailOtpRequestSchema,
            onResponse: @escaping (_ response: EmailOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/email/send",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(EmailOtpSuccess.self, from: data)
                        
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
        * Summary: Verify OTP on email
        * Description: Use this API to verify the OTP received on an email ID.
        **/
        public func verifyEmailOTP(
            platform: String?,
            body: VerifyEmailOtpRequestSchema,
            onResponse: @escaping (_ response: VerifyOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/email/verify",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(VerifyOtpSuccess.self, from: data)
                        
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
        * Summary: Get logged in user
        * Description: Use this API  to get the details of a logged in user.
        **/
        public func getLoggedInUser(
            
            onResponse: @escaping (_ response: UserObjectSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/authentication/v1.0/session",
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
                        
                        let response = Utility.decode(UserObjectSchema.self, from: data)
                        
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
        * Summary: Get list of sessions
        * Description: Use this API to retrieve all active sessions of a user.
        **/
        public func getListOfActiveSessions(
            
            onResponse: @escaping (_ response: SessionListSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/authentication/v1.0/sessions",
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
                        
                        let response = Utility.decode(SessionListSuccess.self, from: data)
                        
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
        * Summary: Get platform configurations
        * Description: Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.
        **/
        public func getPlatformConfig(
            name: String?,
            
            onResponse: @escaping (_ response: PlatformSchema?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = name {
    
    xQuery["name"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/platform/v1.0/config",
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
                        
                        let response = Utility.decode(PlatformSchema.self, from: data)
                        
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
        * Summary: Edit Profile Details
        * Description: Use this API to update details in the user profile. Details can be first name, last name, gender, email, phone number, or profile picture.
        **/
        public func updateProfile(
            platform: String?,
            body: EditProfileRequestSchema,
            onResponse: @escaping (_ response: ProfileEditSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/detail",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(ProfileEditSuccess.self, from: data)
                        
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
        * Summary: Add mobile number to profile
        * Description: Use this API to add a new mobile number to a profile.
        **/
        public func addMobileNumber(
            platform: String?,
            body: EditMobileRequestSchema,
            onResponse: @escaping (_ response: VerifyMobileOTPSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/user/profile/v1.0/mobile",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(VerifyMobileOTPSuccess.self, from: data)
                        
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
        * Summary: Delete mobile number from profile
        * Description: Use this API to delete a mobile number from a profile.
        **/
        public func deleteMobileNumber(
            platform: String?,
            active: Bool,
            primary: Bool,
            verified: Bool,
            countryCode: String,
            phone: String,
            
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}



    xQuery["active"] = active




    xQuery["primary"] = primary




    xQuery["verified"] = verified




    xQuery["country_code"] = countryCode




    xQuery["phone"] = phone



 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/user/profile/v1.0/mobile",
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
                        
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        
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
        * Summary: Set mobile as primary
        * Description: Use this API to set a mobile number as primary. Primary number is a verified number used for all future communications.
        **/
        public func setMobileNumberAsPrimary(
            body: SendVerificationLinkMobileRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/mobile/primary",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        
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
        * Summary: Send verification link to mobile
        * Description: Use this API to send a verification link to a mobile number
        **/
        public func sendVerificationLinkToMobile(
            platform: String?,
            body: SendVerificationLinkMobileRequestSchema,
            onResponse: @escaping (_ response: SendMobileVerifyLinkSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/mobile/link/send",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(SendMobileVerifyLinkSuccess.self, from: data)
                        
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
        * Summary: Add email to profile
        * Description: Use this API to add a new email address to a profile
        **/
        public func addEmail(
            platform: String?,
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: VerifyEmailOTPSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/user/profile/v1.0/email",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(VerifyEmailOTPSuccess.self, from: data)
                        
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
        * Summary: Delete email from profile
        * Description: Use this API to delete an email address from a profile
        **/
        public func deleteEmail(
            platform: String?,
            active: Bool,
            primary: Bool,
            verified: Bool,
            email: String,
            
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}



    xQuery["active"] = active




    xQuery["primary"] = primary




    xQuery["verified"] = verified




    xQuery["email"] = email



 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/user/profile/v1.0/email",
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
                        
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        
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
        * Summary: Set email as primary
        * Description: Use this API to set an email address as primary. Primary email ID is a email address used for all future communications.
        **/
        public func setEmailAsPrimary(
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/email/primary",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        
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
        * Summary: Send verification link to email
        * Description: Use this API to send verification link to an email address.
        **/
        public func sendVerificationLinkToEmail(
            platform: String?,
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: SendEmailVerifyLinkSuccess?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = platform {
    
    xQuery["platform"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/email/link/send",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(SendEmailVerifyLinkSuccess.self, from: data)
                        
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
    
    
    
    public class Content {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get live announcements
        * Description: Announcements are useful to highlight a message or information on top of a webpage. Use this API to retrieve live announcements. Get announcements on individual pages or for all pages.
        **/
        public func getAnnouncements(
            
            onResponse: @escaping (_ response: AnnouncementsResponseSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/announcements",
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
                        
                        let response = Utility.decode(AnnouncementsResponseSchema.self, from: data)
                        
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
        * Summary: Get a blog
        * Description: Use this API to get the details of a blog using its slug. Details include the title, reading time, publish status, feature image, tags, author, etc.
        **/
        public func getBlog(
            slug: String,
            rootId: String?,
            
            onResponse: @escaping (_ response: BlogSchema?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = rootId {
    
    xQuery["root_id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/blogs/\(slug)",
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
                        
                        let response = Utility.decode(BlogSchema.self, from: data)
                        
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
        * Summary: Get a list of blogs
        * Description: Use this API to get all the blogs.
        **/
        public func getBlogs(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: BlogGetResponse?, _ error: FDKError?) -> Void
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
                url: "/service/application/content/v1.0/blogs/",
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
                        
                        let response = Utility.decode(BlogGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getBlogs
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getBlogsPaginator(
            pageSize: Int?
            
            ) -> Paginator<BlogGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<BlogGetResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getBlogs(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Get a list of FAQs
        * Description: Use this API to get a list of frequently asked questions. Users will benefit from it when facing any issue with the website.
        **/
        public func getFaqs(
            
            onResponse: @escaping (_ response: FaqResponseSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq",
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
                        
                        let response = Utility.decode(FaqResponseSchema.self, from: data)
                        
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
        * Summary: Get a list of FAQ categories
        * Description: FAQs can be divided into categories. Use this API to get a list of FAQ categories.
        **/
        public func getFaqCategories(
            
            onResponse: @escaping (_ response: GetFaqCategoriesSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq/categories",
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
                        
                        let response = Utility.decode(GetFaqCategoriesSchema.self, from: data)
                        
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
        * Summary: Get an FAQ
        * Description: Use this API to get a particular FAQ by its slug.
        **/
        public func getFaqBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: FaqSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq/\(slug)",
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
                        
                        let response = Utility.decode(FaqSchema.self, from: data)
                        
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
        * Summary: Get the FAQ category
        * Description: FAQs can be divided into categories. Use this API to get the category to which an FAQ belongs.
        **/
        public func getFaqCategoryBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: GetFaqCategoryBySlugSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq/category/\(slug)",
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
                        
                        let response = Utility.decode(GetFaqCategoryBySlugSchema.self, from: data)
                        
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
        * Summary: Get FAQs using the slug of FAQ category
        * Description: FAQs can be divided into categories. Use this API to get all the FAQs belonging to a category by using the category slug.
        **/
        public func getFaqsByCategorySlug(
            slug: String,
            
            onResponse: @escaping (_ response: GetFaqSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq/category/\(slug)/faqs",
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
                        
                        let response = Utility.decode(GetFaqSchema.self, from: data)
                        
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
        * Summary: Get the landing page
        * Description: Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch the details of a landing page.
        **/
        public func getLandingPage(
            
            onResponse: @escaping (_ response: LandingPageSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/landing-page",
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
                        
                        let response = Utility.decode(LandingPageSchema.self, from: data)
                        
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
        * Summary: Get legal information
        * Description: Use this API to get the legal information of an application, which includes Privacy Policy, Terms and Conditions, Shipping Policy and FAQs regarding the usage of the application.
        **/
        public func getLegalInformation(
            
            onResponse: @escaping (_ response: ApplicationLegal?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/legal",
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
                        
                        let response = Utility.decode(ApplicationLegal.self, from: data)
                        
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
        * Summary: Get the navigation
        * Description: Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the links and sub-navigations.
        **/
        public func getNavigations(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: NavigationGetResponse?, _ error: FDKError?) -> Void
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
                url: "/service/application/content/v1.0/navigations/",
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
                        
                        let response = Utility.decode(NavigationGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getNavigations
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getNavigationsPaginator(
            pageSize: Int?
            
            ) -> Paginator<NavigationGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<NavigationGetResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getNavigations(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Get a page
        * Description: Use this API to get the details of a page using its slug. Details include the title, seo, publish status, feature image, tags, meta, etc.
        **/
        public func getPage(
            slug: String,
            rootId: String?,
            
            onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = rootId {
    
    xQuery["root_id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/pages/\(slug)",
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
                        
                        let response = Utility.decode(PageSchema.self, from: data)
                        
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
        * Summary: Get all pages
        * Description: Use this API to get a list of pages.
        **/
        public func getPages(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: PageGetResponse?, _ error: FDKError?) -> Void
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
                url: "/service/application/content/v1.0/pages/",
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
                        
                        let response = Utility.decode(PageGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getPages
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getPagesPaginator(
            pageSize: Int?
            
            ) -> Paginator<PageGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<PageGetResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getPages(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Get the SEO of an application
        * Description: Use this API to get the SEO details of an application, which includes a robot.txt, meta-tags and sitemap.
        **/
        public func getSEOConfiguration(
            
            onResponse: @escaping (_ response: SeoComponent?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/seo",
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
                        
                        let response = Utility.decode(SeoComponent.self, from: data)
                        
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
        * Summary: Get the slideshows
        * Description: Use this API to get a list of slideshows along with their details.
        **/
        public func getSlideshows(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: SlideshowGetResponse?, _ error: FDKError?) -> Void
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
                url: "/service/application/content/v1.0/slideshow/",
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
                        
                        let response = Utility.decode(SlideshowGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getSlideshows
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getSlideshowsPaginator(
            pageSize: Int?
            
            ) -> Paginator<SlideshowGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<SlideshowGetResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getSlideshows(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Get a slideshow
        * Description: A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a slideshow using its `slug`.
        **/
        public func getSlideshow(
            slug: String,
            
            onResponse: @escaping (_ response: SlideshowSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/slideshow/\(slug)",
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
                        
                        let response = Utility.decode(SlideshowSchema.self, from: data)
                        
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
        * Summary: Get the support information
        * Description: Use this API to get contact details for customer support including emails and phone numbers.
        **/
        public func getSupportInformation(
            
            onResponse: @escaping (_ response: Support?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/support",
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
                        
                        let response = Utility.decode(Support.self, from: data)
                        
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
        * Summary: Get the tags associated with an application
        * Description: Use this API to get all the CSS and JS injected in the application in the form of tags.
        **/
        public func getTags(
            
            onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/tags",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                        
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
    
    
    
    public class Communication {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get communication consent
        * Description: Use this API to retrieve the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp.
        **/
        public func getCommunicationConsent(
            
            onResponse: @escaping (_ response: CommunicationConsent?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/communication/v1.0/consent",
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
                        
                        let response = Utility.decode(CommunicationConsent.self, from: data)
                        
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
        * Summary: Upsert communication consent
        * Description: Use this API to update and insert the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp.
        **/
        public func upsertCommunicationConsent(
            body: CommunicationConsentReq,
            onResponse: @escaping (_ response: CommunicationConsentRes?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/communication/v1.0/consent",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CommunicationConsentRes.self, from: data)
                        
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
        * Summary: Upsert push token of a user
        * Description: Use this API to update and insert the push token of the user.
        **/
        public func upsertAppPushtoken(
            body: PushtokenReq,
            onResponse: @escaping (_ response: PushtokenRes?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/communication/v1.0/pn-token",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(PushtokenRes.self, from: data)
                        
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
    
    
    
    public class Share {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Create QR Code of an app
        * Description: Use this API to create a QR code of an app for sharing it with users who want to use the app.
        **/
        public func getApplicationQRCode(
            
            onResponse: @escaping (_ response: QRCodeResp?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/share/v1.0/qr/",
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
                        
                        let response = Utility.decode(QRCodeResp.self, from: data)
                        
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
        * Summary: Create QR Code of a product
        * Description: Use this API to create a QR code of a product for sharing it with users who want to view/purchase the product.
        **/
        public func getProductQRCodeBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: QRCodeResp?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/share/v1.0/qr/products/\(slug)/",
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
                        
                        let response = Utility.decode(QRCodeResp.self, from: data)
                        
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
        * Summary: Create QR Code of a collection
        * Description: Use this API to create a QR code of a collection of products for sharing it with users who want to view/purchase the collection.
        **/
        public func getCollectionQRCodeBySlug(
            slug: String,
            
            onResponse: @escaping (_ response: QRCodeResp?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/share/v1.0/qr/collection/\(slug)/",
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
                        
                        let response = Utility.decode(QRCodeResp.self, from: data)
                        
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
        * Summary: Create QR Code of a URL
        * Description: Use this API to create a QR code of a URL for sharing it with users who want to visit the link.
        **/
        public func getUrlQRCode(
            url: String,
            
            onResponse: @escaping (_ response: QRCodeResp?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["url"] = url



 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/share/v1.0/qr/url/",
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
                        
                        let response = Utility.decode(QRCodeResp.self, from: data)
                        
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
        * Summary: Create a short link
        * Description: Use this API to create a short link that is easy to write/share/read as compared to long URLs.
        **/
        public func createShortLink(
            body: ShortLinkReq,
            onResponse: @escaping (_ response: ShortLinkRes?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/share/v1.0/links/short-link/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(ShortLinkRes.self, from: data)
                        
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
        * Summary: Get short link by hash
        * Description: Use this API to get a short link by using a hash value.
        **/
        public func getShortLinkByHash(
            hash: String,
            
            onResponse: @escaping (_ response: ShortLinkRes?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/share/v1.0/links/short-link/\(hash)/",
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
                        
                        let response = Utility.decode(ShortLinkRes.self, from: data)
                        
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
        * Summary: Get original link by hash
        * Description: Use this API to retrieve the original link from a short-link by using a hash value.
        **/
        public func getOriginalShortLinkByHash(
            hash: String,
            
            onResponse: @escaping (_ response: ShortLinkRes?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/share/v1.0/links/short-link/\(hash)/original/",
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
                        
                        let response = Utility.decode(ShortLinkRes.self, from: data)
                        
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
        * Summary: Initiates an upload and returns a storage link that is valid for 30 minutes. You can use the storage link to make subsequent upload request with file buffer or blob.
        * Description: Use this API to perform the first step of uploading (i.e. **Start**) an arbitrarily sized buffer or blob.

The three major steps are:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns a storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

### Complete
After successfully upload, call the `completeUpload` API to finish the upload process.
This operation will return the URL of the uploaded file.

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
                responseType: "application/json",
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
        * Summary: Completes the upload process. After successfully uploading a file, call this API to finish the upload process.
        * Description: Use this API to perform the third step of uploading (i.e. **Complete**) an arbitrarily sized buffer or blob.

The three major steps are:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns a storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

### Complete
After successfully upload, call the `completeUpload` API to finish the upload process.
This operation will return the URL of the uploaded file.

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
                responseType: "application/json",
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
    
    
    
    public class Configuration {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get current application details
        * Description: Use this API to get the current application details which includes configurations that indicate the status of the website, domain, ID, tokens, images, etc.
        **/
        public func getApplication(
            
            onResponse: @escaping (_ response: Application?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/application",
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
                        
                        let response = Utility.decode(Application.self, from: data)
                        
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
        * Summary: Get application, owner and seller information
        * Description: Use this API to get the current application details which includes channel name, description, banner, logo, favicon, domain details, etc. This API also retrieves the seller and owner information such as address, email address, and phone number.
        **/
        public func getOwnerInfo(
            
            onResponse: @escaping (_ response: ApplicationAboutResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/about",
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
                        
                        let response = Utility.decode(ApplicationAboutResponse.self, from: data)
                        
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
        * Summary: Get basic application details
        * Description: Use this API to retrieve only the basic details of the application which includes channel name, description, banner, logo, favicon, domain details, etc.
        **/
        public func getBasicDetails(
            
            onResponse: @escaping (_ response: ApplicationDetail?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/detail",
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
                        
                        let response = Utility.decode(ApplicationDetail.self, from: data)
                        
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
        * Summary: Get integration tokens
        * Description: Use this API to retrieve the tokens used while integrating Firebase, MoEngage, Segment, GTM, Freshchat, Safetynet, Google Map and Facebook. **Note** - Token values are encrypted with AES encryption using a secret key. Kindly reach out to the developers for obtaining the secret key.
        **/
        public func getIntegrationTokens(
            
            onResponse: @escaping (_ response: AppTokenResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/token",
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
                        
                        let response = Utility.decode(AppTokenResponse.self, from: data)
                        
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
        * Summary: Get deployment stores
        * Description: Use this API to retrieve the details of all the deployment stores (the selling locations where the application will be utilized for placing orders).
        **/
        public func getOrderingStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            
            onResponse: @escaping (_ response: OrderingStores?, _ error: FDKError?) -> Void
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


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/ordering-store/stores",
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
                        
                        let response = Utility.decode(OrderingStores.self, from: data)
                        
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
        * Summary: get paginator for getOrderingStores
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getOrderingStoresPaginator(
            pageSize: Int?,
            q: String?
            
            ) -> Paginator<OrderingStores> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<OrderingStores>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getOrderingStores(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        q: q
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
        * Summary: Get ordering store details
        * Description: Use this API to retrieve the details of given stores uid (the selling locations where the application will be utilized for placing orders).
        **/
        public func getStoreDetailById(
            storeId: Int,
            
            onResponse: @escaping (_ response: OrderingStore?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/ordering-store/stores/\(storeId)",
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
                        
                        let response = Utility.decode(OrderingStore.self, from: data)
                        
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
        * Summary: Get features of application
        * Description: Use this API to retrieve the configuration of features such as product detail, landing page, options in the login/registration screen, communication opt-in, cart options and many more.
        **/
        public func getFeatures(
            
            onResponse: @escaping (_ response: AppFeatureResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/feature",
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
                        
                        let response = Utility.decode(AppFeatureResponse.self, from: data)
                        
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
        * Summary: Get application information
        * Description: Use this API to retrieve information about the social links, address and contact information of the company/seller/brand operating the application.
        **/
        public func getContactInfo(
            
            onResponse: @escaping (_ response: ApplicationInformation?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/information",
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
                        
                        let response = Utility.decode(ApplicationInformation.self, from: data)
                        
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
        * Summary: Get all currencies list
        * Description: Use this API to get a list of currencies available. Moreover, get the name, code, symbol, and the decimal digits of the currencies.
        **/
        public func getCurrencies(
            
            onResponse: @escaping (_ response: CurrenciesResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/currencies",
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
                        
                        let response = Utility.decode(CurrenciesResponse.self, from: data)
                        
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
        * Summary: Get currency by its ID
        * Description: Use this API to retrieve a currency using its ID.
        **/
        public func getCurrencyById(
            id: String,
            
            onResponse: @escaping (_ response: Currency?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/currency/\(id)",
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
                        
                        let response = Utility.decode(Currency.self, from: data)
                        
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
        * Summary: Get currencies enabled in the application
        * Description: Use this API to get a list of currencies allowed in the current application. Moreover, get the name, code, symbol, and the decimal digits of the currencies.
        **/
        public func getAppCurrencies(
            
            onResponse: @escaping (_ response: AppCurrencyResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/currency",
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
                        
                        let response = Utility.decode(AppCurrencyResponse.self, from: data)
                        
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
        * Summary: Get list of languages
        * Description: Use this API to get a list of languages supported in the application.
        **/
        public func getLanguages(
            
            onResponse: @escaping (_ response: LanguageResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/languages",
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
                        
                        let response = Utility.decode(LanguageResponse.self, from: data)
                        
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
        * Summary: Get an Ordering Store signed cookie on selection of ordering store.
        * Description: Use this API to get an Ordering Store signed cookie upon selecting an ordering store. This will be used by the cart service to verify a coupon against the selected ordering store in cart.
        **/
        public func getOrderingStoreCookie(
            body: OrderingStoreSelectRequest,
            onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/configuration/v1.0/ordering-store/select",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)
                        
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
        * Summary: Unset the Ordering Store signed cookie.
        * Description: Use this API to unset the Ordering Store cookie upon changing the sales channel, by its domain URL, in the Universal Fynd Store app.
        **/
        public func removeOrderingStoreCookie(
            
            onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/configuration/v1.0/ordering-store/select",
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
                        
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)
                        
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
        * Summary: Get a list of staff.
        * Description: Use this API to get a list of staff including the names, employee code, incentive status, assigned ordering stores, and title of each staff added to the application.
        **/
        public func getAppStaffs(
            pageNo: Int?,
            pageSize: Int?,
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?,
            permission: String?,
            
            onResponse: @escaping (_ response: AppStaffResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = orderIncent {
    
    xQuery["order_incent"] = value
    
}


if let value = orderingStore {
    
    xQuery["ordering_store"] = value
    
}


if let value = user {
    
    xQuery["user"] = value
    
}


if let value = permission {
    
    xQuery["permission"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/staff",
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
                        
                        let response = Utility.decode(AppStaffResponse.self, from: data)
                        
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
        * Summary: get paginator for getAppStaffs
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getAppStaffsPaginator(
            pageSize: Int?,
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?,
            permission: String?
            
            ) -> Paginator<AppStaffResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<AppStaffResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getAppStaffs(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        orderIncent: orderIncent,
                        orderingStore: orderingStore,
                        user: user,
                        permission: permission
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
        
        
    }
    
    
    
    public class Payment {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get payment gateway keys
        * Description: Use this API to retrieve the payment gateway key, secrets, merchant, SDK/API details to complete a payment at front-end.
        **/
        public func getAggregatorsConfig(
            xApiToken: String?,
            refresh: Bool?,
            
            onResponse: @escaping (_ response: AggregatorsConfigDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = refresh {
    
    xQuery["refresh"] = value
    
}


var xHeaders: [(key: String, value: String)] = [] 

if let value = xApiToken {
    
    xHeaders.append((key: "x-api-token", value: value))
    
}


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/config/aggregators/key",
                query: xQuery,
                extraHeaders:  xHeaders,
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
        * Description: Use this API to attach a customer's saved card at the payment gateway, such as Stripe, Juspay.
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
                responseType: "application/json",
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
        * Summary: Fetch active payment gateway for card payments
        * Description: Use this API to retrieve an active payment aggregator along with the Customer ID. This is applicable for cards payments only.
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
                responseType: "application/json",
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
        * Summary: Fetch the list of cards saved by the user
        * Description: Use this API to retrieve a list of cards stored by user from an active payment gateway.
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
                responseType: "application/json",
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
        * Summary: Delete a card
        * Description: Use this API to delete a card added by a user on the payment gateway and clear the cache.
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
                responseType: "application/json",
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
        * Summary: Validate customer for payment
        * Description: Use this API to check if the customer is eligible to use credit-line facilities such as Simpl Pay Later and Rupifi.
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
                responseType: "application/json",
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
        * Description: Use this API to verify and check the status of a payment transaction (server-to-server) made through aggregators like Simpl and Mswipe.
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
                responseType: "application/json",
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
        * Summary: Initialize a payment (server-to-server) for UPI and BharatQR
        * Description: PUse this API to inititate payment using UPI, BharatQR, wherein the UPI requests are send to the app and QR code is displayed on the screen.
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
                responseType: "application/json",
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
        * Summary: Performs continuous polling to check status of payment on the server
        * Description: Use this API to perform continuous polling at intervals to check the status of payment until timeout.
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
                responseType: "application/json",
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
        * Summary: Get applicable payment options
        * Description: Use this API to get all valid payment options for doing a payment.
        **/
        public func getPaymentModeRoutes(
            amount: Int,
            cartId: String,
            pincode: String,
            checkoutMode: String,
            refresh: Bool?,
            cardReference: String?,
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


if let value = cardReference {
    
    xQuery["card_reference"] = value
    
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
                responseType: "application/json",
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
        * Summary: Get applicable payment options for Point-of-Sale (POS)
        * Description: Use this API to get all valid payment options for doing a payment in POS.
        **/
        public func getPosPaymentModeRoutes(
            amount: Int,
            cartId: String,
            pincode: String,
            checkoutMode: String,
            refresh: Bool?,
            cardReference: String?,
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


if let value = cardReference {
    
    xQuery["card_reference"] = value
    
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
                responseType: "application/json",
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
        * Summary: Get CreditLine Offer
        * Description: Get CreditLine Offer if user is tentatively approved by rupifi
        **/
        public func getRupifiBannerDetails(
            
            onResponse: @escaping (_ response: RupifiBannerResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/rupifi/banner",
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
                        
                        let response = Utility.decode(RupifiBannerResponse.self, from: data)
                        
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
        * Summary: Lists the mode of refund
        * Description: Use this API to retrieve eligible refund modes (such as Netbanking) and add the beneficiary details.
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
                responseType: "application/json",
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
        * Summary: Enable/Disable a mode for transferring a refund
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
                responseType: "application/json",
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
        * Summary: Lists the beneficiary of a refund
        * Description: Use this API to get the details of all active beneficiary added by a user for refund.
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
                responseType: "application/json",
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
        * Summary: Verify IFSC Code
        * Description: Use this API to check whether the 11-digit IFSC code is valid and to fetch the bank details for refund.
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
                responseType: "application/json",
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
        * Summary: Lists the beneficiary of a refund
        * Description: Use this API to get the details of all active beneficiary added by a user for refund.
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
                responseType: "application/json",
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
        * Summary: Verify the beneficiary details using OTP
        * Description: Use this API to perform an OTP validation before saving the beneficiary details added for a refund.
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
                responseType: "application/json",
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
        * Description: Use this API to save the bank details for a returned or cancelled order to refund the amount.
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
                responseType: "application/json",
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
        * Summary: Save bank details for cancelled/returned order
        * Description: Use this API to save bank details for returned/cancelled order to refund amount in his account.
        **/
        public func addRefundBankAccountUsingOTP(
            body: AddBeneficiaryDetailsOTPRequest,
            onResponse: @escaping (_ response: RefundAccountResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/payment/v1.0/refund/account/otp",
                query: nil,
                extraHeaders:  [],
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
        * Summary: Send OTP on adding a wallet beneficiary
        * Description: Use this API to send an OTP while adding a wallet beneficiary by mobile no. verification.
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
                responseType: "application/json",
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
        * Summary: Set a default beneficiary for a refund
        * Description: Use this API to set a default beneficiary for getting a refund.
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
                responseType: "application/json",
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
        * Summary: Get all orders
        * Description: Use this API to retrieve all the orders.
        **/
        public func getOrders(
            pageNo: Int?,
            pageSize: Int?,
            fromDate: String?,
            toDate: String?,
            status: Int?,
            
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


if let value = status {
    
    xQuery["status"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders",
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
        * Summary: Get details of an order
        * Description: Use this API to retrieve order details such as tracking details, shipment, store information using Fynd Order ID.
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
                responseType: "application/json",
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
        * Summary: Get details of a shipment
        * Description: Use this API to retrieve shipment details such as price breakup, tracking details, store information, etc. using Shipment ID.
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
                responseType: "application/json",
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
        * Summary: Get reasons behind full or partial cancellation of a shipment
        * Description: Use this API to retrieve the issues that led to the cancellation of bags within a shipment.
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
                responseType: "application/json",
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
        * Summary: Update the shipment status
        * Description: Use this API to update the status of a shipment using its shipment ID.
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
                responseType: "application/json",
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
        * Summary: Track shipment
        * Description: Use this API to track a shipment using its shipment ID.
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
                responseType: "application/json",
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
        * Summary: Get POS Order
        * Description: Use this API to retrieve a POS order and all its details such as tracking details, shipment, store information using Fynd Order ID.
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
                responseType: "application/json",
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
        
        
        
        
        /**
        *
        * Summary: Get Customer Details by Shipment Id
        * Description: Use this API to retrieve customer details such as mobileno using Shipment ID.
        **/
        public func getCustomerDetailsByShipmentId(
            orderId: String,
            shipmentId: String,
            
            onResponse: @escaping (_ response: CustomerDetailsByShipmentId?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders/\(orderId)/shipments/\(shipmentId)/customer-details",
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
                        
                        let response = Utility.decode(CustomerDetailsByShipmentId.self, from: data)
                        
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
        * Summary: Send and Resend Otp code to Order-Shipment customer
        * Description: Use this API to send OTP to the customer of the mapped Shipment.
        **/
        public func sendOtpToShipmentCustomer(
            orderId: String,
            shipmentId: String,
            
            onResponse: @escaping (_ response: sendOTPApplicationResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/order/v1.0/orders/\(orderId)/shipments/\(shipmentId)/otp/send/",
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
                        
                        let response = Utility.decode(sendOTPApplicationResponse.self, from: data)
                        
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
        * Summary: Verify Otp code
        * Description: Use this API to verify OTP and create a session token with custom payload.
        **/
        public func verifyOtpShipmentCustomer(
            orderId: String,
            shipmentId: String,
            body: ReqBodyVerifyOTPShipment,
            onResponse: @escaping (_ response: ResponseVerifyOTPShipment?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/order/v1.0/orders/\(orderId)/shipments/\(shipmentId)/otp/verify",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(ResponseVerifyOTPShipment.self, from: data)
                        
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
    
    
    
    public class Rewards {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Get the eligibility of reward points on a product
        * Description: Use this API to evaluate the amount of reward points that could be earned on any catalogue product.
        **/
        public func getPointsOnProduct(
            body: CatalogueOrderRequest,
            onResponse: @escaping (_ response: CatalogueOrderResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/rewards/v1.0/catalogue/offer/order/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CatalogueOrderResponse.self, from: data)
                        
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
        * Summary: Get offer by name
        * Description: Use this API to get the offer details and configuration by entering the name of the offer.
        **/
        public func getOfferByName(
            name: String,
            
            onResponse: @escaping (_ response: Offer?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/rewards/v1.0/offers/\(name)/",
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
                        
                        let response = Utility.decode(Offer.self, from: data)
                        
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
        * Summary: Calculates the discount on order-amount
        * Description: Use this API to calculate the discount on order-amount based on all the amount range configured in order_discount.
        **/
        public func getOrderDiscount(
            body: OrderDiscountRequest,
            onResponse: @escaping (_ response: OrderDiscountResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/rewards/v1.0/user/offers/order-discount/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(OrderDiscountResponse.self, from: data)
                        
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
        * Summary: Get reward points available with a user
        * Description: Use this API to retrieve total available points of a user for current application
        **/
        public func getUserPoints(
            
            onResponse: @escaping (_ response: PointsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/rewards/v1.0/user/points/",
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
                        
                        let response = Utility.decode(PointsResponse.self, from: data)
                        
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
        * Summary: Get all transactions of reward points
        * Description: Use this API to get a list of points transactions. The list of points history is paginated.
        **/
        public func getUserPointsHistory(
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: PointsHistoryResponse?, _ error: FDKError?) -> Void
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
                url: "/service/application/rewards/v1.0/user/points/history/",
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
                        
                        let response = Utility.decode(PointsHistoryResponse.self, from: data)
                        
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
        * Summary: get paginator for getUserPointsHistory
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getUserPointsHistoryPaginator(
            pageSize: Int?
            
            ) -> Paginator<PointsHistoryResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<PointsHistoryResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getUserPointsHistory(
                        
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get referral details of a user
        * Description: Use this API to retrieve the referral details a user has configured in the application.
        **/
        public func getUserReferralDetails(
            
            onResponse: @escaping (_ response: ReferralDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/rewards/v1.0/user/referral/",
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
                        
                        let response = Utility.decode(ReferralDetailsResponse.self, from: data)
                        
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
        * Summary: Redeems a referral code and credits reward points to users
        * Description: Use this API to enter a referral code following which, the configured points would be credited to a user's reward points account.
        **/
        public func redeemReferralCode(
            body: RedeemReferralCodeRequest,
            onResponse: @escaping (_ response: RedeemReferralCodeResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/rewards/v1.0/user/referral/redeem/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(RedeemReferralCodeResponse.self, from: data)
                        
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
    
    
    
    public class Feedback {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Post a new abuse request
        * Description: Use this API to report a specific entity (question/review/comment) for abuse.
        **/
        public func createAbuseReport(
            body: ReportAbuseRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/abuse/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(InsertResponse.self, from: data)
                        
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
        * Summary: Update abuse details
        * Description: Use this API to update the abuse details, i.e. status and description.
        **/
        public func updateAbuseReport(
            body: UpdateAbuseStatusRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/abuse/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Get a list of abuse data
        * Description: Use this API to retrieve a list of abuse data from entity type and entity ID.
        **/
        public func getAbuseReports(
            entityId: String,
            entityType: String,
            id: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ReportAbuseGetResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
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
                url: "/service/application/feedback/v1.0/abuse/entity/\(entityType)/entityId/\(entityId)",
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
                        
                        let response = Utility.decode(ReportAbuseGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getAbuseReports
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getAbuseReportsPaginator(
            entityId: String,
            entityType: String,
            id: String?,
            pageSize: Int?
            
            ) -> Paginator<ReportAbuseGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ReportAbuseGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getAbuseReports(
                        
                        entityId: entityId,
                        entityType: entityType,
                        id: id,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get a list of attribute data
        * Description: Use this API to retrieve a list of all attribute data, e.g. quality, material, product fitting, packaging, etc.
        **/
        public func getAttributes(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: AttributeResponse?, _ error: FDKError?) -> Void
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
                url: "/service/application/feedback/v1.0/attributes/",
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
                        
                        let response = Utility.decode(AttributeResponse.self, from: data)
                        
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
        * Summary: get paginator for getAttributes
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getAttributesPaginator(
            pageSize: Int?
            
            ) -> Paginator<AttributeResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<AttributeResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getAttributes(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Add a new attribute request
        * Description: Use this API to add a new attribute (e.g. product quality/material/value for money) with its name, slug and description.
        **/
        public func createAttribute(
            body: SaveAttributeRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/attributes/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(InsertResponse.self, from: data)
                        
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
        * Summary: Get data of a single attribute
        * Description: Use this API to retrieve a single attribute data from a given slug.
        **/
        public func getAttribute(
            slug: String,
            
            onResponse: @escaping (_ response: Attribute?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/attributes/\(slug)",
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
                        
                        let response = Utility.decode(Attribute.self, from: data)
                        
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
        * Summary: Update details of an attribute 
        * Description: Use this API update the attribute's name and description.
        **/
        public func updateAttribute(
            slug: String,
            body: UpdateAttributeRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/attributes/\(slug)",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Post a new comment
        * Description: Use this API to add a new comment for a specific entity.
        **/
        public func createComment(
            body: CommentRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/comment/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(InsertResponse.self, from: data)
                        
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
        * Summary: Update the status of a comment
        * Description: Use this API to update the comment status (active or approve) along with new comment if any.
        **/
        public func updateComment(
            body: UpdateCommentRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/comment/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Get a list of comments
        * Description: Use this API to retrieve a list of comments for a specific entity type, e.g. products.
        **/
        public func getComments(
            entityType: String,
            id: String?,
            entityId: String?,
            userId: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: CommentGetResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = entityId {
    
    xQuery["entity_id"] = value
    
}


if let value = userId {
    
    xQuery["user_id"] = value
    
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
                url: "/service/application/feedback/v1.0/comment/entity/\(entityType)",
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
                        
                        let response = Utility.decode(CommentGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getComments
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getCommentsPaginator(
            entityType: String,
            id: String?,
            entityId: String?,
            userId: String?,
            pageSize: Int?
            
            ) -> Paginator<CommentGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<CommentGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getComments(
                        
                        entityType: entityType,
                        id: id,
                        entityId: entityId,
                        userId: userId,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Checks eligibility to rate and review, and shows the cloud media configuration
        * Description: Use this API to check whether an entity is eligible to be rated and reviewed. Moreover, it shows the cloud media configuration too.
        **/
        public func checkEligibility(
            entityType: String,
            entityId: String,
            
            onResponse: @escaping (_ response: CheckEligibilityResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/config/entity/\(entityType)/entityId/\(entityId)",
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
                        
                        let response = Utility.decode(CheckEligibilityResponse.self, from: data)
                        
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
        * Summary: Delete Media
        * Description: Use this API to delete media for an entity ID.
        **/
        public func deleteMedia(
            ids: [String],
            
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["ids"] = ids



 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/feedback/v1.0/media/",
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Add Media
        * Description: Use this API to add media to an entity, e.g. review.
        **/
        public func createMedia(
            body: AddMediaListRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/media/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(InsertResponse.self, from: data)
                        
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
        * Summary: Update Media
        * Description: Use this API to update media (archive/approve) for an entity.
        **/
        public func updateMedia(
            body: UpdateMediaListRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/media/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Get Media
        * Description: Use this API to retrieve all media from an entity.
        **/
        public func getMedias(
            entityType: String,
            entityId: String,
            id: String?,
            type: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: MediaGetResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = type {
    
    xQuery["type"] = value
    
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
                url: "/service/application/feedback/v1.0/media/entity/\(entityType)/entityId/\(entityId)",
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
                        
                        let response = Utility.decode(MediaGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getMedias
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getMediasPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            type: String?,
            pageSize: Int?
            
            ) -> Paginator<MediaGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<MediaGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getMedias(
                        
                        entityType: entityType,
                        entityId: entityId,
                        id: id,
                        type: type,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get a review summary
        * Description: Review summary gives ratings and attribute metrics of a review per entity. Use this API to retrieve the following response data: review count, rating average. 'review metrics'/'attribute rating metrics' which contains name, type, average and count.
        **/
        public func getReviewSummaries(
            entityType: String,
            entityId: String,
            id: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ReviewMetricGetResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
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
                url: "/service/application/feedback/v1.0/rating/summary/entity/\(entityType)/entityId/\(entityId)",
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
                        
                        let response = Utility.decode(ReviewMetricGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getReviewSummaries
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getReviewSummariesPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            pageSize: Int?
            
            ) -> Paginator<ReviewMetricGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ReviewMetricGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getReviewSummaries(
                        
                        entityType: entityType,
                        entityId: entityId,
                        id: id,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Add customer reviews
        * Description: Use this API to add customer reviews for a specific entity along with the following data: attributes rating, entity rating, title, description, media resources and template ID.
        **/
        public func createReview(
            body: UpdateReviewRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/review/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Update customer reviews
        * Description: Use this API to update customer reviews for a specific entity along with following data: attributes rating, entity rating, title, description, media resources and template ID.
        **/
        public func updateReview(
            body: UpdateReviewRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/review/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Get list of customer reviews
        * Description: Use this API to retrieve a list of customer reviews based on entity and filters provided.
        **/
        public func getReviews(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            media: String?,
            rating: [Double]?,
            attributeRating: [String]?,
            facets: Bool?,
            sort: String?,
            active: Bool?,
            approve: Bool?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ReviewGetResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = userId {
    
    xQuery["user_id"] = value
    
}


if let value = media {
    
    xQuery["media"] = value
    
}


if let value = rating {
    
    xQuery["rating"] = value
    
}


if let value = attributeRating {
    
    xQuery["attribute_rating"] = value
    
}


if let value = facets {
    
    xQuery["facets"] = value
    
}


if let value = sort {
    
    xQuery["sort"] = value
    
}


if let value = active {
    
    xQuery["active"] = value
    
}


if let value = approve {
    
    xQuery["approve"] = value
    
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
                url: "/service/application/feedback/v1.0/review/entity/\(entityType)/entityId/\(entityId)",
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
                        
                        let response = Utility.decode(ReviewGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getReviews
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getReviewsPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            media: String?,
            rating: [Double]?,
            attributeRating: [String]?,
            facets: Bool?,
            sort: String?,
            active: Bool?,
            approve: Bool?,
            pageSize: Int?
            
            ) -> Paginator<ReviewGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ReviewGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getReviews(
                        
                        entityType: entityType,
                        entityId: entityId,
                        id: id,
                        userId: userId,
                        media: media,
                        rating: rating,
                        attributeRating: attributeRating,
                        facets: facets,
                        sort: sort,
                        active: active,
                        approve: approve,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get the feedback templates for a product or l3
        * Description: Use this API to retrieve the details of the following feedback template. order, delivered, application, seller, order, placed, product
        **/
        public func getTemplates(
            templateId: String?,
            entityId: String?,
            entityType: String?,
            
            onResponse: @escaping (_ response: TemplateGetResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = templateId {
    
    xQuery["template_id"] = value
    
}


if let value = entityId {
    
    xQuery["entity_id"] = value
    
}


if let value = entityType {
    
    xQuery["entity_type"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/template/",
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
                        
                        let response = Utility.decode(TemplateGetResponse.self, from: data)
                        
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
        * Summary: Create a new question
        * Description: Use this API to create a new question with following data- tags, text, type, choices for MCQ type questions, maximum length of answer.
        **/
        public func createQuestion(
            body: CreateQNARequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/template/qna/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(InsertResponse.self, from: data)
                        
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
        * Summary: Update a question
        * Description: Use this API to update the status of a question, its tags and its choices.
        **/
        public func updateQuestion(
            body: UpdateQNARequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/template/qna/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
        * Summary: Get a list of QnA
        * Description: Use this API to retrieve a list of questions and answers for a given entity.
        **/
        public func getQuestionAndAnswers(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            showAnswer: Bool?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: QNAGetResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = userId {
    
    xQuery["user_id"] = value
    
}


if let value = showAnswer {
    
    xQuery["show_answer"] = value
    
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
                url: "/service/application/feedback/v1.0/template/qna/entity/\(entityType)/entityId/\(entityId)",
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
                        
                        let response = Utility.decode(QNAGetResponse.self, from: data)
                        
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
        * Summary: get paginator for getQuestionAndAnswers
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getQuestionAndAnswersPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            showAnswer: Bool?,
            pageSize: Int?
            
            ) -> Paginator<QNAGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<QNAGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getQuestionAndAnswers(
                        
                        entityType: entityType,
                        entityId: entityId,
                        id: id,
                        userId: userId,
                        showAnswer: showAnswer,
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get a list of votes
        * Description: Use this API to retrieve a list of votes of a current logged in user. Votes can be filtered using `ref_type`, i.e. review | comment.
        **/
        public func getVotes(
            id: String?,
            refType: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: VoteResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = refType {
    
    xQuery["ref_type"] = value
    
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
                url: "/service/application/feedback/v1.0/vote/",
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
                        
                        let response = Utility.decode(VoteResponse.self, from: data)
                        
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
        * Summary: get paginator for getVotes
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getVotesPaginator(
            id: String?,
            refType: String?,
            pageSize: Int?
            
            ) -> Paginator<VoteResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<VoteResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getVotes(
                        
                        id: id,
                        refType: refType,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Create a new vote
        * Description: Use this API to create a new vote, where the action could be an upvote or a downvote. This is useful when you want to give a vote (say upvote) to a review (ref_type) of a product (entity_type).
        **/
        public func createVote(
            body: VoteRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/vote/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(InsertResponse.self, from: data)
                        
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
        * Summary: Update a vote
        * Description: Use this API to update a vote with a new action, i.e. either an upvote or a downvote.
        **/
        public func updateVote(
            body: UpdateVoteRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/vote/",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
                        
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
    
    
    
    public class PosCart {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        
        
        /**
        *
        * Summary: Fetch all items added to the cart
        * Description: Use this API to get details of all the items added to a cart.
        **/
        public func getCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            assignCardId: Int?,
            
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


if let value = assignCardId {
    
    xQuery["assign_card_id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/detail",
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Fetch last-modified timestamp
        * Description: Use this API to fetch Last-Modified timestamp in header metadata.
        **/
        public func getCartLastModified(
            id: String?,
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "head",
                url: "/service/application/pos/cart/v1.0/detail",
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
                        
                        let response = data.dictionary
                        
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
        * Summary: Add items to cart
        * Description: Use this API to add items to the cart.
        **/
        public func addItems(
            i: Bool?,
            b: Bool?,
            body: AddCartRequest,
            onResponse: @escaping (_ response: AddCartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/detail",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(AddCartDetailResponse.self, from: data)
                        
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
        * Summary: Update items in the cart
        * Description: Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
        **/
        public func updateCart(
            id: String?,
            i: Bool?,
            b: Bool?,
            body: UpdateCartRequest,
            onResponse: @escaping (_ response: UpdateCartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/detail",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateCartDetailResponse.self, from: data)
                        
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
        * Summary: Count items in the cart
        * Description: Use this API to get the total number of items present in cart.
        **/
        public func getItemCount(
            id: String?,
            
            onResponse: @escaping (_ response: CartItemCountResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/basic",
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
                        
                        let response = Utility.decode(CartItemCountResponse.self, from: data)
                        
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
        * Summary: Fetch Coupon
        * Description: Use this API to get a list of available coupons along with their details.
        **/
        public func getCoupons(
            id: String?,
            
            onResponse: @escaping (_ response: GetCouponResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/coupon",
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
                        
                        let response = Utility.decode(GetCouponResponse.self, from: data)
                        
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
        * Summary: Apply Coupon
        * Description: Use this API to apply coupons on items in the cart.
        **/
        public func applyCoupon(
            i: Bool?,
            b: Bool?,
            p: Bool?,
            id: String?,
            body: ApplyCouponRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


if let value = p {
    
    xQuery["p"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/coupon",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Remove Coupon Applied
        * Description: Remove Coupon applied on the cart by passing uid in request body.
        **/
        public func removeCoupon(
            id: String?,
            
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/pos/cart/v1.0/coupon",
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Get discount offers based on quantity
        * Description: Use this API to get a list of applicable offers along with current, next and best offer for given product. Either one of uid, item_id, slug should be present.
        **/
        public func getBulkDiscountOffers(
            itemId: Int?,
            articleId: String?,
            uid: Int?,
            slug: String?,
            
            onResponse: @escaping (_ response: BulkPriceResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = itemId {
    
    xQuery["item_id"] = value
    
}


if let value = articleId {
    
    xQuery["article_id"] = value
    
}


if let value = uid {
    
    xQuery["uid"] = value
    
}


if let value = slug {
    
    xQuery["slug"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/bulk-price",
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
                        
                        let response = Utility.decode(BulkPriceResponse.self, from: data)
                        
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
        * Summary: Apply reward points at cart
        * Description: Use this API to redeem a fixed no. of reward points by applying it to the cart.
        **/
        public func applyRewardPoints(
            id: String?,
            i: Bool?,
            b: Bool?,
            body: RewardPointRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/redeem/points/",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Fetch address
        * Description: Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddresses(
            cartId: String?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: GetAddressesResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = cartId {
    
    xQuery["cart_id"] = value
    
}


if let value = mobileNo {
    
    xQuery["mobile_no"] = value
    
}


if let value = checkoutMode {
    
    xQuery["checkout_mode"] = value
    
}


if let value = tags {
    
    xQuery["tags"] = value
    
}


if let value = isDefault {
    
    xQuery["is_default"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/address",
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
                        
                        let response = Utility.decode(GetAddressesResponse.self, from: data)
                        
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
        * Summary: Add address to an account
        * Description: Use this API to add an address to an account.
        **/
        public func addAddress(
            body: Address,
            onResponse: @escaping (_ response: SaveAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/address",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(SaveAddressResponse.self, from: data)
                        
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
        * Summary: Fetch a single address by its ID
        * Description: Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `Address`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddressById(
            id: String,
            cartId: String?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: String?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: Address?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = cartId {
    
    xQuery["cart_id"] = value
    
}


if let value = mobileNo {
    
    xQuery["mobile_no"] = value
    
}


if let value = checkoutMode {
    
    xQuery["checkout_mode"] = value
    
}


if let value = tags {
    
    xQuery["tags"] = value
    
}


if let value = isDefault {
    
    xQuery["is_default"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/address/\(id)",
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
                        
                        let response = Utility.decode(Address.self, from: data)
                        
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
        * Summary: Update address added to an account
        * Description: Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>
        **/
        public func updateAddress(
            id: String,
            body: Address,
            onResponse: @escaping (_ response: UpdateAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/address/\(id)",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(UpdateAddressResponse.self, from: data)
                        
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
        * Summary: Remove address associated with an account
        * Description: Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.
        **/
        public func removeAddress(
            id: String,
            
            onResponse: @escaping (_ response: DeleteAddressResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/pos/cart/v1.0/address/\(id)",
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
                        
                        let response = Utility.decode(DeleteAddressResponse.self, from: data)
                        
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
        * Summary: Select an address from available addresses
        * Description: <p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>
        **/
        public func selectAddress(
            cartId: String?,
            i: Bool?,
            b: Bool?,
            body: SelectCartAddressRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = cartId {
    
    xQuery["cart_id"] = value
    
}


if let value = i {
    
    xQuery["i"] = value
    
}


if let value = b {
    
    xQuery["b"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/select-address",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Update cart payment
        * Description: Use this API to update cart payment.
        **/
        public func selectPaymentMode(
            id: String?,
            body: UpdateCartPaymentRequest,
            onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/payment",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartDetailResponse.self, from: data)
                        
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
        * Summary: Verify the coupon eligibility against the payment mode
        * Description: Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.
        **/
        public func validateCouponForPayment(
            id: String?,
            addressId: String?,
            paymentMode: String?,
            paymentIdentifier: String?,
            aggregatorName: String?,
            merchantCode: String?,
            
            onResponse: @escaping (_ response: PaymentCouponValidate?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


if let value = addressId {
    
    xQuery["address_id"] = value
    
}


if let value = paymentMode {
    
    xQuery["payment_mode"] = value
    
}


if let value = paymentIdentifier {
    
    xQuery["payment_identifier"] = value
    
}


if let value = aggregatorName {
    
    xQuery["aggregator_name"] = value
    
}


if let value = merchantCode {
    
    xQuery["merchant_code"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/payment/validate/",
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
                        
                        let response = Utility.decode(PaymentCouponValidate.self, from: data)
                        
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
        * Summary: Get delivery date and options before checkout
        * Description: Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.
        **/
        public func getShipments(
            pickAtStoreUid: Int?,
            orderingStoreId: Int?,
            p: Bool?,
            id: String?,
            addressId: String?,
            areaCode: String?,
            orderType: String?,
            
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pickAtStoreUid {
    
    xQuery["pick_at_store_uid"] = value
    
}


if let value = orderingStoreId {
    
    xQuery["ordering_store_id"] = value
    
}


if let value = p {
    
    xQuery["p"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
}


if let value = addressId {
    
    xQuery["address_id"] = value
    
}


if let value = areaCode {
    
    xQuery["area_code"] = value
    
}


if let value = orderType {
    
    xQuery["order_type"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/shipment",
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
                        
                        let response = Utility.decode(CartShipmentsResponse.self, from: data)
                        
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
        * Summary: Update shipment delivery type and quantity before checkout
        * Description: Use this API to update the delivery type and quantity as per customer's preference for either store pick-up or home-delivery.
        **/
        public func updateShipments(
            i: Bool?,
            p: Bool?,
            id: String?,
            addressId: String?,
            orderType: String?,
            body: UpdateCartShipmentRequest,
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = i {
    
    xQuery["i"] = value
    
}


if let value = p {
    
    xQuery["p"] = value
    
}


if let value = id {
    
    xQuery["id"] = value
    
}


if let value = addressId {
    
    xQuery["address_id"] = value
    
}


if let value = orderType {
    
    xQuery["order_type"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/shipment",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartShipmentsResponse.self, from: data)
                        
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
        * Summary: Checkout all items in the cart
        * Description: Use this API to checkout all items in the cart for payment and order generation. For COD, order will be generated directly, whereas for other checkout modes, user will be redirected to a payment gateway.
        **/
        public func checkoutCart(
            id: String?,
            body: CartPosCheckoutDetailRequest,
            onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/checkout",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartCheckoutResponse.self, from: data)
                        
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
        * Summary: Update the cart meta
        * Description: Use this API to update cart meta like checkout_mode and gstin.
        **/
        public func updateCartMeta(
            id: String?,
            body: CartMetaRequest,
            onResponse: @escaping (_ response: CartMetaResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/meta",
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CartMetaResponse.self, from: data)
                        
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
        * Summary: Get available delivery modes for cart
        * Description: Use this API to get the delivery modes (home-delivery/store-pickup) along with a list of pickup stores available for a given cart at a given PIN Code. User can then view the address of a pickup store with the help of store-address API.
        **/
        public func getAvailableDeliveryModes(
            areaCode: String,
            id: String?,
            
            onResponse: @escaping (_ response: CartDeliveryModesResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["area_code"] = areaCode



if let value = id {
    
    xQuery["id"] = value
    
}


 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/available-delivery-mode",
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
                        
                        let response = Utility.decode(CartDeliveryModesResponse.self, from: data)
                        
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
        * Summary: Get list of stores for give uids
        * Description: Use this API to get the store details by entering the unique identifier of the pickup stores shown in the response of available-delivery-mode API.
        **/
        public func getStoreAddressByUid(
            storeUid: Int,
            
            onResponse: @escaping (_ response: StoreDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["store_uid"] = storeUid



 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/store-address",
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
                        
                        let response = Utility.decode(StoreDetailsResponse.self, from: data)
                        
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
        * Summary: Generate token for sharing the cart
        * Description: Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.
        **/
        public func getCartShareLink(
            body: GetShareCartLinkRequest,
            onResponse: @escaping (_ response: GetShareCartLinkResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/share-cart",
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(GetShareCartLinkResponse.self, from: data)
                        
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
        * Summary: Get details of a shared cart
        * Description: Use this API to get the shared cart details as per the token generated using the share-cart API.
        **/
        public func getCartSharedItems(
            token: String,
            
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/share-cart/\(token)",
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
                        
                        let response = Utility.decode(SharedCartResponse.self, from: data)
                        
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
        * Summary: Merge or replace existing cart
        * Description: Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.
        **/
        public func updateCartWithSharedItems(
            token: String,
            action: String,
            
            onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/share-cart/\(token)/\(action)",
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
                        
                        let response = Utility.decode(SharedCartResponse.self, from: data)
                        
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
        * Summary: Get TAT of a product
        * Description: Use this API to know the delivery turnaround time (TAT) by entering the product details along with the PIN Code of the location.
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
                responseType: "application/json",
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
        * Summary: Get city from PIN Code
        * Description: Use this API to retrieve a city by its PIN Code.
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
                responseType: "application/json",
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