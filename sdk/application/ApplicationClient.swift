

public class ApplicationClient {

    public let catalog: Catalog

    public let cart: Cart

    public let fileStorage: FileStorage

    public let order: Order

    public let feedback: Feedback

    public let posCart: PosCart

    public let logistic: Logistic

    public init(config: ApplicationConfig) {
        
        catalog = Catalog(config: config)
        
        cart = Cart(config: config)
        
        fileStorage = FileStorage(config: config)
        
        order = Order(config: config)
        
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
            slug: String,
            
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
            pageNo: String?,
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "head",
                url: "/service/application/cart/v1.0/detail",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/basic",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/cart/v1.0/coupon",
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
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/cart/v1.0/coupon",
                query: xQuery,
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/cart/v1.0/coupon",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/payment",
                query: xQuery,
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = p {
                xQuery["p"] = value
            }
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/cart/v1.0/meta",
                query: xQuery,
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
                        onResponse(nil, nil)
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
        
        
        /**
        *
        * Summary: Get POS Order by order id for application based on application Id
        * Description: Get Order By Fynd Order Id
        **/
        public func getPosOrderById(
            orderId: String,
            
            onResponse: @escaping (_ response: OrderById?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/order/v1.0/pos-order/\(orderId)",
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
                url: "/service/application/feedback/v1.0/attributes",
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
                url: "/service/application/feedback/v1.0/media/entity/\(entityType)/entityId/\(entityId)",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = id {
                xQuery["id"] = value
            }
            
            if let value = refType {
                xQuery["ref_type"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/feedback/v1.0/vote/",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "head",
                url: "/service/application/pos/cart/v1.0/detail",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/basic",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/coupon",
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
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/coupon",
                query: xQuery,
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/application/pos/cart/v1.0/coupon",
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/payment",
                query: xQuery,
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
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
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = i {
                xQuery["i"] = value
            }
            
            if let value = p {
                xQuery["p"] = value
            }
            
            if let value = uid {
                xQuery["uid"] = value
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/application/pos/cart/v1.0/checkout",
                query: xQuery,
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
            var xQuery: [String: Any] = [:] 
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/application/pos/cart/v1.0/meta",
                query: xQuery,
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
            var xQuery: [String: Any] = [:] 
            xQuery["area_code"] = areaCode
            
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/available-delivery-mode",
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
            var xQuery: [String: Any] = [:] 
            xQuery["store_uid"] = storeUid
            
            
             
            
            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/application/pos/cart/v1.0/store-address",
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