

    
public class Catalog {
    var config: ApplicationConfig

    init(config: ApplicationConfig) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get a product
    * Description: Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given ``slug``. If successful, returns a Product resource in the response body specified in `ProductDetail`
    **/
    public func getProductDetailBySlug(
        slug: String,
        
        onResponse: @escaping (_ response: ProductDetail?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/",
            query: query,
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

        query["store_id"] = storeId
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/sizes/",
            query: query,
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

        query["pincode"] = pincode
        query["store_id"] = storeId
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/price/",
            query: query,
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

        query["pincode"] = pincode
        query["page_no"] = pageNo
        query["page_size"] = pageSize
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/sellers/",
            query: query,
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
    * Summary: Compare products
    * Description: Compare between the features of the given set of products Use this API to compare how one product ranks against other products. Note that at least one slug is mandatory in request query.
    **/
    public func getProductComparisonBySlugs(
        slug: String,
        
        onResponse: @escaping (_ response: ProductsComparisonResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/compare/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/similar/compare/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/similar/compared-frequently/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/similar/\(similarType)/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/variants/",
            query: query,
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

        query["item_id"] = itemId
        query["alu"] = alu
        query["sku_code"] = skuCode
        query["ean"] = ean
        query["upc"] = upc
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/stock-status/",
            query: query,
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

        query["page_size"] = pageSize
        query["page_id"] = pageId
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/stock-status/poll/",
            query: query,
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

        query["q"] = q
        query["f"] = f
        query["filters"] = filters
        query["sort_on"] = sortOn
        query["page_id"] = pageId
        query["page_size"] = pageSize
        query["page_no"] = pageNo
        query["page_type"] = pageType
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/",
            query: query,
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

        query["department"] = department
        query["page_no"] = pageNo
        query["page_size"] = pageSize
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/brands/",
            query: query,
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
    * Summary: Get metadata of a brand
    * Description: Fetch metadata of a brand. If successful, returns a metadata object specified in `BrandDetailResponse`
    **/
    public func getBrandDetailBySlug(
        slug: String,
        
        onResponse: @escaping (_ response: BrandDetailResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/brands/\(slug)/",
            query: query,
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

        query["department"] = department
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/categories/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/categories/\(slug)/",
            query: query,
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

        query["sort_on"] = sortOn
        query["page_id"] = pageId
        query["page_size"] = pageSize
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/home/listing/",
            query: query,
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
    * Summary: List all the departments
    * Description: Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`
    **/
    public func getDepartments(
        
        onResponse: @escaping (_ response: DepartmentResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/departments/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/auto-complete/",
            query: query,
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

        query["page_id"] = pageId
        query["page_size"] = pageSize
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/collections/",
            query: query,
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
    * Summary: Add a Collection
    * Description: Create a collection. See `CreateCollection` for the list of attributes needed to create a collection and **collections/query-options** for the available options to create a collection. On successful request, returns a paginated list of collections specified in `CollectionDetailResponse`
    **/
    public func addCollection(
        body: CreateCollection,
        onResponse: @escaping (_ response: CollectionDetailResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/catalog/v1.0/collections/",
            query: query,
            body: body.dictionary,
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
        
        onResponse: @escaping (_ response: GetCollectionListingItemsResponse?, _ error: FDKError?) -> Void
    ) {
        var query: [String: Any] = [:]

        query["f"] = f
        query["filters"] = filters
        query["sort_on"] = sortOn
        query["page_id"] = pageId
        query["page_size"] = pageSize
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/collections/\(slug)/items/",
            query: query,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    var err = Utility.decode(FDKError.self, from: data)
                    if err?.status == nil {
                        err?.status = responseCode
                    }
                    onResponse(nil, err)
                } else if let data = responseData {
                    let response = Utility.decode(GetCollectionListingItemsResponse.self, from: data)
                    onResponse(response, nil)
                } else {
                    onResponse(nil, nil)
                }
        });
    }
    
    /**
    *
    * Summary: Add items to a collection
    * Description: Adds items to a collection specified by its `slug`. See `CollectionItemsRequest` for the list of attributes needed to add items to an collection.
    **/
    public func addCollectionItemsBySlug(
        slug: String,
        body: CollectionItemsRequest,
        onResponse: @escaping (_ response: CollectionItemsResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/catalog/v1.0/collections/\(slug)/items/",
            query: query,
            body: body.dictionary,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    var err = Utility.decode(FDKError.self, from: data)
                    if err?.status == nil {
                        err?.status = responseCode
                    }
                    onResponse(nil, err)
                } else if let data = responseData {
                    let response = Utility.decode(CollectionItemsResponse.self, from: data)
                    onResponse(response, nil)
                } else {
                    onResponse(nil, nil)
                }
        });
    }
    
    /**
    *
    * Summary: Update a collection
    * Description: Update a collection by it's slug. On successful request, returns the updated collection
    **/
    public func updateCollectionDetailBySlug(
        slug: String,
        
        onResponse: @escaping (_ response: CollectionsUpdateDetailResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "put",
            url: "/service/application/catalog/v1.0/collections/\(slug)/",
            query: query,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    var err = Utility.decode(FDKError.self, from: data)
                    if err?.status == nil {
                        err?.status = responseCode
                    }
                    onResponse(nil, err)
                } else if let data = responseData {
                    let response = Utility.decode(CollectionsUpdateDetailResponse.self, from: data)
                    onResponse(response, nil)
                } else {
                    onResponse(nil, nil)
                }
        });
    }
    
    /**
    *
    * Summary: Delete a Collection
    * Description: Delete a collection by it's slug. Returns an object that tells whether the collection was deleted successfully
    **/
    public func deleteCollectionDetailBySlug(
        slug: String,
        
        onResponse: @escaping (_ response: CollectionDetailViewDeleteResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "delete",
            url: "/service/application/catalog/v1.0/collections/\(slug)/",
            query: query,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    var err = Utility.decode(FDKError.self, from: data)
                    if err?.status == nil {
                        err?.status = responseCode
                    }
                    onResponse(nil, err)
                } else if let data = responseData {
                    let response = Utility.decode(CollectionDetailViewDeleteResponse.self, from: data)
                    onResponse(response, nil)
                } else {
                    onResponse(nil, nil)
                }
        });
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/collections/\(slug)/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/follow/\(collectionType)/",
            query: query,
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
    * Summary: UnFollow a Product
    * Description: You can undo a followed Product or Brand by its id, we refer this action as _unfollow_. Pass the uid of the product in request URL
    **/
    public func unfollowById(
        collectionType: String,
        collectionId: Int,
        
        onResponse: @escaping (_ response: FollowPostResponse?, _ error: FDKError?) -> Void
    ) {
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "delete",
            url: "/service/application/catalog/v1.0/follow/\(collectionType)/\(collectionId)/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/catalog/v1.0/follow/\(collectionType)/\(collectionId)/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/follow/\(collectionType)/\(collectionId)/count/",
            query: query,
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

        query["collection_type"] = collectionType
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/follow/ids/",
            query: query,
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

        query["page_no"] = pageNo
        query["page_size"] = pageSize
        query["q"] = q
        query["range"] = range
        query["latitude"] = latitude
        query["longitude"] = longitude
         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/catalog/v1.0/analytics/store-list/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/lead/v1.0/ticket/\(id)",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/lead/v1.0/ticket/\(ticketId)/history",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/lead/v1.0/ticket/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/lead/v1.0/form/\(slug)",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/lead/v1.0/form/\(slug)/submit",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/lead/v1.0/video/room/\(uniqueName)/participants",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/lead/v1.0/video/room/\(uniqueName)/token",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/share/v1.0/qr/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/share/v1.0/qr/products/\(slug)/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/share/v1.0/qr/collection/\(slug)/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/share/v1.0/qr/url/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "post",
            url: "/service/application/share/v1.0/links/short-link/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/share/v1.0/links/short-link/\(hash)/",
            query: query,
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
        let query: [String: Any] = [:]

         
        APIClient.execute(
            config: config,
            method: "get",
            url: "/service/application/share/v1.0/links/short-link/\(hash)/original/",
            query: query,
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

