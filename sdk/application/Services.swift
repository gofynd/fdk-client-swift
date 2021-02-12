

    
class Catalog {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get a product
    * Description:  Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given **slug**. If successful, returns a Product resource in the response body specified in `ProductDetail`
    **/
    func getProductDetailBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: ProductDetail?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductDetail.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get the sizes of a product
    * Description:  A product can exist in multiple sizes. Use this API to fetch all the available sizes of a product. If successful, returns a ProductSize object in the response body as specified in `ProductSizes`
    **/
    func getProductSizesBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: ProductSizes?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/sizes/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductSizes.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get price a product size
    * Description:  Any available product can exist in multiple sizes. Sometimes prices may vary among different sizes of the same product. Use this API to retrieve the price of the product of a particular size with the location details it is available in.
    **/
    func getProductPriceBySlug(
        slug: String, 
        size: String,  
        opts: [String: Any]?,
        (_ response: ProductSizePriceResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/price/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductSizePriceResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List sellers of a product
    * Description:  A product of a particular size can be sold by multiple sellers. Use this API to fetch the sellers who are selling this product and have the stock of a particular size
    **/
    func getProductSellersBySlug(
        slug: String, 
        size: String,  
        opts: [String: Any]?,
        (_ response: ProductSizeSellersResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/sizes/\(size)/sellers/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductSizeSellersResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Compare products
    * Description:  Compare between the features of the given set of products Use this API to compare how one product ranks against other products. Note that at least one slug is mandatory in request query.
    **/
    func getProductComparisonBySlugs(
        slug: String,  
        opts: [String: Any]?,
        (_ response: ProductsComparisonResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/compare/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductsComparisonResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get comparison between similar products
    * Description:  Compare between the features of the given set of products Use this API to compare how one product ranks against other products
    **/
    func getSimilarComparisonProductBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: ProductCompareResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/similar/compare/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductCompareResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get comparison between frequently compared products with the given product
    * Description:  Compare between the features of the give product with frequently compared products Use this API to compare how one product ranks against other products
    **/
    func getComparedFrequentlyProductBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: ProductFrequentlyComparedSimilarResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/similar/compared-frequently/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductFrequentlyComparedSimilarResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get similar products
    * Description:  Get products similar to the one specified by the `identifier`. If successful, it returns a group of similar products based on type as described in `SimilarProductByTypeResponse`
    **/
    func getProductSimilarByIdentifier(
        slug: String, 
        similarType: String,  
        opts: [String: Any]?,
        (_ response: SimilarProductByTypeResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/similar/\(similar_type)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(SimilarProductByTypeResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get variant of a particular product
    * Description:  A product can have a different type of variants varies from color to shade etc. Use this API to fetch all the available variants of a product. If successful, returns a Products for different variants type in the response body as specified in `ProductVariantResponse`
    **/
    func getProductVariantsBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: ProductVariantsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/\(slug)/variants/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductVariantsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get the stock of a product
    * Description:  Retrieve the available stock of the products. You can use this API to retrieve stock of multiple products at a time. Only 50 product IDs can be given in a single API request
    **/
    func getProductStockByIds( 
        opts: [String: Any]?,
        (_ response: ProductStockStatusResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/stock-status/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductStockStatusResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get the stock of a product
    * Description:  Retrieve the available stock of the products. You can use this api to get stock status of products whose inventory is updated in given time
    **/
    func getProductStockForTimeByIds(
        timestamp: String,  
        opts: [String: Any]?,
        (_ response: ProductStockPolling?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/stock-status/poll/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductStockPolling.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List the products
    * Description:  List all the products associated with a brand, collection or category in a requested sort order. The API additionally supports arbitrary search queries that may refer the name of any product, brand, category or collection. If successful, returns a paginated list of products specified in `ProductListingResponse`
    **/
    func getProducts( 
        opts: [String: Any]?,
        (_ response: ProductListingResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/products/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ProductListingResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List all the brands
    * Description:  A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`
    **/
    func getBrands( 
        opts: [String: Any]?,
        (_ response: BrandListingResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/brands/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(BrandListingResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get metadata of a brand
    * Description:  Fetch metadata of a brand. If successful, returns a metadata object specified in `BrandDetailResponse`
    **/
    func getBrandDetailBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: BrandDetailResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/brands/\(slug)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(BrandDetailResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List all the categories
    * Description:  List all the categories. You can optionally pass filter the brands by the department. If successful, returns a paginated list of brands specified in `CategoryListingResponse`
    **/
    func getCategories( 
        opts: [String: Any]?,
        (_ response: CategoryListingResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/categories/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CategoryListingResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get metadata of a category
    * Description:  Fetch metadata of a category. If successful, returns a metadata object specified in `CategoryMetaResponse`
    **/
    func getCategoryDetailBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: CategoryMetaResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/categories/\(slug)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CategoryMetaResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List the products
    * Description:  List all the products associated with a brand, collection or category in a random order. If successful, returns a paginated list of products specified in `HomeListingResponse`
    **/
    func getHomeProducts( 
        opts: [String: Any]?,
        (_ response: HomeListingResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/home/listing/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(HomeListingResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List all the departments
    * Description:  Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`
    **/
    func getDepartments( 
        opts: [String: Any]?,
        (_ response: DepartmentResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/departments/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(DepartmentResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get relevant suggestions for a search query
    * Description:  Retrieves a list of suggestions for a given search query. Each suggestion is a valid search term that's generated on the basis of what is given in query. This is particularly useful to enhance the user experience in search. The given search query can be a partial name of any product, brand and category. For example, if the given search query `q` is _ski_ the relevant search suggestions returned might be a list containing _skirt_, _ski shoes_, __skin cream_ etc.
    **/
    func getSearchResults(
        q: String,  
        opts: [String: Any]?,
        (_ response: AutoCompleteResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/auto-complete/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(AutoCompleteResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List all the collections
    * Description:  A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections`
    **/
    func getCollections( 
        opts: [String: Any]?,
        (_ response: GetCollectionListingResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/collections/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetCollectionListingResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get the items in a collection
    * Description:  Get items in a collection specified by its `slug`.
    **/
    func getCollectionItemsBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: GetCollectionListingItemsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/collections/\(slug)/items/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetCollectionListingItemsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get a particular collection
    * Description:  Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`
    **/
    func getCollectionDetailBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: CollectionDetailResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/collections/\(slug)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CollectionDetailResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get a list of followed Products, Brands, Collections
    * Description:  A User can follow a Product they like. This API retrieves the products the user have followed. If successful, returns a Followed resource in the response body specified in `GetFollowResponseSchema`
    **/
    func getFollowedListing(
        collectionType: String,  
        opts: [String: Any]?,
        (_ response: GetFollowListingResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/follow/\(collection_type)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetFollowListingResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Follow a particular Product
    * Description:  Follow a particular Product specified by its uid. Pass the uid of the product in request URL
    **/
    func followById(
        collectionType: String, 
        collectionId: Int,  
        opts: [String: Any]?,
        (_ response: FollowPostResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/catalog/v1.0/follow/\(collection_type)/\(collection_id)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(FollowPostResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: UnFollow a Product
    * Description:  You can undo a followed Product or Brand by its id, we refer this action as _unfollow_. Pass the uid of the product in request URL
    **/
    func unfollowById(
        collectionType: String, 
        collectionId: Int,  
        opts: [String: Any]?,
        (_ response: FollowPostResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/catalog/v1.0/follow/\(collection_type)/\(collection_id)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(FollowPostResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Follow Count
    * Description:  Get count of followers for given collection type and collection id.
    **/
    func getFollowerCountById(
        collectionType: String, 
        collectionId: String,  
        opts: [String: Any]?,
        (_ response: FollowerCountResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/follow/\(collection_type)/\(collection_id)/count/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(FollowerCountResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get the Ids of followed product, brand and collection.
    * Description:  You can get the ids of all the followed Product, Brand and Collections. Pass collection_type as query parameter to fetch specific Ids
    **/
    func getFollowIds( 
        opts: [String: Any]?,
        (_ response: FollowIdsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/catalog/v1.0/follow/ids/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(FollowIdsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Cart {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Fetch all Items Added to  Cart
    * Description:  Get all the details of a items added to cart  by uid. If successful, returns a Cart resource in the response body specified in GetCartResponse
    **/
    func getCart( 
        opts: [String: Any]?,
        (_ response: GetCartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetCartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Last-Modified timestamp
    * Description:  Fetch Last-Modified timestamp in header metadata
    **/
    func getCartLastModified( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "head",
            url: "/service/application/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add Items to Cart
    * Description:  <p>Add Items to cart. See `AddCartRequest` in schema of request body for the list of attributes needed to add items to a cart. On successful request, returns cart response containing details of items, coupons available etc.these attributes will be fetched from the folowing api's</p>
    **/
    func addItems( 
        opts: [String: Any]?,
        (_ response: CartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Items already added to Cart
    * Description:  Request object containing attributes like item_quantity and item_size which can be updated .these attributes will be fetched from the folowing api's</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
    **/
    func updateCart( 
        opts: [String: Any]?,
        (_ response: CartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Cart item count
    * Description:  Get total count of item present in cart
    **/
    func getItemCount( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/basic",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Coupon
    * Description:  Get all the details of a coupons applicable to cart  by uid. If successful, returns a Coupon resource in the response body specified in GetCouponResponse
    **/
    func getCoupons( 
        opts: [String: Any]?,
        (_ response: GetCouponResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/coupon",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetCouponResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Apply Coupon
    * Description:  <p>Apply Coupons on Items added to cart. On successful request, returns cart response containing details of items ,coupons applied etc.these attributes will be consumed by  api</p> <ul> <li> <font color="monochrome">coupon_code</font></li>
</ul>
    **/
    func applyCoupon( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/cart/v1.0/coupon",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Remove Coupon Applied
    * Description:  Remove Coupon applied on the cart by passing uid in request body.
    **/
    func removeCoupon( 
        opts: [String: Any]?,
        (_ response: CartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/cart/v1.0/coupon",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get discount offers based on quantity
    * Description:  List applicable offers along with current, next and best offer for given product. Either one of **uid**, **item_id**, **slug** should be present*
    **/
    func getBulkDiscountOffers( 
        opts: [String: Any]?,
        (_ response: BulkPriceResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/bulk-price",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(BulkPriceResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Address
    * Description:  Get all the addresses associated with the account. If successful, returns a Address resource in the response body specified in GetAddressResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
    **/
    func getAddresses( 
        opts: [String: Any]?,
        (_ response: GetAddressResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/address",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetAddressResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add Address to the account
    * Description:  <p>Add Address to account. See `SaveAddressRequest` in schema of request body for the list of attributes needed to add Address to account. On successful request, returns response containing address_id ,is_default_address and success message.
    **/
    func addAddress( 
        opts: [String: Any]?,
        (_ response: SaveAddressResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/cart/v1.0/address",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(SaveAddressResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Single Address
    * Description:  Get a addresses with the given id. If successful, returns a Address resource in the response body specified in GetAddressResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
    **/
    func getAddressById(
        id: Int,  
        opts: [String: Any]?,
        (_ response: GetAddressResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/address/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetAddressResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Address alreay added to account
    * Description:  Request object containing attributes mentioned in  <font color="blue">UpdateAddressRequest </font> can be updated .these attributes are :</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>
    **/
    func updateAddress(
        id: Int,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/cart/v1.0/address/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Remove Address Associated to the account
    * Description:  Delete a Address by it's address_id. Returns an object that tells whether the address was deleted successfully
    **/
    func removeAddress(
        id: Int,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/cart/v1.0/address/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Select Address from All Addresses
    * Description:  <p>Select Address from all addresses associated with the account in order to ship the cart items to .that address,otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, returns Cart object response.below are the address attributes which needs to be sent. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>
    **/
    func selectAddress( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/cart/v1.0/select-address",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Cart Payment for valid coupon
    * Description:  Validate coupon for selected payment mode
    **/
    func getPaymentModes( 
        opts: [String: Any]?,
        (_ response: PaymentOptions?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/payment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PaymentOptions.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Cart Payment
    * Description:  Update Cart Payment for Your Account
    **/
    func selectPaymentMode( 
        opts: [String: Any]?,
        (_ response: PaymentOptions?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/cart/v1.0/payment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PaymentOptions.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get delivery date and options before checkout
    * Description:  Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created.
    **/
    func getShipments( 
        opts: [String: Any]?,
        (_ response: CartShipmentsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/shipment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartShipmentsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Checkout Cart
    * Description:  Checkout all items in cart to payment and order generation.                         For COD only order will be generated while for other checkout mode                         user will be redirected to payment gateway
    **/
    func checkoutCart( 
        opts: [String: Any]?,
        (_ response: CartCheckoutResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/cart/v1.0/checkout",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartCheckoutResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Cart Meta
    * Description:  Update cart meta like checkout_mode, gstin.
    **/
    func updateCartMeta( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/cart/v1.0/meta",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Generate Cart sharing link token
    * Description:  Generates shared cart snapshot and returns shortlink token
    **/
    func getCartShareLink( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/cart/v1.0/share-cart",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get shared cart snapshot and cart response
    * Description:  Returns shared cart response for sent token with `shared_cart_details`                    containing shared cart details in response.
    **/
    func getCartSharedItems(
        token: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/cart/v1.0/share-cart/\(token)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Merge or Replace existing cart
    * Description:  Merge or Replace cart based on `action` parameter with shared cart of `token`
    **/
    func updateCartWithSharedItems(
        token: String, 
        action: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/cart/v1.0/share-cart/\(token)/\(action)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Lead {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get Ticket with the specific id
    * Description:  Get Ticket with the specific id, this is used to view the ticket details
    **/
    func getTicket(
        id: String,  
        opts: [String: Any]?,
        (_ response: Ticket?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/lead/v1.0/ticket/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Ticket.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create history for specific Ticket
    * Description:  Create history for specific Ticket, this history is seen on ticket detail page, this can be comment, log or rating.
    **/
    func createHistoryForTicket(
        ticketId: String,  
        opts: [String: Any]?,
        (_ response: TicketHistory?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/services/application/lead/v1.0/ticket/\(ticket_id)/history",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(TicketHistory.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create Ticket
    * Description:  This is used to Create Ticket.
    **/
    func createTicket( 
        opts: [String: Any]?,
        (_ response: Ticket?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/services/application/lead/v1.0/ticket/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Ticket.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get specific Custom Form using it's slug
    * Description:  Get specific Custom Form using it's slug, this is used to view the form.
    **/
    func getCustomForm(
        slug: String,  
        opts: [String: Any]?,
        (_ response: CustomForm?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/lead/v1.0/form/\(slug)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CustomForm.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Submit Response for a specific Custom Form using it's slug
    * Description:  Submit Response for a specific Custom Form using it's slug, this response is then used to create a ticket on behalf of the user.
    **/
    func submitCustomForm(
        slug: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/services/application/lead/v1.0/form/\(slug)/submit",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get participants of a specific Video Room using it's unique name
    * Description:  Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.
    **/
    func getParticipantsInsideVideoRoom(
        uniqueName: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/lead/v1.0/video/room/\(unique_name)/participants",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Token to join a specific Video Room using it's unqiue name
    * Description:  Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.
    **/
    func getTokenForVideoRoom(
        uniqueName: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/lead/v1.0/video/room/\(unique_name)/token",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Theme {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get applied theme for an application
    * Description:  
    **/
    func getAppliedTheme( 
        opts: [String: Any]?,
        (_ response: ThemesSchema?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/theme/v1.0/applied-theme",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ThemesSchema.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get theme for preview
    * Description:  
    **/
    func getThemeForPreview(
        themeId: String,  
        opts: [String: Any]?,
        (_ response: ThemesSchema?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/theme/v1.0/\(themeId)/preview",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ThemesSchema.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class User {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Login/Register with Facebook
    * Description:  Used to login or register with Facebook
    **/
    func loginWithFacebook( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/facebook-token",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Login/Register with Google
    * Description:  Used to login or register with Google
    **/
    func loginWithGoogle( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/google-token",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Login/Register with Google for android
    * Description:  Used to login or register with Google for android
    **/
    func loginWithGoogleAndroid( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/google-android",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Login/Register with Google for ios
    * Description:  Used to login or register with google for ios
    **/
    func loginWithGoogleIOS( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/google-ios",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Login/Register with OTP
    * Description:  Used to login or register with OTP
    **/
    func loginWithOTP( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/otp",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Login/Register with password
    * Description:  Used to login or register with email & password
    **/
    func loginWithEmailAndPassword( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/password",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Reset Password
    * Description:  Used to reset account password
    **/
    func sendResetPasswordEmail( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/password/reset",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: 
    * Description:  
    **/
    func forgotPassword( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/userauthentication/v1.0/login/password/reset/forgot",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: 
    * Description:  Send code incase of reset password
    **/
    func sendResetToken( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/password/reset/token",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Login/Register with token
    * Description:  Login/Register with token
    **/
    func loginWithToken( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/login/token",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Registration Form
    * Description:  Register using form
    **/
    func registerWithForm( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/register/form",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Verify email
    * Description:  Used to verify email
    **/
    func verifyEmail( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/verify/email",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Verify mobile
    * Description:  Verify mobile
    **/
    func verifyMobile( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/verify/mobile",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Check if user has password
    * Description:  Checks if user is using password or not
    **/
    func hasPassword( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/user/authentication/v1.0/has-password",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update user password
    * Description:  Used to update user password
    **/
    func updatePassword( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/password",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Logout user
    * Description:  Used to log out user
    **/
    func logout( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/user/authentication/v1.0/logout",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Send OTP on mobile
    * Description:  Used to send otp to mobile
    **/
    func sendOTPOnMobile( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/otp/mobile/send",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Verify OTP on mobile
    * Description:  Used to verify otp sent to mobile
    **/
    func verifyMobileOTP( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/otp/mobile/verify",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Send OTP on email
    * Description:  Used to send otp to email
    **/
    func sendOTPOnEmail( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/otp/email/send",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Verify OTP on email
    * Description:  Used to verify otp sent to email
    **/
    func verifyEmailOTP( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/authentication/v1.0/otp/email/verify",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get logged in user
    * Description:  Used to get logged in user details
    **/
    func getLoggedInUser( 
        opts: [String: Any]?,
        (_ response: UserSchema?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/user/authentication/v1.0/session",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(UserSchema.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of sessions
    * Description:  Lists all active sessions
    **/
    func getListOfActiveSessions( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/user/authentication/v1.0/sessions",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get platform config
    * Description:  Used to get platform config
    **/
    func getPlatformConfig( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/user/platform/v1.0/config",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Edit Profile Details
    * Description:  Used to update profile
    **/
    func updateProfile( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/profile/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add mobile number to profile
    * Description:  Used to add new mobile number to profile
    **/
    func addMobileNumber( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/user/profile/v1.0/mobile",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Delete mobile number from profile
    * Description:  Used to delete mobile number from profile
    **/
    func deleteMobileNumber(
        active: Bool, 
        primary: Bool, 
        verified: Bool, 
        countryCode: String, 
        phone: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/user/profile/v1.0/mobile",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Set mobile as primary
    * Description:  Used to set a mobile number as primary
    **/
    func setMobileNumberAsPrimary( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/profile/v1.0/mobile/primary",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Send verification link to mobile
    * Description:  Used to send verification link to a mobile number
    **/
    func sendVerificationLinkToMobile( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/profile/v1.0/mobile/link/send",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add email to profile
    * Description:  Used to add new email to profile
    **/
    func addEmail( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/user/profile/v1.0/email",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Delete email from profile
    * Description:  Used to delete email from profile
    **/
    func deleteEmail(
        active: Bool, 
        primary: Bool, 
        verified: Bool, 
        email: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/user/profile/v1.0/email",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Set email as primary
    * Description:  Used to set an email as primart
    **/
    func setEmailAsPrimary( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/profile/v1.0/email/primary",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Send verification link to email
    * Description:  Used to sent verification to an email
    **/
    func sendVerificationLinkToEmail( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/user/profile/v1.0/email/link/send",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Content {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get live announcements
    * Description:  Get live announcements for each or all pages with page slug of page and end date schedule.
    **/
    func getAnnouncements( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/announcements",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Blog by slug
    * Description:  Use this API to fetch a blog using `slug`
    **/
    func getBlog(
        slug: String,  
        opts: [String: Any]?,
        (_ response: CustomBlog?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/blogs/\(slug)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CustomBlog.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get frequently asked questions
    * Description:  Get frequently asked questions list. These will be helpful for users to using website.
    **/
    func getFaqs( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/faqs",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get landing page
    * Description:  Use this API to fetch a landing page
    **/
    func getLandingPage(
        xDevicePlatform: String,  
        opts: [String: Any]?,
        (_ response: LandingPage?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/landing-page",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(LandingPage.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get legal information
    * Description:  Get legal information of application, which includes policy, Terms and Conditions, and FAQ information of application.
    **/
    func getLegalInformation( 
        opts: [String: Any]?,
        (_ response: ApplicationLegal?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/legal",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ApplicationLegal.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get navigation
    * Description:  Use this API to fetch a navigation
    **/
    func getNavigations(
        xDevicePlatform: String,  
        opts: [String: Any]?,
        (_ response: Navigation?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/navigations/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Navigation.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Page by slug
    * Description:  Use this API to fetch a custom page using `slug`
    **/
    func getPage(
        slug: String,  
        opts: [String: Any]?,
        (_ response: CustomPage?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/pages/\(slug)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CustomPage.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get seo of application
    * Description:  Get seo of application
    **/
    func getSeo( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/seo",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get slideshow by slug
    * Description:  Use this API to fetch a slideshow using `slug`
    **/
    func getSlideshow(
        slug: String, 
        xDevicePlatform: String,  
        opts: [String: Any]?,
        (_ response: Slideshow?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/slideshow/\(slug)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Slideshow.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get support information
    * Description:  Get contact details for customer support. Including emails and phone numbers
    **/
    func getSupportInformation( 
        opts: [String: Any]?,
        (_ response: Support?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/support",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Support.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Tags for application
    * Description:  
    **/
    func getFPITags( 
        opts: [String: Any]?,
        (_ response: TagsSchema?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/content/v1.0/tags",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(TagsSchema.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Communication {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get communication consent
    * Description:  Get communication consent
    **/
    func getCommunicationConsent( 
        opts: [String: Any]?,
        (_ response: CommunicationConsent?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/communication/v1.0/consent",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CommunicationConsent.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Upsert communication consent
    * Description:  Upsert communication consent
    **/
    func upsertCommunicationConsent( 
        opts: [String: Any]?,
        (_ response: CommunicationConsentRes?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/communication/v1.0/consent",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CommunicationConsentRes.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Upsert push token of a user
    * Description:  Upsert push token of a user
    **/
    func upsertPushtoken( 
        opts: [String: Any]?,
        (_ response: PushtokenRes?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/platform/communication/v1.0/pn-token",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PushtokenRes.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Share {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Create application QR Code
    * Description:  Create application QR Code
    **/
    func getApplicationQRCode( 
        opts: [String: Any]?,
        (_ response: qrResp?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/share/v1.0/qr/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(qrResp.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create product QR Code
    * Description:  Create product QR Code
    **/
    func getProductQRCodeBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: qrResp?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/share/v1.0/qr/products/\(slug)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(qrResp.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create collection QR Code
    * Description:  Create collection QR Code
    **/
    func getCollectionQRCodeBySlug(
        slug: String,  
        opts: [String: Any]?,
        (_ response: qrResp?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/share/v1.0/qr/collection/\(slug)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(qrResp.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create url QR Code
    * Description:  Create url QR Code
    **/
    func getUrlQRCode(
        url: String,  
        opts: [String: Any]?,
        (_ response: qrResp?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/share/v1.0/qr/url/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(qrResp.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create short link
    * Description:  Create short link
    **/
    func createShortLink( 
        opts: [String: Any]?,
        (_ response: shortUrlRes?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/share/v1.0/links/short-link/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(shortUrlRes.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get short link by hash
    * Description:  Get short link by hash
    **/
    func getShortLinkByHash(
        hash: String,  
        opts: [String: Any]?,
        (_ response: shortUrlRes?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/share/v1.0/links/short-link/\(hash)/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(shortUrlRes.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get original link by hash
    * Description:  Get original link by hash
    **/
    func getOriginalShortLinkByHash(
        hash: String,  
        opts: [String: Any]?,
        (_ response: shortUrlRes?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/share/v1.0/links/short-link/\(hash)/original/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(shortUrlRes.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class FileStorage {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.
    * Description:  Uploads an arbitrarily sized buffer or blob.

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
    func startUpload(
        namespace: String,  
        opts: [String: Any]?,
        (_ response: startResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/assets/v1.0/uploads/\(namespace)/start/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(startResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.
    * Description:  Uploads an arbitrarily sized buffer or blob.

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
    func completeUpload(
        namespace: String,  
        opts: [String: Any]?,
        (_ response: completeResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/assets/v1.0/uploads/\(namespace)/complete/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(completeResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Configuration {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get current application details
    * Description:  Get current application details.
    **/
    func getApplication( 
        opts: [String: Any]?,
        (_ response: Application?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/application",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Application.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get application, owner and seller information
    * Description:  Get application information with owner and seller basic details
    **/
    func getOwnerInfo( 
        opts: [String: Any]?,
        (_ response: ApplicationAboutResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/about",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ApplicationAboutResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get basic application details
    * Description:  Get basic application details like name
    **/
    func getBasicDetails( 
        opts: [String: Any]?,
        (_ response: ApplicationDetailResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ApplicationDetailResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get integration tokens
    * Description:  Get tokens for multiple integrations like Facebook, Googlemaps, Segment, Firebase, etc. Note: token values are encrypted with AES encryption using secret key. Kindly reach to developers for secret key.
    **/
    func getIntegrationTokens( 
        opts: [String: Any]?,
        (_ response: TokensResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/token",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(TokensResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Check if a new app version is available
    * Description:  Before launching the app (android/iOS), check if a new version is available. Response gives 3 update modes viz. FORCE, AVAILABLE, UP_TO_DATE. `FORCE`- Application should be updated necessarily. `AVAILABLE`- A new version available. But its not necessary to update. `UP_TO_DATE`- Application is at the latest version. These 3 modes are computed at the backend based on the lastest version of app available and the oldest version of app supported by the system.
    **/
    func getAppVersion( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/configuration/v1.0/version",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get deployment meta stores
    * Description:  Get deployment meta stores.
    **/
    func getOrderingStores( 
        opts: [String: Any]?,
        (_ response: OrderingStores?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/deploymentmeta/stores",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(OrderingStores.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get features of application
    * Description:  Get features of application
    **/
    func getFeatures( 
        opts: [String: Any]?,
        (_ response: AppFeatureResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/feature",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(AppFeatureResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get application information
    * Description:  Get Application Current Information. This includes information about social links, address and contact information of company/seller/brand of the application.
    **/
    func getContactInfo( 
        opts: [String: Any]?,
        (_ response: ApplicationInformation?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/information",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ApplicationInformation.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get application enabled currencies
    * Description:  Get currency list for allowed currencies under current application
    **/
    func getCurrencies( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/currencies",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get currency by id
    * Description:  Get currency object with symbol and name information by id.
    **/
    func getCurrencyById(
        id: String,  
        opts: [String: Any]?,
        (_ response: Currency?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/currency/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Currency.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of languages
    * Description:  Get list of supported languages under application.
    **/
    func getLanguages( 
        opts: [String: Any]?,
        (_ response: LanguageResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/configuration/v1.0/languages",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(LanguageResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Payment {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get payment gateway keys
    * Description:  Get payment gateway (key, secrets, merchant, sdk/api detail) to complete payment at front-end.
    **/
    func getAggregatorsConfig( 
        opts: [String: Any]?,
        (_ response: AggregatorsConfigDetailResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/payment/v1.0/config/aggregators/key",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(AggregatorsConfigDetailResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Attach a saved card to customer.
    * Description:  Attach a saved card to customer at payment gateway i.e stripe and refresh card cache.
    **/
    func attachCardToCustomer( 
        opts: [String: Any]?,
        (_ response: AttachCardsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/card/attach",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(AttachCardsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch active payment gateway for card
    * Description:  Fetch active payment gateway along with customer id for cards payments.
    **/
    func getActiveCardAggregator( 
        opts: [String: Any]?,
        (_ response: ActiveCardPaymentGatewayResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/payment/v1.0/card/aggregator",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ActiveCardPaymentGatewayResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch the list of saved cards of user.
    * Description:  Fetch the list of saved cards of user from active payment gateway.
    **/
    func getActiveUserCards( 
        opts: [String: Any]?,
        (_ response: ListCardsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/payment/v1.0/cards",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ListCardsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Delete an user card.
    * Description:  Delete an added user card on payment gateway and remove from cache.
    **/
    func deleteUserCard( 
        opts: [String: Any]?,
        (_ response: DeleteCardsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/card/remove",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(DeleteCardsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Validate customer for payment.
    * Description:  Validate customer for payment i.e Simpl paylater, Rupifi loan.
    **/
    func verifyCustomerForPayment( 
        opts: [String: Any]?,
        (_ response: ValidateCustomerResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/payment/customer/validation",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ValidateCustomerResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Verify and charge payment
    * Description:  Verify and charge payment server to server for Simpl & Mswipe.
    **/
    func verifyAndChargePayment( 
        opts: [String: Any]?,
        (_ response: ChargeCustomerResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/payment/confirm/charge",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ChargeCustomerResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Payment Initialisation server to server for UPI and BharatQR.
    * Description:  Payment Initialisation for UPI & BharatQR code, UPI requests to app and QR code to be displayed on screen.
    **/
    func initialisePayment( 
        opts: [String: Any]?,
        (_ response: PaymentInitializationResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/payment/request",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PaymentInitializationResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Continous polling to check status of payment on server.
    * Description:  Continous polling on interval to check status of payment untill timeout.
    **/
    func checkAndUpdatePaymentStatus( 
        opts: [String: Any]?,
        (_ response: PaymentStatusUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/payment/confirm/polling",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PaymentStatusUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List User Beneficiary
    * Description:  Get all active  beneficiary details added by the user for refund
    **/
    func getUserBeneficiariesDetail(
        orderId: String,  
        opts: [String: Any]?,
        (_ response: OrderBeneficiaryResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/payment/v1.0/refund/beneficiary/user",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(OrderBeneficiaryResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Ifsc Code Verification
    * Description:  Get True/False for correct IFSC Code for adding bank details for refund
    **/
    func verifyIfscCode( 
        opts: [String: Any]?,
        (_ response: IfscCodeResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/payment/v1.0/ifsc-code/verify",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(IfscCodeResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: List Order Beneficiary
    * Description:  Get all active  beneficiary details added by the user for refund
    **/
    func getOrderBeneficiariesDetail(
        orderId: String,  
        opts: [String: Any]?,
        (_ response: OrderBeneficiaryResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/payment/v1.0/refund/beneficiaries/order",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(OrderBeneficiaryResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Save Beneficiary details on otp validation.
    * Description:  Save Beneficiary details on otp validation.
    **/
    func verifyOtpAndAddBeneficiaryForBank( 
        opts: [String: Any]?,
        (_ response: AddBeneficiaryViaOtpVerificationResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/refund/verification/bank",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(AddBeneficiaryViaOtpVerificationResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Save bank details for cancelled/returned order
    * Description:  Use this API to save bank details for returned/cancelled order to refund amount in his account.
    **/
    func addBeneficiaryDetails( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/refund/account",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Send Otp on Adding wallet beneficiary
    * Description:  Send Otp on Adding wallet beneficiary for user mobile verification
    **/
    func verifyOtpAndAddBeneficiaryForWallet( 
        opts: [String: Any]?,
        (_ response: WalletOtpResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/refund/verification/wallet",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(WalletOtpResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Mark Default Beneficiary For Refund
    * Description:  Mark Default Beneficiary ot of all Beneficiary Details for Refund
    **/
    func updateDefaultBeneficiary( 
        opts: [String: Any]?,
        (_ response: SetDefaultBeneficiaryResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/payment/v1.0/refund/beneficiary/default",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(SetDefaultBeneficiaryResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Order {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get Orders for application based on application Id
    * Description:  Get Orders
    **/
    func getOrders( 
        opts: [String: Any]?,
        (_ response: OrderList?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/v1.0/orders",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(OrderList.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Order by order id for application based on application Id
    * Description:  Get Order By Fynd Order Id
    **/
    func getOrderById(
        orderId: String,  
        opts: [String: Any]?,
        (_ response: OrderById?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/v1.0/orders/\(order_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(OrderById.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Shipment by shipment id and order id for application based on application Id
    * Description:  Get Shipment
    **/
    func getShipmentById(
        shipmentId: String,  
        opts: [String: Any]?,
        (_ response: ShipmentById?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/v1.0/orders/shipments/\(shipment_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ShipmentById.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Shipment reasons by shipment id and order id for application based on application Id
    * Description:  Get Shipment Reasons
    **/
    func getShipmentReasons(
        shipmentId: String,  
        opts: [String: Any]?,
        (_ response: ShipmentReasons?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/v1.0/orders/shipments/\(shipment_id)/reasons",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ShipmentReasons.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Shipment status by shipment id and order id for application based on application Id
    * Description:  Update Shipment Status
    **/
    func updateShipmentStatus(
        shipmentId: String,  
        opts: [String: Any]?,
        (_ response: ShipmentStatusUpdate?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/services/application/v1.0/orders/shipments/\(shipment_id)/status",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ShipmentStatusUpdate.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Track Shipment by shipment id and order id for application based on application Id
    * Description:  Shipment Track
    **/
    func trackShipment(
        shipmentId: String,  
        opts: [String: Any]?,
        (_ response: ShipmentTrack?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/services/application/v1.0/orders/shipments/\(shipment_id)/track",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ShipmentTrack.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Rewards {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get reward points that could be earned on any catalogue product.
    * Description:  Evaluate the amount of reward points that could be earned on any catalogue product.
    **/
    func getPointsOnProduct( 
        opts: [String: Any]?,
        (_ response: CatalogueOrderResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/rewards/v1.0/catalogue/offer/order/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CatalogueOrderResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Calculates the discount on order-amount based on amount ranges configured in order_discount reward.
    * Description:  Calculates the discount on order-amount based on amount ranges configured in order_discount reward.
    **/
    func getOrderDiscount( 
        opts: [String: Any]?,
        (_ response: OrderDiscountResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/rewards/v1.0/user/offers/order-discount/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(OrderDiscountResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Total available points of a user for current application
    * Description:  Total available points of a user for current application
    **/
    func getUserPoints( 
        opts: [String: Any]?,
        (_ response: PointsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/rewards/v1.0/user/points",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PointsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of points transactions.
    * Description:  Get list of points transactions.
The list of points history is paginated.
    **/
    func getUserPointsHistory( 
        opts: [String: Any]?,
        (_ response: PointsHistoryResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/rewards/v1.0/user/points/history/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PointsHistoryResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: User's referral details.
    * Description:  User's referral details.
    **/
    func getUserReferralDetails( 
        opts: [String: Any]?,
        (_ response: ReferralDetailsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/rewards/v1.0/user/referral/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(ReferralDetailsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Redeems referral code and credits points to users points account.
    * Description:  Redeems referral code and credits points to users points account.
    **/
    func redeemReferralCode( 
        opts: [String: Any]?,
        (_ response: RedeemReferralCodeResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/rewards/v1.0/user/referral/redeem/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(RedeemReferralCodeResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class Feedback {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: post a new abuse request
    * Description:  Report a new abuse for specific entity with description text.
    **/
    func createAbuseReport( 
        opts: [String: Any]?,
        (_ response: XInsertResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/feedback/v1.0/abuse",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XInsertResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update abuse details
    * Description:  Update the abuse details like status and description text.
    **/
    func updateAbuseReport( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/feedback/v1.0/abuse",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of abuse data
    * Description:  Get the list of abuse data from entity type and entity ID.
    **/
    func getAbuseReports(
        entityId: String, 
        entityType: String,  
        opts: [String: Any]?,
        (_ response: XNumberGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/abuse/entity/\(entity_type)/entity-id/\(entity_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XNumberGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of attribute data
    * Description:  Provides a list of all attribute data.
    **/
    func getAttributes( 
        opts: [String: Any]?,
        (_ response: XNumberGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/attributes",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XNumberGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add a new attribute request
    * Description:  Add a new attribute with its name, slug and description.
    **/
    func createAttribute( 
        opts: [String: Any]?,
        (_ response: XInsertResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/feedback/v1.0/attributes",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XInsertResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get single attribute data
    * Description:  Get a single attribute data from a given slug.
    **/
    func getAttribute(
        slug: String,  
        opts: [String: Any]?,
        (_ response: Attribute?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/attributes/\(slug)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Attribute.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update attribute details
    * Description:  Update the attribute's name and description.
    **/
    func updateAttribute(
        slug: String,  
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/feedback/v1.0/attributes/\(slug)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: post a new comment
    * Description:  This is used to add a new comment for specific entity.
    **/
    func createComment( 
        opts: [String: Any]?,
        (_ response: XInsertResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/feedback/v1.0/comment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XInsertResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update comment status
    * Description:  Update the comment status (active/approve) or text.
    **/
    func updateComment( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/feedback/v1.0/comment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of comments
    * Description:  Get the list of comments from specific entity type.
    **/
    func getComments(
        entityType: String,  
        opts: [String: Any]?,
        (_ response: XCursorGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/comment/entity/\(entity_type)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XCursorGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Checks eligibility and cloud media config
    * Description:  Checks eligibility to rate and review and cloud media configuration
    **/
    func checkEligibility(
        entityType: String, 
        entityId: String,  
        opts: [String: Any]?,
        (_ response: CheckEligibilityResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/config/entity/\(entity_type)/entity-id/\(entity_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CheckEligibilityResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Delete Media
    * Description:  Delete Media for the given entity IDs.
    **/
    func deleteMedia( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/feedback/v1.0/media/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add Media
    * Description:  Add Media list for specific entity.
    **/
    func createMedia( 
        opts: [String: Any]?,
        (_ response: XInsertResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/feedback/v1.0/media/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XInsertResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Media
    * Description:  Update Media (archive/approve) for the given entity.
    **/
    func updateMedia( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/feedback/v1.0/media/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Media
    * Description:  Get Media from the given entity type and entity ID.
    **/
    func getMedias(
        entityType: String, 
        entityId: String,  
        opts: [String: Any]?,
        (_ response: XCursorGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/media/entity/\(entity_type)/entity-id/\(entity_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XCursorGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get a review summary
    * Description:  Review summary gives ratings and attribute metrics of a review per entity
It gives following response data: review count, rating average. review metrics / attribute rating metrics which contains name, type, average and count.
    **/
    func getReviewSummaries(
        entityType: String, 
        entityId: String,  
        opts: [String: Any]?,
        (_ response: XCursorGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/rating/summary/entity/\(entity_type)/entity-id/\(entity_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XCursorGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add customer reviews
    * Description:  Add customer reviews for specific entity with following data:
attributes rating, entity rating, title, description, media resources and template id.
    **/
    func createReview( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/feedback/v1.0/review/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update customer reviews
    * Description:  Update customer reviews for specific entity with following data:
attributes rating, entity rating, title, description, media resources and template id.
    **/
    func updateReview( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/feedback/v1.0/review/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of customer reviews
    * Description:  This is used to get the list of customer reviews based on entity and provided filters.
    **/
    func getReviews(
        entityType: String, 
        entityId: String,  
        opts: [String: Any]?,
        (_ response: XCursorGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/review/entity/\(entity_type)/entity-id/\(entity_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XCursorGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get the templates for product or l3 type
    * Description:  This is used to get the templates details.
    **/
    func getTemplates( 
        opts: [String: Any]?,
        (_ response: XCursorGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/template/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XCursorGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create a new question
    * Description:  This is used to create a new question with following data:
tags, text, type, choices for MCQ type questions, maximum length of answer.
    **/
    func createQuestion( 
        opts: [String: Any]?,
        (_ response: XInsertResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/feedback/v1.0/template/qna/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XInsertResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update question
    * Description:  This is used to update question's status, tags and choices.
    **/
    func updateQuestion( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/feedback/v1.0/template/qna/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get a list of QnA
    * Description:  This is used to get a list of questions and its answers.
    **/
    func getQuestionAndAnswers(
        entityType: String, 
        entityId: String,  
        opts: [String: Any]?,
        (_ response: XCursorGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/template/qna/entity/\(entity_type)/entity-id/\(entity_id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XCursorGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get list of votes
    * Description:  This is used to get the list of votes of a current logged in user. Votes can be filtered using `ref_type` i.e. review | comment.
    **/
    func getVotes( 
        opts: [String: Any]?,
        (_ response: XNumberGetResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/feedback/v1.0/vote/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XNumberGetResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create a new vote
    * Description:  This is used to create a new vote and the actions can be upvote or downvote.
    **/
    func createVote( 
        opts: [String: Any]?,
        (_ response: XInsertResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/feedback/v1.0/vote/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XInsertResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update vote
    * Description:  This is used to update the vote and the actions can be upvote or downvote.
    **/
    func updateVote( 
        opts: [String: Any]?,
        (_ response: XUpdateResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/feedback/v1.0/vote/",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(XUpdateResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}


    
class PosCart {
    var config: Setup

    init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Fetch all Items Added to  Cart
    * Description:  Get all the details of a items added to cart  by uid. If successful, returns a Cart resource in the response body specified in GetCartResponse
    **/
    func getCart( 
        opts: [String: Any]?,
        (_ response: GetCartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetCartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Last-Modified timestamp
    * Description:  Fetch Last-Modified timestamp in header metadata
    **/
    func getCartLastModified( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "head",
            url: "/service/application/pos/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add Items to Cart
    * Description:  <p>Add Items to cart. See `AddCartRequest` in schema of request body for the list of attributes needed to add items to a cart. On successful request, returns cart response containing details of items, coupons available etc.these attributes will be fetched from the folowing api's</p>
    **/
    func addItems( 
        opts: [String: Any]?,
        (_ response: CartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/pos/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Items already added to Cart
    * Description:  Request object containing attributes like item_quantity and item_size which can be updated .these attributes will be fetched from the folowing api's</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
    **/
    func updateCart( 
        opts: [String: Any]?,
        (_ response: CartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/pos/cart/v1.0/detail",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Cart item count
    * Description:  Get total count of item present in cart
    **/
    func getItemCount( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/basic",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Coupon
    * Description:  Get all the details of a coupons applicable to cart  by uid. If successful, returns a Coupon resource in the response body specified in GetCouponResponse
    **/
    func getCoupons( 
        opts: [String: Any]?,
        (_ response: GetCouponResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/coupon",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetCouponResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Apply Coupon
    * Description:  <p>Apply Coupons on Items added to cart. On successful request, returns cart response containing details of items ,coupons applied etc.these attributes will be consumed by  api</p> <ul> <li> <font color="monochrome">coupon_code</font></li>
</ul>
    **/
    func applyCoupon( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/pos/cart/v1.0/coupon",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Remove Coupon Applied
    * Description:  Remove Coupon applied on the cart by passing uid in request body.
    **/
    func removeCoupon( 
        opts: [String: Any]?,
        (_ response: CartResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/pos/cart/v1.0/coupon",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get discount offers based on quantity
    * Description:  List applicable offers along with current, next and best offer for given product. Either one of **uid**, **item_id**, **slug** should be present*
    **/
    func getBulkDiscountOffers( 
        opts: [String: Any]?,
        (_ response: BulkPriceResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/bulk-price",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(BulkPriceResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Address
    * Description:  Get all the addresses associated with the account. If successful, returns a Address resource in the response body specified in GetAddressResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
    **/
    func getAddresses( 
        opts: [String: Any]?,
        (_ response: GetAddressResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/address",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetAddressResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Add Address to the account
    * Description:  <p>Add Address to account. See `SaveAddressRequest` in schema of request body for the list of attributes needed to add Address to account. On successful request, returns response containing address_id ,is_default_address and success message.
    **/
    func addAddress( 
        opts: [String: Any]?,
        (_ response: SaveAddressResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/pos/cart/v1.0/address",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(SaveAddressResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Fetch Single Address
    * Description:  Get a addresses with the given id. If successful, returns a Address resource in the response body specified in GetAddressResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
    **/
    func getAddressById(
        id: Int,  
        opts: [String: Any]?,
        (_ response: GetAddressResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/address/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(GetAddressResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Address alreay added to account
    * Description:  Request object containing attributes mentioned in  <font color="blue">UpdateAddressRequest </font> can be updated .these attributes are :</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>
    **/
    func updateAddress(
        id: Int,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/pos/cart/v1.0/address/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Remove Address Associated to the account
    * Description:  Delete a Address by it's address_id. Returns an object that tells whether the address was deleted successfully
    **/
    func removeAddress(
        id: Int,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "delete",
            url: "/service/application/pos/cart/v1.0/address/\(id)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Select Address from All Addresses
    * Description:  <p>Select Address from all addresses associated with the account in order to ship the cart items to .that address,otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, returns Cart object response.below are the address attributes which needs to be sent. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>
    **/
    func selectAddress( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/pos/cart/v1.0/select-address",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Cart Payment for valid coupon
    * Description:  Validate coupon for selected payment mode
    **/
    func getPaymentModes( 
        opts: [String: Any]?,
        (_ response: PaymentOptions?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/payment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PaymentOptions.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Cart Payment
    * Description:  Update Cart Payment for Your Account
    **/
    func selectPaymentMode( 
        opts: [String: Any]?,
        (_ response: PaymentOptions?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/pos/cart/v1.0/payment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(PaymentOptions.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get delivery date and options before checkout
    * Description:  Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created.
    **/
    func getShipments( 
        opts: [String: Any]?,
        (_ response: CartShipmentsResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/shipment",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartShipmentsResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Checkout Cart
    * Description:  Checkout all items in cart to payment and order generation.                        For COD only order will be generated while for other checkout mode                        user will be redirected to payment gateway
    **/
    func checkoutCart( 
        opts: [String: Any]?,
        (_ response: CartCheckoutResponse?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/pos/cart/v1.0/checkout",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(CartCheckoutResponse.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Update Cart Meta
    * Description:  Update cart meta like checkout_mode, gstin.
    **/
    func updateCartMeta( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "put",
            url: "/service/application/pos/cart/v1.0/meta",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Generate Cart sharing link token
    * Description:  Generates shared cart snapshot and returns shortlink token
    **/
    func getCartShareLink( 
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/pos/cart/v1.0/share-cart",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get shared cart snapshot and cart response
    * Description:  Returns shared cart response for sent token with `shared_cart_details`                    containing shared cart details in response.
    **/
    func getCartSharedItems(
        token: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "get",
            url: "/service/application/pos/cart/v1.0/share-cart/\(token)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Merge or Replace existing cart
    * Description:  Merge or Replace cart based on `action` parameter with shared cart of `token`
    **/
    func updateCartWithSharedItems(
        token: String, 
        action: String,  
        opts: [String: Any]?,
        (_ response: Any?, _ error: Error?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: self.config,
            method: "post",
            url: "/service/application/pos/cart/v1.0/share-cart/\(token)/\(action)",
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let data = responseData {
                    let response = try? Utility.decode(Any.self, from: data)
                    onResponse(response, error, responseCode)
                } else {
                    onResponse(nil, error, responseCode)
                }
        });
    }
    
}

