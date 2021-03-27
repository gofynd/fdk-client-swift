

public class ApplicationClient {

    public let catalog: Catalog

    public let cart: Cart

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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = storeId {
                query["store_id"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/",
                query: query,
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
                        onResponse(nil, nil)
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
            pincode: Int?,
            storeId: String?,
            
            onResponse: @escaping (_ response: ProductSizePriceResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pincode {
                query["pincode"] = value
            }
            
            if let value = storeId {
                query["store_id"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/price/",
                query: query,
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
                        onResponse(nil, nil)
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
            pincode: Int?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ProductSizeSellersResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pincode {
                query["pincode"] = value
            }
            
            if let value = pageNo {
                query["page_no"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/sellers/",
                query: query,
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
                        onResponse(nil, nil)
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
            pincode: Int?,
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
            slug: String,
            
            onResponse: @escaping (_ response: ProductsComparisonResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["slug"] = slug
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/compare/",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = itemId {
                query["item_id"] = value
            }
            
            if let value = alu {
                query["alu"] = value
            }
            
            if let value = skuCode {
                query["sku_code"] = value
            }
            
            if let value = ean {
                query["ean"] = value
            }
            
            if let value = upc {
                query["upc"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/stock-status/",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            query["timestamp"] = timestamp
            
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/stock-status/poll/",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = q {
                query["q"] = value
            }
            
            if let value = f {
                query["f"] = value
            }
            
            if let value = filters {
                query["filters"] = value
            }
            
            if let value = sortOn {
                query["sort_on"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
            if let value = pageNo {
                query["page_no"] = value
            }
            
            if let value = pageType {
                query["page_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/products/",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = department {
                query["department"] = value
            }
            
            if let value = pageNo {
                query["page_no"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/brands/",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = department {
                query["department"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/categories/",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = sortOn {
                query["sort_on"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/home/listing/",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            query["q"] = q
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/auto-complete/",
                query: query,
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: List all the collections
        * Description: A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections`
        **/
        public func getCollections(
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: GetCollectionListingResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/collections/",
                query: query,
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
                        onResponse(nil, nil)
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
            let paginator = Paginator<GetCollectionListingResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getCollections(
                        
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
            var query: [String: Any] = [:] 
            
            if let value = f {
                query["f"] = value
            }
            
            if let value = filters {
                query["filters"] = value
            }
            
            if let value = sortOn {
                query["sort_on"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/collections/\(slug)/items/",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            
            onResponse: @escaping (_ response: GetFollowListingResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/follow/\(collectionType)/",
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
                        let response = Utility.decode(GetFollowListingResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getFollowedListing
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getFollowedListingPaginator(
            collectionType: String
            
            ) -> Paginator<GetFollowListingResponse> {
            let pageSize = 20
            let paginator = Paginator<GetFollowListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getFollowedListing(
                        
                        collectionType: collectionType
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
        * Summary: Follow a particular Product
        * Description: Follow a particular Product specified by its uid. Pass the uid of the product in request URL
        **/
        public func followById(
            collectionType: String,
            collectionId: Int,
            
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
                        onResponse(nil, nil)
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
            collectionId: Int,
            
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = collectionType {
                query["collection_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/follow/ids/",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = pageNo {
                query["page_no"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
            if let value = q {
                query["q"] = value
            }
            
            if let value = range {
                query["range"] = value
            }
            
            if let value = latitude {
                query["latitude"] = value
            }
            
            if let value = longitude {
                query["longitude"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/catalog/v1.0/locations/",
                query: query,
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
                        onResponse(nil, nil)
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
    
    
    
    public class Cart {
        
        var config: ApplicationConfig

        init(config: ApplicationConfig) {
            self.config = config;
        }
        
        /**
        *
        * Summary: Fetch all Items Added to  Cart
        * Description: Get all the details of a items added to cart  by uid. If successful, returns a Cart resource in the response body specified in CartResponse
        **/
        public func getCart(
            uid: Int?,
            i: Bool?,
            b: Bool?,
            assignCardId: Int?,
            
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
            if let value = assignCardId {
                query["assign_card_id"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/detail",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Last-Modified timestamp
        * Description: Fetch Last-Modified timestamp in header metadata
        **/
        public func getCartLastModified(
            uid: Int?,
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "head",
                url: "/service/application/cart/v1.0/detail",
                query: query,
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
                        let response = data.dictionary 
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add Items to Cart
        * Description: <p>Add Items to cart. See `AddCartRequest` in schema of request body for the list of attributes needed to add items to a cart. On successful request, returns cart response containing details of items, coupons available etc.these attributes will be fetched from the folowing api's</p>
        **/
        public func addItems(
            i: Bool?,
            b: Bool?,
            body: AddCartRequest,
            onResponse: @escaping (_ response: AddCartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/detail",
                query: query,
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
                        let response = Utility.decode(AddCartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Items already added to Cart
        * Description: Request object containing attributes like item_quantity and item_size which can be updated .these attributes will be fetched from the folowing api's</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
        **/
        public func updateCart(
            uid: Int?,
            i: Bool?,
            b: Bool?,
            body: UpdateCartRequest,
            onResponse: @escaping (_ response: UpdateCartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/detail",
                query: query,
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
                        let response = Utility.decode(UpdateCartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Cart item count
        * Description: Get total count of item present in cart
        **/
        public func getItemCount(
            uid: Int?,
            
            onResponse: @escaping (_ response: CartItemCountResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/basic",
                query: query,
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
                        let response = Utility.decode(CartItemCountResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Coupon
        * Description: Get all the details of a coupons applicable to cart  by uid. If successful, returns a Coupon resource in the response body specified in GetCouponResponse
        **/
        public func getCoupons(
            uid: Int?,
            
            onResponse: @escaping (_ response: GetCouponResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/coupon",
                query: query,
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
                        let response = Utility.decode(GetCouponResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Apply Coupon
        * Description: <p>Apply Coupons on Items added to cart. On successful request, returns cart response containing details of items ,coupons applied etc.these attributes will be consumed by  api</p> <ul> <li> <font color="monochrome">coupon_code</font></li>
</ul>
        **/
        public func applyCoupon(
            i: Bool?,
            b: Bool?,
            p: Bool?,
            uid: Int?,
            body: ApplyCouponRequest,
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
            if let value = p {
                query["p"] = value
            }
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/coupon",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Remove Coupon Applied
        * Description: Remove Coupon applied on the cart by passing uid in request body.
        **/
        public func removeCoupon(
            uid: Int?,
            
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/cart/v1.0/coupon",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get discount offers based on quantity
        * Description: List applicable offers along with current, next and best offer for given product. Either one of **uid**, **item_id**, **slug** should be present*
        **/
        public func getBulkDiscountOffers(
            itemId: Int?,
            articleId: String?,
            uid: Int?,
            slug: String?,
            
            onResponse: @escaping (_ response: BulkPriceResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = itemId {
                query["item_id"] = value
            }
            
            if let value = articleId {
                query["article_id"] = value
            }
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = slug {
                query["slug"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/bulk-price",
                query: query,
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
                        let response = Utility.decode(BulkPriceResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Address
        * Description: Get all the addresses associated with the account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddresses(
            uid: Int?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: Int?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: GetAddressesResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = mobileNo {
                query["mobile_no"] = value
            }
            
            if let value = checkoutMode {
                query["checkout_mode"] = value
            }
            
            if let value = tags {
                query["tags"] = value
            }
            
            if let value = isDefault {
                query["is_default"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/address",
                query: query,
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
                        let response = Utility.decode(GetAddressesResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add Address to the account
        * Description: <p>Add Address to account. See `Address` in schema of request body for the list of attributes needed to add Address to account. On successful request, returns response containing address_id ,is_default_address and success message.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Single Address
        * Description: Get a addresses with the given id. If successful, returns a Address resource in the response body specified in `Address`.attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddressById(
            id: Int,
            uid: Int?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: Int?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: Address?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = mobileNo {
                query["mobile_no"] = value
            }
            
            if let value = checkoutMode {
                query["checkout_mode"] = value
            }
            
            if let value = tags {
                query["tags"] = value
            }
            
            if let value = isDefault {
                query["is_default"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/address/\(id)",
                query: query,
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
                        let response = Utility.decode(Address.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Address alreay added to account
        * Description: Request object containing attributes mentioned in  <font color="blue">Address </font> can be updated .these attributes are :</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>
        **/
        public func updateAddress(
            id: Int,
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Remove Address Associated to the account
        * Description: Delete a Address by it's address_id. Returns an object that tells whether the address was deleted successfully
        **/
        public func removeAddress(
            id: Int,
            
            onResponse: @escaping (_ response: DeleteAddressResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/cart/v1.0/address/\(id)",
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
                        let response = Utility.decode(DeleteAddressResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Select Address from All Addresses
        * Description: <p>Select Address from all addresses associated with the account in order to ship the cart items to .that address,otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, returns Cart object response.below are the address attributes which needs to be sent. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>
        **/
        public func selectAddress(
            uid: Int?,
            i: Bool?,
            b: Bool?,
            body: SelectCartAddressRequest,
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/select-address",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Cart Payment
        * Description: Update Cart Payment for Your Account
        **/
        public func selectPaymentMode(
            uid: String?,
            body: UpdateCartPaymentRequest,
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/payment",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get Cart Payment for valid coupon
        * Description: Validate coupon for selected payment mode
        **/
        public func validateCouponForPayment(
            uid: String?,
            addressId: String?,
            paymentMode: String?,
            paymentIdentifier: String?,
            aggregatorName: String?,
            merchantCode: String?,
            
            onResponse: @escaping (_ response: PaymentUpdate?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = addressId {
                query["address_id"] = value
            }
            
            if let value = paymentMode {
                query["payment_mode"] = value
            }
            
            if let value = paymentIdentifier {
                query["payment_identifier"] = value
            }
            
            if let value = aggregatorName {
                query["aggregator_name"] = value
            }
            
            if let value = merchantCode {
                query["merchant_code"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/payment/validate/",
                query: query,
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
                        let response = Utility.decode(PaymentUpdate.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get delivery date and options before checkout
        * Description: Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created.
        **/
        public func getShipments(
            p: Bool?,
            uid: Int?,
            addressId: Int?,
            areaCode: String?,
            
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = p {
                query["p"] = value
            }
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = addressId {
                query["address_id"] = value
            }
            
            if let value = areaCode {
                query["area_code"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/shipment",
                query: query,
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
                        let response = Utility.decode(CartShipmentsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Checkout Cart
        * Description: Checkout all items in cart to payment and order generation.                         For COD only order will be generated while for other checkout mode                         user will be redirected to payment gateway
        **/
        public func checkoutCart(
            body: CartCheckoutRequest,
            onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/checkout",
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
                        let response = Utility.decode(CartCheckoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Cart Meta
        * Description: Update cart meta like checkout_mode, gstin.
        **/
        public func updateCartMeta(
            uid: Int?,
            body: CartMetaRequest,
            onResponse: @escaping (_ response: CartMetaResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/meta",
                query: query,
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
                        let response = Utility.decode(CartMetaResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Generate Cart sharing link token
        * Description: Generates shared cart snapshot and returns shortlink token
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get shared cart snapshot and cart response
        * Description: Returns shared cart response for sent token with `shared_cart_details`                    containing shared cart details in response.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Merge or Replace existing cart
        * Description: Merge or Replace cart based on `action` parameter with shared cart of `token`
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create history for specific Ticket
        * Description: Create history for specific Ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func createHistoryForTicket(
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
        * Summary: Get applied theme for an application
        * Description: 
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get theme for preview
        * Description: 
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
                        onResponse(nil, nil)
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
        * Summary: Login/Register with Facebook
        * Description: Used to login or register with Facebook
        **/
        public func loginWithFacebook(
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/facebook-token",
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
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Login/Register with Google
        * Description: Used to login or register with Google
        **/
        public func loginWithGoogle(
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/google-token",
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
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Login/Register with Google for android
        * Description: Used to login or register with Google for android
        **/
        public func loginWithGoogleAndroid(
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/google-android",
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
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Login/Register with Google for ios
        * Description: Used to login or register with google for ios
        **/
        public func loginWithGoogleIOS(
            body: OAuthRequestSchema,
            onResponse: @escaping (_ response: AuthSuccess?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/google-ios",
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
                        let response = Utility.decode(AuthSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Login/Register with OTP
        * Description: Used to login or register with OTP
        **/
        public func loginWithOTP(
            platform: String?,
            body: SendOtpRequestSchema,
            onResponse: @escaping (_ response: SendOtpResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/otp",
                query: query,
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
                        let response = Utility.decode(SendOtpResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Login/Register with password
        * Description: Used to login or register with email & password
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Reset Password
        * Description: Used to reset account password
        **/
        public func sendResetPasswordEmail(
            platform: String?,
            body: SendResetPasswordEmailRequestSchema,
            onResponse: @escaping (_ response: ResetPasswordSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/login/password/reset",
                query: query,
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
                        let response = Utility.decode(ResetPasswordSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: 
        * Description: 
        **/
        public func forgotPassword(
            body: ForgotPasswordRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/userauthentication/v1.0/login/password/reset/forgot",
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
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: 
        * Description: Send code incase of reset password
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Login/Register with token
        * Description: Login/Register with token
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Registration Form
        * Description: Register using form
        **/
        public func registerWithForm(
            platform: String?,
            body: FormRegisterRequestSchema,
            onResponse: @escaping (_ response: RegisterFormSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/register/form",
                query: query,
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
                        let response = Utility.decode(RegisterFormSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Verify email
        * Description: Used to verify email
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Verify mobile
        * Description: Verify mobile
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Check if user has password
        * Description: Checks if user is using password or not
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update user password
        * Description: Used to update user password
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Logout user
        * Description: Used to log out user
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Send OTP on mobile
        * Description: Used to send otp to mobile
        **/
        public func sendOTPOnMobile(
            platform: String?,
            body: SendMobileOtpRequestSchema,
            onResponse: @escaping (_ response: OtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/mobile/send",
                query: query,
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
                        let response = Utility.decode(OtpSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Verify OTP on mobile
        * Description: Used to verify otp sent to mobile
        **/
        public func verifyMobileOTP(
            platform: String?,
            body: VerifyOtpRequestSchema,
            onResponse: @escaping (_ response: VerifyOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/mobile/verify",
                query: query,
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
                        let response = Utility.decode(VerifyOtpSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Send OTP on email
        * Description: Used to send otp to email
        **/
        public func sendOTPOnEmail(
            platform: String?,
            body: SendEmailOtpRequestSchema,
            onResponse: @escaping (_ response: EmailOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/email/send",
                query: query,
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
                        let response = Utility.decode(EmailOtpSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Verify OTP on email
        * Description: Used to verify otp sent to email
        **/
        public func verifyEmailOTP(
            platform: String?,
            body: VerifyOtpRequestSchema,
            onResponse: @escaping (_ response: VerifyOtpSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/authentication/v1.0/otp/email/verify",
                query: query,
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
                        let response = Utility.decode(VerifyOtpSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get logged in user
        * Description: Used to get logged in user details
        **/
        public func getLoggedInUser(
            
            onResponse: @escaping (_ response: UserSchema?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/authentication/v1.0/session",
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
                        let response = Utility.decode(UserSchema.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get list of sessions
        * Description: Lists all active sessions
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get platform config
        * Description: Used to get platform config
        **/
        public func getPlatformConfig(
            name: String?,
            
            onResponse: @escaping (_ response: PlatformSchema?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = name {
                query["name"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/user/platform/v1.0/config",
                query: query,
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
                        let response = Utility.decode(PlatformSchema.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Edit Profile Details
        * Description: Used to update profile
        **/
        public func updateProfile(
            platform: String?,
            body: EditProfileRequestSchema,
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/detail",
                query: query,
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
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add mobile number to profile
        * Description: Used to add new mobile number to profile
        **/
        public func addMobileNumber(
            platform: String?,
            body: EditMobileRequestSchema,
            onResponse: @escaping (_ response: VerifyMobileOTPSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/user/profile/v1.0/mobile",
                query: query,
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
                        let response = Utility.decode(VerifyMobileOTPSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Delete mobile number from profile
        * Description: Used to delete mobile number from profile
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
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            query["active"] = active
            
            query["primary"] = primary
            
            query["verified"] = verified
            
            query["country_code"] = countryCode
            
            query["phone"] = phone
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/user/profile/v1.0/mobile",
                query: query,
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
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Set mobile as primary
        * Description: Used to set a mobile number as primary
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Send verification link to mobile
        * Description: Used to send verification link to a mobile number
        **/
        public func sendVerificationLinkToMobile(
            platform: String?,
            body: SendVerificationLinkMobileRequestSchema,
            onResponse: @escaping (_ response: SendMobileVerifyLinkSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/mobile/link/send",
                query: query,
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
                        let response = Utility.decode(SendMobileVerifyLinkSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add email to profile
        * Description: Used to add new email to profile
        **/
        public func addEmail(
            platform: String?,
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: VerifyEmailOTPSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/user/profile/v1.0/email",
                query: query,
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
                        let response = Utility.decode(VerifyEmailOTPSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Delete email from profile
        * Description: Used to delete email from profile
        **/
        public func deleteEmail(
            platform: String?,
            active: Bool,
            primary: Bool,
            verified: Bool,
            email: String,
            
            onResponse: @escaping (_ response: LoginSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            query["active"] = active
            
            query["primary"] = primary
            
            query["verified"] = verified
            
            query["email"] = email
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/user/profile/v1.0/email",
                query: query,
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
                        let response = Utility.decode(LoginSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Set email as primary
        * Description: Used to set an email as primart
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Send verification link to email
        * Description: Used to sent verification to an email
        **/
        public func sendVerificationLinkToEmail(
            platform: String?,
            body: EditEmailRequestSchema,
            onResponse: @escaping (_ response: SendEmailVerifyLinkSuccess?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = platform {
                query["platform"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/user/profile/v1.0/email/link/send",
                query: query,
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
                        let response = Utility.decode(SendEmailVerifyLinkSuccess.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
        * Description: Get live announcements for each or all pages with page slug of page and end date schedule.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get Blog by slug
        * Description: Use this API to fetch a blog using `slug`
        **/
        public func getBlog(
            slug: String,
            
            onResponse: @escaping (_ response: CustomBlog?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/blogs/\(slug)",
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
                        let response = Utility.decode(CustomBlog.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get frequently asked questions
        * Description: Get frequently asked questions list. These will be helpful for users to using website.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get FAQ categories list
        * Description: Get list of FAQ categories
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get frequently asked question
        * Description: Get frequently asked questions list. These will be helpful for users to using website.
        **/
        public func getFaqByIdOrSlug(
            idOrSlug: String,
            
            onResponse: @escaping (_ response: FaqSchema?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq/\(idOrSlug)",
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
                        let response = Utility.decode(FaqSchema.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get FAQ category by slug or id
        * Description: Get FAQ category by slug or id
        **/
        public func getFaqCategoryBySlugOrId(
            idOrSlug: String,
            
            onResponse: @escaping (_ response: GetFaqCategoryByIdOrSlugSchema?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq/category/\(idOrSlug)",
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
                        let response = Utility.decode(GetFaqCategoryByIdOrSlugSchema.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get FAQs of a Faq Category id or slug
        * Description: Get FAQs of a Faq Category `id` or `slug`
        **/
        public func getFaqsByCategoryIdOrSlug(
            idOrSlug: String,
            
            onResponse: @escaping (_ response: GetFaqSchema?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/faq/category/\(idOrSlug)/faqs",
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
                        let response = Utility.decode(GetFaqSchema.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get landing page
        * Description: Use this API to fetch a landing page
        **/
        public func getLandingPage(
            
            onResponse: @escaping (_ response: LandingPage?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/landing-page",
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
                        let response = Utility.decode(LandingPage.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get legal information
        * Description: Get legal information of application, which includes policy, Terms and Conditions, and FAQ information of application.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get navigation
        * Description: Use this API to fetch a navigation
        **/
        public func getNavigations(
            
            onResponse: @escaping (_ response: Navigation?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/navigations/",
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
                        let response = Utility.decode(Navigation.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get Page by slug
        * Description: Use this API to fetch a custom page using `slug`
        **/
        public func getPage(
            slug: String,
            
            onResponse: @escaping (_ response: CustomPage?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/pages/\(slug)",
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
                        let response = Utility.decode(CustomPage.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get seo of application
        * Description: Get seo of application
        **/
        public func getSeoConfiguration(
            
            onResponse: @escaping (_ response: Seo?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/seo",
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
                        let response = Utility.decode(Seo.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get slideshow by slug
        * Description: Use this API to fetch a slideshow using `slug`
        **/
        public func getSlideshow(
            slug: String,
            
            onResponse: @escaping (_ response: Slideshow?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/content/v1.0/slideshow/\(slug)",
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
                        let response = Utility.decode(Slideshow.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get support information
        * Description: Get contact details for customer support. Including emails and phone numbers
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get Tags for application
        * Description: 
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
                        onResponse(nil, nil)
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
        * Description: Get communication consent
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Upsert communication consent
        * Description: Upsert communication consent
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Upsert push token of a user
        * Description: Upsert push token of a user
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
                        onResponse(nil, nil)
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
        * Summary: Create application QR Code
        * Description: Create application QR Code
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create product QR Code
        * Description: Create product QR Code
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create collection QR Code
        * Description: Create collection QR Code
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create url QR Code
        * Description: Create url QR Code
        **/
        public func getUrlQRCode(
            url: String,
            
            onResponse: @escaping (_ response: QRCodeResp?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["url"] = url
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/share/v1.0/qr/url/",
                query: query,
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
                        let response = Utility.decode(QRCodeResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create short link
        * Description: Create short link
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get short link by hash
        * Description: Get short link by hash
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get original link by hash
        * Description: Get original link by hash
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
                        onResponse(nil, nil)
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
        * Summary: This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.
        * Description: Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `/v1.0/uploads/{namespace}/start`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `/v1.0/uploads/{namespace}/start` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `/v1.0/uploads/{namespace}/complete` api to complete the upload process.
This operation will return the url for the uploaded file.

        **/
        public func completeUpload(
            namespace: String,
            companyId: Int,
            body: StartResponse,
            onResponse: @escaping (_ response: CompleteResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/assets/v1.0/company/\(companyId)/namespaces/\(namespace)/upload/complete/",
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
                        onResponse(nil, nil)
                    }
            });
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
Initiates the assets upload using `/v1.0/uploads/{namespace}/start`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `/v1.0/uploads/{namespace}/start` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `/v1.0/uploads/{namespace}/complete` api to complete the upload process.
This operation will return the url for the uploaded file.

        **/
        public func startUpload(
            namespace: String,
            companyId: Int,
            body: StartRequest,
            onResponse: @escaping (_ response: StartResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/assets/v1.0/company/\(companyId)/namespaces/\(namespace)/upload/start/",
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
                        onResponse(nil, nil)
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
        * Description: Get current application details.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get application, owner and seller information
        * Description: Get application information with owner and seller basic details
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get basic application details
        * Description: Get basic application details like name
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get integration tokens
        * Description: Get tokens for multiple integrations like Facebook, Googlemaps, Segment, Firebase, etc. Note: token values are encrypted with AES encryption using secret key. Kindly reach to developers for secret key.
        **/
        public func getIntegrationTokens(
            
            onResponse: @escaping (_ response: TokensResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/token",
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
                        let response = Utility.decode(TokensResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get deployment meta stores
        * Description: Get deployment meta stores.
        **/
        public func getOrderingStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            
            onResponse: @escaping (_ response: OrderingStores?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pageNo {
                query["page_no"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
            if let value = q {
                query["q"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/ordering-store/stores",
                query: query,
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
                        let response = Utility.decode(OrderingStores.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
        * Summary: Get features of application
        * Description: Get features of application
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get application information
        * Description: Get Application Current Information. This includes information about social links, address and contact information of company/seller/brand of the application.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get application enabled currencies
        * Description: Get currency list for allowed currencies under current application
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get currency by id
        * Description: Get currency object with symbol and name information by id.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get list of languages
        * Description: Get list of supported languages under application.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get ordering store signed cookie on selection of ordering store. This will be used by cart service to verify coupon against selected ordering store in cart.
        * Description: Get ordering store signed cookie on selection of ordering store.
        **/
        public func getOrderingStoreCookie(
            body: OrderingStoreSelectRequest,
            onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/application/current/ordering-store/select",
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
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Unset ordering store signed cookie on change of sales channel selection via domain in universal fynd store app.
        * Description: Unset ordering store cookie.
        **/
        public func removeOrderingStoreCookie(
            
            onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/application/current/ordering-store/select",
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
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get Staff List.
        * Description: Get a staff list based on the user's session token passed in the header.
        **/
        public func getAppStaffs(
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?,
            
            onResponse: @escaping (_ response: AppStaffResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = orderIncent {
                query["order_incent"] = value
            }
            
            if let value = orderingStore {
                query["ordering_store"] = value
            }
            
            if let value = user {
                query["user"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/configuration/v1.0/staff",
                query: query,
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
                        let response = Utility.decode(AppStaffResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = refresh {
                query["refresh"] = value
            }
            
            var headers: [(key: String, value: String)] = [] 
            headers.append((key: "x-api-token", value: xApiToken))
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/config/aggregators/key",
                query: query,
                extraHeaders:  headers,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = refresh {
                query["refresh"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/card/aggregator",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = forceRefresh {
                query["force_refresh"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/cards",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            query["amount"] = amount
            
            query["cart_id"] = cartId
            
            query["pincode"] = pincode
            
            query["checkout_mode"] = checkoutMode
            
            
            if let value = refresh {
                query["refresh"] = value
            }
            
            if let value = assignCardId {
                query["assign_card_id"] = value
            }
            
            if let value = userDetails {
                query["user_details"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/payment/options",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            query["amount"] = amount
            
            query["cart_id"] = cartId
            
            query["pincode"] = pincode
            
            query["checkout_mode"] = checkoutMode
            
            
            if let value = refresh {
                query["refresh"] = value
            }
            
            if let value = assignCardId {
                query["assign_card_id"] = value
            }
            query["order_type"] = orderType
            
            
            if let value = userDetails {
                query["user_details"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/payment/options/pos",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            query["order_id"] = orderId
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/refund/beneficiary/user",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            
            if let value = ifscCode {
                query["ifsc_code"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/ifsc-code/verify",
                query: query,
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
                        onResponse(nil, nil)
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
            var query: [String: Any] = [:] 
            query["order_id"] = orderId
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/payment/v1.0/refund/beneficiaries/order",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
            pageNo: String?,
            pageSize: String?,
            fromDate: String?,
            toDate: String?,
            
            onResponse: @escaping (_ response: OrderList?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pageNo {
                query["page_no"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
            if let value = fromDate {
                query["from_date"] = value
            }
            
            if let value = toDate {
                query["to_date"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/orders",
                query: query,
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
        * Summary: Get reward points that could be earned on any catalogue product.
        * Description: Evaluate the amount of reward points that could be earned on any catalogue product.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Calculates the discount on order-amount based on amount ranges configured in order_discount reward.
        * Description: Calculates the discount on order-amount based on amount ranges configured in order_discount reward.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Total available points of a user for current application
        * Description: Total available points of a user for current application
        **/
        public func getUserPoints(
            
            onResponse: @escaping (_ response: PointsResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/rewards/v1.0/user/points",
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
                        let response = Utility.decode(PointsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get list of points transactions.
        * Description: Get list of points transactions.
The list of points history is paginated.
        **/
        public func getUserPointsHistory(
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: PointsHistoryResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/rewards/v1.0/user/points/history/",
                query: query,
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
                        let response = Utility.decode(PointsHistoryResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
        * Summary: User's referral details.
        * Description: User's referral details.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Redeems referral code and credits points to users points account.
        * Description: Redeems referral code and credits points to users points account.
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
                        onResponse(nil, nil)
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
        * Summary: post a new abuse request
        * Description: Report a new abuse for specific entity with description text.
        **/
        public func createAbuseReport(
            body: ReportAbuseRequest,
            onResponse: @escaping (_ response: XInsertResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/abuse",
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
                        let response = Utility.decode(XInsertResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update abuse details
        * Description: Update the abuse details like status and description text.
        **/
        public func updateAbuseReport(
            body: UpdateAbuseStatusRequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/abuse",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get list of abuse data
        * Description: Get the list of abuse data from entity type and entity ID.
        **/
        public func getAbuseReports(
            entityId: String,
            entityType: String,
            id: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: XCursorGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = id {
                query["id"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/abuse/entity/\(entityType)/entityId/\(entityId)",
                query: query,
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
                        let response = Utility.decode(XCursorGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            
            ) -> Paginator<XCursorGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<XCursorGetResponse>(pageSize: pageSize, type: "cursor")
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
        * Summary: Get list of attribute data
        * Description: Provides a list of all attribute data.
        **/
        public func getAttributes(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: XNumberGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pageNo {
                query["page_no"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/attributes",
                query: query,
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
                        let response = Utility.decode(XNumberGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            
            ) -> Paginator<XNumberGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<XNumberGetResponse>(pageSize: pageSize, type: "number")
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
        * Description: Add a new attribute with its name, slug and description.
        **/
        public func createAttribute(
            body: SaveAttributeRequest,
            onResponse: @escaping (_ response: XInsertResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/attributes",
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
                        let response = Utility.decode(XInsertResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get single attribute data
        * Description: Get a single attribute data from a given slug.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update attribute details
        * Description: Update the attribute's name and description.
        **/
        public func updateAttribute(
            slug: String,
            body: UpdateAttributeRequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/attributes/\(slug)",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: post a new comment
        * Description: This is used to add a new comment for specific entity.
        **/
        public func createComment(
            body: CommentRequest,
            onResponse: @escaping (_ response: XInsertResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/comment",
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
                        let response = Utility.decode(XInsertResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update comment status
        * Description: Update the comment status (active/approve) or text.
        **/
        public func updateComment(
            body: UpdateCommentRequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/comment",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get list of comments
        * Description: Get the list of comments from specific entity type.
        **/
        public func getComments(
            entityType: String,
            id: String?,
            entityId: String?,
            userId: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: XCursorGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = id {
                query["id"] = value
            }
            
            if let value = entityId {
                query["entity_id"] = value
            }
            
            if let value = userId {
                query["user_id"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/comment/entity/\(entityType)",
                query: query,
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
                        let response = Utility.decode(XCursorGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            
            ) -> Paginator<XCursorGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<XCursorGetResponse>(pageSize: pageSize, type: "cursor")
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
        * Summary: Checks eligibility and cloud media config
        * Description: Checks eligibility to rate and review and cloud media configuration
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Delete Media
        * Description: Delete Media for the given entity IDs.
        **/
        public func deleteMedia(
            
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/feedback/v1.0/media/",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add Media
        * Description: Add Media list for specific entity.
        **/
        public func createMedia(
            body: AddMediaListRequest,
            onResponse: @escaping (_ response: XInsertResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/media/",
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
                        let response = Utility.decode(XInsertResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Media
        * Description: Update Media (archive/approve) for the given entity.
        **/
        public func updateMedia(
            body: UpdateMediaListRequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/media/",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get Media
        * Description: Get Media from the given entity type and entity ID.
        **/
        public func getMedias(
            entityType: String,
            entityId: String,
            id: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: XCursorGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = id {
                query["id"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/media/entity/\(entityType)/entityId/\(entityId)",
                query: query,
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
                        let response = Utility.decode(XCursorGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            pageSize: Int?
            
            ) -> Paginator<XCursorGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<XCursorGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getMedias(
                        
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
        * Summary: Get a review summary
        * Description: Review summary gives ratings and attribute metrics of a review per entity
It gives following response data: review count, rating average. review metrics / attribute rating metrics which contains name, type, average and count.
        **/
        public func getReviewSummaries(
            entityType: String,
            entityId: String,
            id: String?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: XCursorGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = id {
                query["id"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/rating/summary/entity/\(entityType)/entityId/\(entityId)",
                query: query,
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
                        let response = Utility.decode(XCursorGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            
            ) -> Paginator<XCursorGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<XCursorGetResponse>(pageSize: pageSize, type: "cursor")
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
        * Description: Add customer reviews for specific entity with following data:
attributes rating, entity rating, title, description, media resources and template id.
        **/
        public func createReview(
            body: UpdateReviewRequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/review/",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update customer reviews
        * Description: Update customer reviews for specific entity with following data:
attributes rating, entity rating, title, description, media resources and template id.
        **/
        public func updateReview(
            body: UpdateReviewRequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/review/",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get list of customer reviews
        * Description: This is used to get the list of customer reviews based on entity and provided filters.
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
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: XCursorGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = id {
                query["id"] = value
            }
            
            if let value = userId {
                query["user_id"] = value
            }
            
            if let value = media {
                query["media"] = value
            }
            
            if let value = rating {
                query["rating"] = value
            }
            
            if let value = attributeRating {
                query["attribute_rating"] = value
            }
            
            if let value = facets {
                query["facets"] = value
            }
            
            if let value = sort {
                query["sort"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/review/entity/\(entityType)/entityId/\(entityId)",
                query: query,
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
                        let response = Utility.decode(XCursorGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            pageSize: Int?
            
            ) -> Paginator<XCursorGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<XCursorGetResponse>(pageSize: pageSize, type: "cursor")
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
        * Summary: Get the templates for product or l3 type
        * Description: This is used to get the templates details.
        **/
        public func getTemplates(
            templateId: String?,
            entityId: String?,
            entityType: String?,
            
            onResponse: @escaping (_ response: XCursorGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = templateId {
                query["template_id"] = value
            }
            
            if let value = entityId {
                query["entity_id"] = value
            }
            
            if let value = entityType {
                query["entity_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/template/",
                query: query,
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
                        let response = Utility.decode(XCursorGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create a new question
        * Description: This is used to create a new question with following data:
tags, text, type, choices for MCQ type questions, maximum length of answer.
        **/
        public func createQuestion(
            body: CreateQNARequest,
            onResponse: @escaping (_ response: XInsertResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/template/qna/",
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
                        let response = Utility.decode(XInsertResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update question
        * Description: This is used to update question's status, tags and choices.
        **/
        public func updateQuestion(
            body: UpdateQNARequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/template/qna/",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get a list of QnA
        * Description: This is used to get a list of questions and its answers.
        **/
        public func getQuestionAndAnswers(
            entityType: String,
            entityId: String,
            id: String?,
            showAnswer: Bool?,
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: XCursorGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = id {
                query["id"] = value
            }
            
            if let value = showAnswer {
                query["show_answer"] = value
            }
            
            if let value = pageId {
                query["page_id"] = value
            }
            
            if let value = pageSize {
                query["page_size"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/template/qna/entity/\(entityType)/entityId/\(entityId)",
                query: query,
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
                        let response = Utility.decode(XCursorGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
            showAnswer: Bool?,
            pageSize: Int?
            
            ) -> Paginator<XCursorGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<XCursorGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getQuestionAndAnswers(
                        
                        entityType: entityType,
                        entityId: entityId,
                        id: id,
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
        * Summary: Get list of votes
        * Description: This is used to get the list of votes of a current logged in user. Votes can be filtered using `ref_type` i.e. review | comment.
        **/
        public func getVotes(
            id: String?,
            refType: String?,
            
            onResponse: @escaping (_ response: XNumberGetResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = id {
                query["id"] = value
            }
            
            if let value = refType {
                query["ref_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/vote/",
                query: query,
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
                        let response = Utility.decode(XNumberGetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Create a new vote
        * Description: This is used to create a new vote and the actions can be upvote or downvote.
        **/
        public func createVote(
            body: VoteRequest,
            onResponse: @escaping (_ response: XInsertResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/feedback/v1.0/vote/",
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
                        let response = Utility.decode(XInsertResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update vote
        * Description: This is used to update the vote and the actions can be upvote or downvote.
        **/
        public func updateVote(
            body: UpdateVoteRequest,
            onResponse: @escaping (_ response: XUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/feedback/v1.0/vote/",
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
                        let response = Utility.decode(XUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
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
        * Summary: Fetch all Items Added to  Cart
        * Description: Get all the details of a items added to cart  by uid. If successful, returns a Cart resource in the response body specified in CartResponse
        **/
        public func getCart(
            uid: Int?,
            i: Bool?,
            b: Bool?,
            assignCardId: Int?,
            
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
            if let value = assignCardId {
                query["assign_card_id"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/detail",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Last-Modified timestamp
        * Description: Fetch Last-Modified timestamp in header metadata
        **/
        public func getCartLastModified(
            uid: Int?,
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "head",
                url: "/service/application/pos/cart/v1.0/detail",
                query: query,
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
                        let response = data.dictionary 
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add Items to Cart
        * Description: <p>Add Items to cart. See `AddCartRequest` in schema of request body for the list of attributes needed to add items to a cart. On successful request, returns cart response containing details of items, coupons available etc.these attributes will be fetched from the folowing api's</p>
        **/
        public func addItems(
            i: Bool?,
            b: Bool?,
            body: AddCartRequest,
            onResponse: @escaping (_ response: AddCartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/detail",
                query: query,
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
                        let response = Utility.decode(AddCartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Items already added to Cart
        * Description: Request object containing attributes like item_quantity and item_size which can be updated .these attributes will be fetched from the folowing api's</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
        **/
        public func updateCart(
            uid: Int?,
            i: Bool?,
            b: Bool?,
            body: UpdateCartRequest,
            onResponse: @escaping (_ response: UpdateCartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/detail",
                query: query,
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
                        let response = Utility.decode(UpdateCartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Cart item count
        * Description: Get total count of item present in cart
        **/
        public func getItemCount(
            uid: Int?,
            
            onResponse: @escaping (_ response: CartItemCountResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/basic",
                query: query,
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
                        let response = Utility.decode(CartItemCountResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Coupon
        * Description: Get all the details of a coupons applicable to cart  by uid. If successful, returns a Coupon resource in the response body specified in GetCouponResponse
        **/
        public func getCoupons(
            uid: Int?,
            
            onResponse: @escaping (_ response: GetCouponResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/coupon",
                query: query,
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
                        let response = Utility.decode(GetCouponResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Apply Coupon
        * Description: <p>Apply Coupons on Items added to cart. On successful request, returns cart response containing details of items ,coupons applied etc.these attributes will be consumed by  api</p> <ul> <li> <font color="monochrome">coupon_code</font></li>
</ul>
        **/
        public func applyCoupon(
            i: Bool?,
            b: Bool?,
            p: Bool?,
            uid: Int?,
            body: ApplyCouponRequest,
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
            if let value = p {
                query["p"] = value
            }
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/coupon",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Remove Coupon Applied
        * Description: Remove Coupon applied on the cart by passing uid in request body.
        **/
        public func removeCoupon(
            uid: Int?,
            
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/pos/cart/v1.0/coupon",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get discount offers based on quantity
        * Description: List applicable offers along with current, next and best offer for given product. Either one of **uid**, **item_id**, **slug** should be present*
        **/
        public func getBulkDiscountOffers(
            itemId: Int?,
            articleId: String?,
            uid: Int?,
            slug: String?,
            
            onResponse: @escaping (_ response: BulkPriceResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = itemId {
                query["item_id"] = value
            }
            
            if let value = articleId {
                query["article_id"] = value
            }
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = slug {
                query["slug"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/bulk-price",
                query: query,
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
                        let response = Utility.decode(BulkPriceResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Address
        * Description: Get all the addresses associated with the account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddresses(
            uid: Int?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: Int?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: GetAddressesResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = mobileNo {
                query["mobile_no"] = value
            }
            
            if let value = checkoutMode {
                query["checkout_mode"] = value
            }
            
            if let value = tags {
                query["tags"] = value
            }
            
            if let value = isDefault {
                query["is_default"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/address",
                query: query,
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
                        let response = Utility.decode(GetAddressesResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Add Address to the account
        * Description: <p>Add Address to account. See `Address` in schema of request body for the list of attributes needed to add Address to account. On successful request, returns response containing address_id ,is_default_address and success message.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Fetch Single Address
        * Description: Get a addresses with the given id. If successful, returns a Address resource in the response body specified in `Address`.attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
        **/
        public func getAddressById(
            id: Int,
            uid: Int?,
            mobileNo: String?,
            checkoutMode: String?,
            tags: Int?,
            isDefault: Bool?,
            
            onResponse: @escaping (_ response: Address?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = mobileNo {
                query["mobile_no"] = value
            }
            
            if let value = checkoutMode {
                query["checkout_mode"] = value
            }
            
            if let value = tags {
                query["tags"] = value
            }
            
            if let value = isDefault {
                query["is_default"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/address/\(id)",
                query: query,
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
                        let response = Utility.decode(Address.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Address alreay added to account
        * Description: Request object containing attributes mentioned in  <font color="blue">Address </font> can be updated .these attributes are :</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>
        **/
        public func updateAddress(
            id: Int,
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Remove Address Associated to the account
        * Description: Delete a Address by it's address_id. Returns an object that tells whether the address was deleted successfully
        **/
        public func removeAddress(
            id: Int,
            
            onResponse: @escaping (_ response: DeleteAddressResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/pos/cart/v1.0/address/\(id)",
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
                        let response = Utility.decode(DeleteAddressResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Select Address from All Addresses
        * Description: <p>Select Address from all addresses associated with the account in order to ship the cart items to .that address,otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, returns Cart object response.below are the address attributes which needs to be sent. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>
        **/
        public func selectAddress(
            uid: Int?,
            i: Bool?,
            b: Bool?,
            body: SelectCartAddressRequest,
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = b {
                query["b"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/select-address",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Cart Payment
        * Description: Update Cart Payment for Your Account
        **/
        public func selectPaymentMode(
            uid: String?,
            body: UpdateCartPaymentRequest,
            onResponse: @escaping (_ response: CartResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/payment",
                query: query,
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
                        let response = Utility.decode(CartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get Cart Payment for valid coupon
        * Description: Validate coupon for selected payment mode
        **/
        public func validateCouponForPayment(
            uid: String?,
            addressId: String?,
            paymentMode: String?,
            paymentIdentifier: String?,
            aggregatorName: String?,
            merchantCode: String?,
            
            onResponse: @escaping (_ response: PaymentUpdate?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = addressId {
                query["address_id"] = value
            }
            
            if let value = paymentMode {
                query["payment_mode"] = value
            }
            
            if let value = paymentIdentifier {
                query["payment_identifier"] = value
            }
            
            if let value = aggregatorName {
                query["aggregator_name"] = value
            }
            
            if let value = merchantCode {
                query["merchant_code"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/payment/validate/",
                query: query,
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
                        let response = Utility.decode(PaymentUpdate.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get delivery date and options before checkout
        * Description: Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created.
        **/
        public func getShipments(
            pickAtStoreUid: Int?,
            orderingStoreId: Int?,
            p: Bool?,
            uid: Int?,
            addressId: Int?,
            areaCode: String?,
            orderType: String?,
            
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = pickAtStoreUid {
                query["pick_at_store_uid"] = value
            }
            
            if let value = orderingStoreId {
                query["ordering_store_id"] = value
            }
            
            if let value = p {
                query["p"] = value
            }
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = addressId {
                query["address_id"] = value
            }
            
            if let value = areaCode {
                query["area_code"] = value
            }
            
            if let value = orderType {
                query["order_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/shipment",
                query: query,
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
                        let response = Utility.decode(CartShipmentsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update shipment delivery type and quantity before checkout
        * Description: Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created. Update the shipment                      type and quantity as per customer preference for store pick up or home delivery
        **/
        public func updateShipments(
            i: Bool?,
            p: Bool?,
            uid: Int?,
            addressId: Int?,
            orderType: String?,
            body: UpdateCartShipmentRequest,
            onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = i {
                query["i"] = value
            }
            
            if let value = p {
                query["p"] = value
            }
            
            if let value = uid {
                query["uid"] = value
            }
            
            if let value = addressId {
                query["address_id"] = value
            }
            
            if let value = orderType {
                query["order_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/shipment",
                query: query,
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
                        let response = Utility.decode(CartShipmentsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Checkout Cart
        * Description: Checkout all items in cart to payment and order generation.                        For COD only order will be generated while for other checkout mode                        user will be redirected to payment gateway
        **/
        public func checkoutCart(
            uid: Int?,
            body: CartPosCheckoutRequest,
            onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/checkout",
                query: query,
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
                        let response = Utility.decode(CartCheckoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Update Cart Meta
        * Description: Update cart meta like checkout_mode, gstin.
        **/
        public func updateCartMeta(
            uid: Int?,
            body: CartMetaRequest,
            onResponse: @escaping (_ response: CartMetaResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/meta",
                query: query,
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
                        let response = Utility.decode(CartMetaResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get available delivery modes for cart
        * Description: Get available delivery modes for cart and pick up store uid list. From given pick stores list user can pick up delivery. Use this uid to show store address
        **/
        public func getAvailableDeliveryModes(
            areaCode: String,
            uid: Int?,
            
            onResponse: @escaping (_ response: CartDeliveryModesResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["area_code"] = areaCode
            
            
            if let value = uid {
                query["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/available-delivery-mode",
                query: query,
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
                        let response = Utility.decode(CartDeliveryModesResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get list of stores for give uids
        * Description: Get list of stores by providing pick up available store uids.
        **/
        public func getStoreAddressByUid(
            storeUid: Int,
            
            onResponse: @escaping (_ response: StoreDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["store_uid"] = storeUid
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/store-address",
                query: query,
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
                        let response = Utility.decode(StoreDetailsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Generate Cart sharing link token
        * Description: Generates shared cart snapshot and returns shortlink token
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Get shared cart snapshot and cart response
        * Description: Returns shared cart response for sent token with `shared_cart_details`                    containing shared cart details in response.
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Merge or Replace existing cart
        * Description: Merge or Replace cart based on `action` parameter with shared cart of `token`
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
}