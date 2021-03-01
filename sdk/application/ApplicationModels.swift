public extension ApplicationClient {
    
    
    /*
        Model: Media
        Used By: Catalog
    */
    struct Media: Codable {
        
        var url: String?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try? container.decode(String.self, forKey: .url)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ProductListingActionPage
        Used By: Catalog
    */
    struct ProductListingActionPage: Codable {
        
        var query: [String: Any]?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ProductListingAction
        Used By: Catalog
    */
    struct ProductListingAction: Codable {
        
        var page: ProductListingActionPage?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            page = try? container.decode(ProductListingActionPage.self, forKey: .page)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ProductBrand
        Used By: Catalog
    */
    struct ProductBrand: Codable {
        
        var logo: Media?
        
        var name: String?
        
        var uid: Int?
        
        var action: ProductListingAction?
        

        enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case name = "name"
            
            case uid = "uid"
            
            case action = "action"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
        }
        
    }
    
    /*
        Model: ProductDetailAttribute
        Used By: Catalog
    */
    struct ProductDetailAttribute: Codable {
        
        var type: String?
        
        var key: String?
        
        var value: String?
        

        enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case key = "key"
            
            case value = "value"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            key = try? container.decode(String.self, forKey: .key)
            
            value = try? container.decode(String.self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: ProductDetailGroupedAttribute
        Used By: Catalog
    */
    struct ProductDetailGroupedAttribute: Codable {
        
        var details: [ProductDetailAttribute]?
        
        var title: String?
        

        enum CodingKeys: String, CodingKey {
            
            case details = "details"
            
            case title = "title"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            details = try? container.decode([ProductDetailAttribute].self, forKey: .details)
            
            title = try? container.decode(String.self, forKey: .title)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
        }
        
    }
    
    /*
        Model: ProductDetail
        Used By: Catalog
    */
    struct ProductDetail: Codable {
        
        var name: String?
        
        var promoMeta: [String: Any]?
        
        var categories: [ProductBrand]?
        
        var groupedAttributes: [ProductDetailGroupedAttribute]?
        
        var imageNature: String?
        
        var slug: String
        
        var color: String?
        
        var similars: [String]?
        
        var type: String?
        
        var shortDescription: String?
        
        var uid: Int?
        
        var description: String?
        
        var highlights: [String]?
        
        var itemType: String?
        
        var medias: [Media]?
        
        var brand: ProductBrand?
        
        var attributes: [String: Any]?
        
        var tryouts: [String]?
        
        var teaserTag: [String: Any]?
        
        var rating: Double?
        
        var productOnlineDate: String?
        
        var hasVariant: Bool?
        
        var ratingCount: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case promoMeta = "promo_meta"
            
            case categories = "categories"
            
            case groupedAttributes = "grouped_attributes"
            
            case imageNature = "image_nature"
            
            case slug = "slug"
            
            case color = "color"
            
            case similars = "similars"
            
            case type = "type"
            
            case shortDescription = "short_description"
            
            case uid = "uid"
            
            case description = "description"
            
            case highlights = "highlights"
            
            case itemType = "item_type"
            
            case medias = "medias"
            
            case brand = "brand"
            
            case attributes = "attributes"
            
            case tryouts = "tryouts"
            
            case teaserTag = "teaser_tag"
            
            case rating = "rating"
            
            case productOnlineDate = "product_online_date"
            
            case hasVariant = "has_variant"
            
            case ratingCount = "rating_count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
            categories = try? container.decode([ProductBrand].self, forKey: .categories)
            
            groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
            
            imageNature = try? container.decode(String.self, forKey: .imageNature)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            color = try? container.decode(String.self, forKey: .color)
            
            similars = try? container.decode([String].self, forKey: .similars)
            
            type = try? container.decode(String.self, forKey: .type)
            
            shortDescription = try? container.decode(String.self, forKey: .shortDescription)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            description = try? container.decode(String.self, forKey: .description)
            
            highlights = try? container.decode([String].self, forKey: .highlights)
            
            itemType = try? container.decode(String.self, forKey: .itemType)
            
            medias = try? container.decode([Media].self, forKey: .medias)
            
            brand = try? container.decode(ProductBrand.self, forKey: .brand)
            
            attributes = try? container.decode([String: Any].self, forKey: .attributes)
            
            tryouts = try? container.decode([String].self, forKey: .tryouts)
            
            teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
            
            rating = try? container.decode(Double.self, forKey: .rating)
            
            productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
            
            hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
            
            ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
            
            try? container.encodeIfPresent(imageNature, forKey: .imageNature)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
            
            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
            
        }
        
    }
    
    /*
        Model: ErrorResponse
        Used By: Catalog
    */
    struct ErrorResponse: Codable {
        
        var message: String?
        
        var success: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ProductSize
        Used By: Catalog
    */
    struct ProductSize: Codable {
        
        var display: String?
        
        var quantity: Int?
        
        var isAvailable: Bool?
        
        var value: String?
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case quantity = "quantity"
            
            case isAvailable = "is_available"
            
            case value = "value"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
            
            value = try? container.decode(String.self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: Price
        Used By: Catalog
    */
    struct Price: Codable {
        
        var currencyCode: String?
        
        var min: Double?
        
        var currencySymbol: String?
        
        var max: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case min = "min"
            
            case currencySymbol = "currency_symbol"
            
            case max = "max"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            min = try? container.decode(Double.self, forKey: .min)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
            max = try? container.decode(Double.self, forKey: .max)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            try? container.encodeIfPresent(max, forKey: .max)
            
        }
        
    }
    
    /*
        Model: ProductListingPrice
        Used By: Catalog
    */
    struct ProductListingPrice: Codable {
        
        var marked: Price?
        
        var effective: Price?
        

        enum CodingKeys: String, CodingKey {
            
            case marked = "marked"
            
            case effective = "effective"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            marked = try? container.decode(Price.self, forKey: .marked)
            
            effective = try? container.decode(Price.self, forKey: .effective)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
        }
        
    }
    
    /*
        Model: ProductSizeStores
        Used By: Catalog
    */
    struct ProductSizeStores: Codable {
        
        var count: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            count = try? container.decode(Int.self, forKey: .count)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
        }
        
    }
    
    /*
        Model: ProductSizes
        Used By: Catalog
    */
    struct ProductSizes: Codable {
        
        var sellable: Bool?
        
        var discount: String?
        
        var promoMeta: [String: Any]?
        
        var sizes: [ProductSize]?
        
        var price: ProductListingPrice?
        
        var sizeChart: [String: Any]?
        
        var stores: ProductSizeStores?
        

        enum CodingKeys: String, CodingKey {
            
            case sellable = "sellable"
            
            case discount = "discount"
            
            case promoMeta = "promo_meta"
            
            case sizes = "sizes"
            
            case price = "price"
            
            case sizeChart = "size_chart"
            
            case stores = "stores"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sellable = try? container.decode(Bool.self, forKey: .sellable)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
            sizes = try? container.decode([ProductSize].self, forKey: .sizes)
            
            price = try? container.decode(ProductListingPrice.self, forKey: .price)
            
            sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
            
            stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
        }
        
    }
    
    /*
        Model: ArticleAssignment
        Used By: Catalog
    */
    struct ArticleAssignment: Codable {
        
        var strategy: String?
        
        var level: String?
        

        enum CodingKeys: String, CodingKey {
            
            case strategy = "strategy"
            
            case level = "level"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            strategy = try? container.decode(String.self, forKey: .strategy)
            
            level = try? container.decode(String.self, forKey: .level)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(strategy, forKey: .strategy)
            
            try? container.encodeIfPresent(level, forKey: .level)
            
        }
        
    }
    
    /*
        Model: Store
        Used By: Catalog
    */
    struct Store: Codable {
        
        var count: Int?
        
        var name: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            count = try? container.decode(Int.self, forKey: .count)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ProductStockPrice
        Used By: Catalog
    */
    struct ProductStockPrice: Codable {
        
        var currency: String?
        
        var marked: Double?
        
        var effective: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case marked = "marked"
            
            case effective = "effective"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currency = try? container.decode(String.self, forKey: .currency)
            
            marked = try? container.decode(Double.self, forKey: .marked)
            
            effective = try? container.decode(Double.self, forKey: .effective)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
        }
        
    }
    
    /*
        Model: Seller
        Used By: Catalog
    */
    struct Seller: Codable {
        
        var count: Int?
        
        var name: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            count = try? container.decode(Int.self, forKey: .count)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ProductSizePriceResponse
        Used By: Catalog
    */
    struct ProductSizePriceResponse: Codable {
        
        var articleAssignment: ArticleAssignment?
        
        var set: [String: Any]?
        
        var specialBadge: String?
        
        var discount: String?
        
        var promoMeta: [String: Any]?
        
        var store: Store?
        
        var articleId: String?
        
        var price: ProductStockPrice?
        
        var strategyWiseListing: [[String: Any]]?
        
        var pincode: Int?
        
        var seller: Seller?
        
        var itemType: String?
        
        var quantity: Int?
        
        var sellerCount: Int?
        
        var pricePerPrice: ProductStockPrice?
        
        var longLat: [Double]?
        

        enum CodingKeys: String, CodingKey {
            
            case articleAssignment = "article_assignment"
            
            case set = "set"
            
            case specialBadge = "special_badge"
            
            case discount = "discount"
            
            case promoMeta = "promo_meta"
            
            case store = "store"
            
            case articleId = "article_id"
            
            case price = "price"
            
            case strategyWiseListing = "strategy_wise_listing"
            
            case pincode = "pincode"
            
            case seller = "seller"
            
            case itemType = "item_type"
            
            case quantity = "quantity"
            
            case sellerCount = "seller_count"
            
            case pricePerPrice = "price_per_price"
            
            case longLat = "long_lat"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
            
            set = try? container.decode([String: Any].self, forKey: .set)
            
            specialBadge = try? container.decode(String.self, forKey: .specialBadge)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
            store = try? container.decode(Store.self, forKey: .store)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            price = try? container.decode(ProductStockPrice.self, forKey: .price)
            
            strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            seller = try? container.decode(Seller.self, forKey: .seller)
            
            itemType = try? container.decode(String.self, forKey: .itemType)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
            
            pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
            
            longLat = try? container.decode([Double].self, forKey: .longLat)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
            
            try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
            
            try? container.encodeIfPresent(longLat, forKey: .longLat)
            
        }
        
    }
    
    /*
        Model: ProductPage
        Used By: Catalog
    */
    struct ProductPage: Codable {
        
        var nextId: String?
        
        var hasNext: Bool?
        
        var totalItem: Int?
        
        var current: Int?
        
        var hasPrevious: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case nextId = "next_id"
            
            case hasNext = "has_next"
            
            case totalItem = "total_item"
            
            case current = "current"
            
            case hasPrevious = "has_previous"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            nextId = try? container.decode(String.self, forKey: .nextId)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            totalItem = try? container.decode(Int.self, forKey: .totalItem)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(totalItem, forKey: .totalItem)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
        }
        
    }
    
    /*
        Model: ProductSizeSellerFilter
        Used By: Catalog
    */
    struct ProductSizeSellerFilter: Codable {
        
        var name: String?
        
        var value: String?
        
        var isSelected: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
            case isSelected = "is_selected"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            value = try? container.decode(String.self, forKey: .value)
            
            isSelected = try? container.decode(Bool.self, forKey: .isSelected)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
        }
        
    }
    
    /*
        Model: ProductSizeSellersResponse
        Used By: Catalog
    */
    struct ProductSizeSellersResponse: Codable {
        
        var items: [ProductSizePriceResponse]?
        
        var page: ProductPage?
        
        var sortOn: [ProductSizeSellerFilter]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case sortOn = "sort_on"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductSizePriceResponse].self, forKey: .items)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
            sortOn = try? container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
        }
        
    }
    
    /*
        Model: AttributeDetail
        Used By: Catalog
    */
    struct AttributeDetail: Codable {
        
        var display: String?
        
        var description: String?
        
        var key: String?
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case description = "description"
            
            case key = "key"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            description = try? container.decode(String.self, forKey: .description)
            
            key = try? container.decode(String.self, forKey: .key)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
        }
        
    }
    
    /*
        Model: ProductsComparisonResponse
        Used By: Catalog
    */
    struct ProductsComparisonResponse: Codable {
        
        var items: [ProductDetail]?
        
        var attributesMetadata: [AttributeDetail]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case attributesMetadata = "attributes_metadata"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductDetail].self, forKey: .items)
            
            attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
            
        }
        
    }
    
    /*
        Model: ProductCompareResponse
        Used By: Catalog
    */
    struct ProductCompareResponse: Codable {
        
        var title: String?
        
        var items: [ProductDetail]?
        
        var subtitle: String?
        
        var attributesMetadata: [AttributeDetail]?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case items = "items"
            
            case subtitle = "subtitle"
            
            case attributesMetadata = "attributes_metadata"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try? container.decode(String.self, forKey: .title)
            
            items = try? container.decode([ProductDetail].self, forKey: .items)
            
            subtitle = try? container.decode(String.self, forKey: .subtitle)
            
            attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
            
        }
        
    }
    
    /*
        Model: ProductFrequentlyComparedSimilarResponse
        Used By: Catalog
    */
    struct ProductFrequentlyComparedSimilarResponse: Codable {
        
        var similars: [ProductCompareResponse]?
        

        enum CodingKeys: String, CodingKey {
            
            case similars = "similars"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            similars = try? container.decode([ProductCompareResponse].self, forKey: .similars)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
        }
        
    }
    
    /*
        Model: ProductSimilarItem
        Used By: Catalog
    */
    struct ProductSimilarItem: Codable {
        
        var title: String?
        
        var items: [ProductDetail]?
        
        var subtitle: String?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case items = "items"
            
            case subtitle = "subtitle"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try? container.decode(String.self, forKey: .title)
            
            items = try? container.decode([ProductDetail].self, forKey: .items)
            
            subtitle = try? container.decode(String.self, forKey: .subtitle)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
        }
        
    }
    
    /*
        Model: SimilarProductByTypeResponse
        Used By: Catalog
    */
    struct SimilarProductByTypeResponse: Codable {
        
        var similars: [ProductSimilarItem]?
        

        enum CodingKeys: String, CodingKey {
            
            case similars = "similars"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            similars = try? container.decode([ProductSimilarItem].self, forKey: .similars)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
        }
        
    }
    
    /*
        Model: ProductVariantItemResponse
        Used By: Catalog
    */
    struct ProductVariantItemResponse: Codable {
        
        var name: String?
        
        var value: String?
        
        var slug: String?
        
        var color: String?
        
        var medias: [Media]?
        
        var action: ProductListingAction?
        
        var isAvailable: Bool?
        
        var colorName: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
            case slug = "slug"
            
            case color = "color"
            
            case medias = "medias"
            
            case action = "action"
            
            case isAvailable = "is_available"
            
            case colorName = "color_name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            value = try? container.decode(String.self, forKey: .value)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            color = try? container.decode(String.self, forKey: .color)
            
            medias = try? container.decode([Media].self, forKey: .medias)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
            
            colorName = try? container.decode(String.self, forKey: .colorName)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
            
            try? container.encodeIfPresent(colorName, forKey: .colorName)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ProductVariantResponse
        Used By: Catalog
    */
    struct ProductVariantResponse: Codable {
        
        var items: [ProductVariantItemResponse]?
        
        var displayType: String?
        
        var header: String?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case displayType = "display_type"
            
            case header = "header"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductVariantItemResponse].self, forKey: .items)
            
            displayType = try? container.decode(String.self, forKey: .displayType)
            
            header = try? container.decode(String.self, forKey: .header)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            try? container.encodeIfPresent(header, forKey: .header)
            
        }
        
    }
    
    /*
        Model: ProductVariantsResponse
        Used By: Catalog
    */
    struct ProductVariantsResponse: Codable {
        
        var variants: [ProductVariantResponse]?
        

        enum CodingKeys: String, CodingKey {
            
            case variants = "variants"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            variants = try? container.decode([ProductVariantResponse].self, forKey: .variants)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
        }
        
    }
    
    /*
        Model: CompanyDetail
        Used By: Catalog
    */
    struct CompanyDetail: Codable {
        
        var name: String?
        
        var id: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case id = "id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            id = try? container.decode(Int.self, forKey: .id)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
        }
        
    }
    
    /*
        Model: StoreDetail
        Used By: Catalog
    */
    struct StoreDetail: Codable {
        
        var area: String?
        
        var country: String?
        
        var uid: Int?
        
        var addressType: String?
        
        var city: String?
        
        var phone: String?
        
        var address: String?
        
        var name: String?
        
        var email: String?
        
        var areaCodeSlug: String?
        
        var state: String?
        
        var storeCode: String?
        

        enum CodingKeys: String, CodingKey {
            
            case area = "area"
            
            case country = "country"
            
            case uid = "uid"
            
            case addressType = "address_type"
            
            case city = "city"
            
            case phone = "phone"
            
            case address = "address"
            
            case name = "name"
            
            case email = "email"
            
            case areaCodeSlug = "area_code_slug"
            
            case state = "state"
            
            case storeCode = "store_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            area = try? container.decode(String.self, forKey: .area)
            
            country = try? container.decode(String.self, forKey: .country)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            city = try? container.decode(String.self, forKey: .city)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
            address = try? container.decode(String.self, forKey: .address)
            
            name = try? container.decode(String.self, forKey: .name)
            
            email = try? container.decode(String.self, forKey: .email)
            
            areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
            
            state = try? container.decode(String.self, forKey: .state)
            
            storeCode = try? container.decode(String.self, forKey: .storeCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
        }
        
    }
    
    /*
        Model: ProductStockStatusItem
        Used By: Catalog
    */
    struct ProductStockStatusItem: Codable {
        
        var identifier: [String: Any]?
        
        var company: CompanyDetail?
        
        var store: StoreDetail?
        
        var price: ProductStockPrice?
        
        var seller: Seller?
        
        var size: String?
        
        var itemId: Int?
        
        var quantity: Int?
        
        var uid: String?
        

        enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case company = "company"
            
            case store = "store"
            
            case price = "price"
            
            case seller = "seller"
            
            case size = "size"
            
            case itemId = "item_id"
            
            case quantity = "quantity"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            identifier = try? container.decode([String: Any].self, forKey: .identifier)
            
            company = try? container.decode(CompanyDetail.self, forKey: .company)
            
            store = try? container.decode(StoreDetail.self, forKey: .store)
            
            price = try? container.decode(ProductStockPrice.self, forKey: .price)
            
            seller = try? container.decode(Seller.self, forKey: .seller)
            
            size = try? container.decode(String.self, forKey: .size)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ProductStockStatusResponse
        Used By: Catalog
    */
    struct ProductStockStatusResponse: Codable {
        
        var items: [ProductStockStatusItem]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductStockStatusItem].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: ProductStockPolling
        Used By: Catalog
    */
    struct ProductStockPolling: Codable {
        
        var items: [ProductStockStatusItem]?
        
        var page: ProductPage?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductStockStatusItem].self, forKey: .items)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ProductListingDetail
        Used By: Catalog
    */
    struct ProductListingDetail: Codable {
        
        var name: String?
        
        var promoMeta: [String: Any]?
        
        var categories: [ProductBrand]?
        
        var groupedAttributes: [ProductDetailGroupedAttribute]?
        
        var imageNature: String?
        
        var price: ProductListingPrice?
        
        var slug: String
        
        var color: String?
        
        var similars: [String]?
        
        var type: String?
        
        var discount: String?
        
        var shortDescription: String?
        
        var uid: Int?
        
        var description: String?
        
        var highlights: [String]?
        
        var sellable: Bool?
        
        var itemType: String?
        
        var medias: [Media]?
        
        var brand: ProductBrand?
        
        var attributes: [String: Any]?
        
        var tryouts: [String]?
        
        var teaserTag: [String: Any]?
        
        var rating: Double?
        
        var productOnlineDate: String?
        
        var hasVariant: Bool?
        
        var ratingCount: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case promoMeta = "promo_meta"
            
            case categories = "categories"
            
            case groupedAttributes = "grouped_attributes"
            
            case imageNature = "image_nature"
            
            case price = "price"
            
            case slug = "slug"
            
            case color = "color"
            
            case similars = "similars"
            
            case type = "type"
            
            case discount = "discount"
            
            case shortDescription = "short_description"
            
            case uid = "uid"
            
            case description = "description"
            
            case highlights = "highlights"
            
            case sellable = "sellable"
            
            case itemType = "item_type"
            
            case medias = "medias"
            
            case brand = "brand"
            
            case attributes = "attributes"
            
            case tryouts = "tryouts"
            
            case teaserTag = "teaser_tag"
            
            case rating = "rating"
            
            case productOnlineDate = "product_online_date"
            
            case hasVariant = "has_variant"
            
            case ratingCount = "rating_count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
            categories = try? container.decode([ProductBrand].self, forKey: .categories)
            
            groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
            
            imageNature = try? container.decode(String.self, forKey: .imageNature)
            
            price = try? container.decode(ProductListingPrice.self, forKey: .price)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            color = try? container.decode(String.self, forKey: .color)
            
            similars = try? container.decode([String].self, forKey: .similars)
            
            type = try? container.decode(String.self, forKey: .type)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            shortDescription = try? container.decode(String.self, forKey: .shortDescription)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            description = try? container.decode(String.self, forKey: .description)
            
            highlights = try? container.decode([String].self, forKey: .highlights)
            
            sellable = try? container.decode(Bool.self, forKey: .sellable)
            
            itemType = try? container.decode(String.self, forKey: .itemType)
            
            medias = try? container.decode([Media].self, forKey: .medias)
            
            brand = try? container.decode(ProductBrand.self, forKey: .brand)
            
            attributes = try? container.decode([String: Any].self, forKey: .attributes)
            
            tryouts = try? container.decode([String].self, forKey: .tryouts)
            
            teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
            
            rating = try? container.decode(Double.self, forKey: .rating)
            
            productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
            
            hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
            
            ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
            
            try? container.encodeIfPresent(imageNature, forKey: .imageNature)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
            
            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
            
        }
        
    }
    
    /*
        Model: ProductFiltersValue
        Used By: Catalog
    */
    struct ProductFiltersValue: Codable {
        
        var queryFormat: String?
        
        var displayFormat: String?
        
        var min: Int?
        
        var max: Int?
        
        var isSelected: Bool
        
        var selectedMin: Int?
        
        var currencyCode: String?
        
        var currencySymbol: String?
        
        var value: String
        
        var display: String
        
        var selectedMax: Int?
        
        var count: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case queryFormat = "query_format"
            
            case displayFormat = "display_format"
            
            case min = "min"
            
            case max = "max"
            
            case isSelected = "is_selected"
            
            case selectedMin = "selected_min"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case value = "value"
            
            case display = "display"
            
            case selectedMax = "selected_max"
            
            case count = "count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            queryFormat = try? container.decode(String.self, forKey: .queryFormat)
            
            displayFormat = try? container.decode(String.self, forKey: .displayFormat)
            
            min = try? container.decode(Int.self, forKey: .min)
            
            max = try? container.decode(Int.self, forKey: .max)
            
            isSelected = try container.decode(Bool.self, forKey: .isSelected)
            
            selectedMin = try? container.decode(Int.self, forKey: .selectedMin)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
            value = try container.decode(String.self, forKey: .value)
            
            display = try container.decode(String.self, forKey: .display)
            
            selectedMax = try? container.decode(Int.self, forKey: .selectedMax)
            
            count = try? container.decode(Int.self, forKey: .count)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
            
            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
        }
        
    }
    
    /*
        Model: ProductFiltersKey
        Used By: Catalog
    */
    struct ProductFiltersKey: Codable {
        
        var display: String
        
        var logo: String?
        
        var name: String
        
        var kind: String?
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case logo = "logo"
            
            case name = "name"
            
            case kind = "kind"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try container.decode(String.self, forKey: .display)
            
            logo = try? container.decode(String.self, forKey: .logo)
            
            name = try container.decode(String.self, forKey: .name)
            
            kind = try? container.decode(String.self, forKey: .kind)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
        }
        
    }
    
    /*
        Model: ProductFilters
        Used By: Catalog
    */
    struct ProductFilters: Codable {
        
        var values: [ProductFiltersValue]
        
        var key: ProductFiltersKey
        

        enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
            case key = "key"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            values = try container.decode([ProductFiltersValue].self, forKey: .values)
            
            key = try container.decode(ProductFiltersKey.self, forKey: .key)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
        }
        
    }
    
    /*
        Model: ProductSortOn
        Used By: Catalog
    */
    struct ProductSortOn: Codable {
        
        var isSelected: Bool?
        
        var name: String?
        
        var value: String?
        

        enum CodingKeys: String, CodingKey {
            
            case isSelected = "is_selected"
            
            case name = "name"
            
            case value = "value"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSelected = try? container.decode(Bool.self, forKey: .isSelected)
            
            name = try? container.decode(String.self, forKey: .name)
            
            value = try? container.decode(String.self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: ProductListingResponse
        Used By: Catalog
    */
    struct ProductListingResponse: Codable {
        
        var items: [ProductListingDetail]?
        
        var page: ProductPage?
        
        var filter: [ProductFilters]?
        
        var sortOn: [ProductSortOn]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case filter = "filter"
            
            case sortOn = "sort_on"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductListingDetail].self, forKey: .items)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
            filter = try? container.decode([ProductFilters].self, forKey: .filter)
            
            sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
        }
        
    }
    
    /*
        Model: ImageUrls
        Used By: Catalog
    */
    struct ImageUrls: Codable {
        
        var portrait: Media?
        
        var landscape: Media?
        

        enum CodingKeys: String, CodingKey {
            
            case portrait = "portrait"
            
            case landscape = "landscape"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            portrait = try? container.decode(Media.self, forKey: .portrait)
            
            landscape = try? container.decode(Media.self, forKey: .landscape)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
        }
        
    }
    
    /*
        Model: BrandItem
        Used By: Catalog
    */
    struct BrandItem: Codable {
        
        var name: String?
        
        var discount: String?
        
        var slug: String?
        
        var logo: Media?
        
        var action: ProductListingAction?
        
        var banners: ImageUrls?
        
        var departments: [String]?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case discount = "discount"
            
            case slug = "slug"
            
            case logo = "logo"
            
            case action = "action"
            
            case banners = "banners"
            
            case departments = "departments"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            departments = try? container.decode([String].self, forKey: .departments)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: BrandListingResponse
        Used By: Catalog
    */
    struct BrandListingResponse: Codable {
        
        var items: [BrandItem]?
        
        var page: ProductPage?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([BrandItem].self, forKey: .items)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: BrandDetailResponse
        Used By: Catalog
    */
    struct BrandDetailResponse: Codable {
        
        var name: String?
        
        var logo: Media?
        
        var uid: Int?
        
        var banners: ImageUrls?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logo = "logo"
            
            case uid = "uid"
            
            case banners = "banners"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
        }
        
    }
    
    /*
        Model: DepartmentIdentifier
        Used By: Catalog
    */
    struct DepartmentIdentifier: Codable {
        
        var slug: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: CategoryItems
        Used By: Catalog
    */
    struct CategoryItems: Codable {
        
        var childs: [[String: Any]]?
        
        var name: String?
        
        var slug: String?
        
        var action: ProductListingAction?
        
        var banners: ImageUrls?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case childs = "childs"
            
            case name = "name"
            
            case slug = "slug"
            
            case action = "action"
            
            case banners = "banners"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            childs = try? container.decode([[String: Any]].self, forKey: .childs)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(childs, forKey: .childs)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: DepartmentCategoryTree
        Used By: Catalog
    */
    struct DepartmentCategoryTree: Codable {
        
        var items: [CategoryItems]?
        
        var department: String?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case department = "department"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([CategoryItems].self, forKey: .items)
            
            department = try? container.decode(String.self, forKey: .department)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(department, forKey: .department)
            
        }
        
    }
    
    /*
        Model: CategoryListingResponse
        Used By: Catalog
    */
    struct CategoryListingResponse: Codable {
        
        var departments: [DepartmentIdentifier]?
        
        var data: [DepartmentCategoryTree]?
        

        enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            departments = try? container.decode([DepartmentIdentifier].self, forKey: .departments)
            
            data = try? container.decode([DepartmentCategoryTree].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CategoryMetaResponse
        Used By: Catalog
    */
    struct CategoryMetaResponse: Codable {
        
        var name: String?
        
        var logo: Media?
        
        var uid: Int?
        
        var banners: ImageUrls?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logo = "logo"
            
            case uid = "uid"
            
            case banners = "banners"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
        }
        
    }
    
    /*
        Model: Page
        Used By: Catalog
    */
    struct Page: Codable {
        
        var pageSize: Int
        
        var pageNo: Int
        

        enum CodingKeys: String, CodingKey {
            
            case pageSize = "page_size"
            
            case pageNo = "page_no"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pageSize = try container.decode(Int.self, forKey: .pageSize)
            
            pageNo = try container.decode(Int.self, forKey: .pageNo)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
        }
        
    }
    
    /*
        Model: HomeListingResponse
        Used By: Catalog
    */
    struct HomeListingResponse: Codable {
        
        var items: [ProductListingDetail]?
        
        var page: Page?
        
        var message: String?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductListingDetail].self, forKey: .items)
            
            page = try? container.decode(Page.self, forKey: .page)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: Department
        Used By: Catalog
    */
    struct Department: Codable {
        
        var name: String?
        
        var slug: String?
        
        var logo: Media?
        
        var priorityOrder: Int?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case logo = "logo"
            
            case priorityOrder = "priority_order"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: DepartmentResponse
        Used By: Catalog
    */
    struct DepartmentResponse: Codable {
        
        var items: [Department]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([Department].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: AutocompleteItem
        Used By: Catalog
    */
    struct AutocompleteItem: Codable {
        
        var display: String?
        
        var logo: Media?
        
        var type: String?
        
        var action: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case logo = "logo"
            
            case type = "type"
            
            case action = "action"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            type = try? container.decode(String.self, forKey: .type)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
        }
        
    }
    
    /*
        Model: AutoCompleteResponse
        Used By: Catalog
    */
    struct AutoCompleteResponse: Codable {
        
        var items: [AutocompleteItem]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([AutocompleteItem].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: CollectionBadge
        Used By: Catalog
    */
    struct CollectionBadge: Codable {
        
        var text: String?
        
        var color: String?
        

        enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case color = "color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            text = try? container.decode(String.self, forKey: .text)
            
            color = try? container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: CollectionImage
        Used By: Catalog
    */
    struct CollectionImage: Codable {
        
        var aspectRatio: String
        
        var url: String
        

        enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
            
            url = try container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: CollectionBanner
        Used By: Catalog
    */
    struct CollectionBanner: Codable {
        
        var portrait: CollectionImage
        
        var landscape: CollectionImage
        

        enum CodingKeys: String, CodingKey {
            
            case portrait = "portrait"
            
            case landscape = "landscape"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            portrait = try container.decode(CollectionImage.self, forKey: .portrait)
            
            landscape = try container.decode(CollectionImage.self, forKey: .landscape)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
        }
        
    }
    
    /*
        Model: UserInfo
        Used By: Catalog
    */
    struct UserInfo: Codable {
        
        var userId: String?
        
        var uid: String?
        
        var email: String?
        
        var username: String?
        

        enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case uid = "uid"
            
            case email = "email"
            
            case username = "username"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            email = try? container.decode(String.self, forKey: .email)
            
            username = try? container.decode(String.self, forKey: .username)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
        }
        
    }
    
    /*
        Model: Schedule
        Used By: Catalog
    */
    struct Schedule: Codable {
        
        var duration: Int?
        
        var cron: String?
        
        var start: String?
        
        var end: String?
        

        enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case cron = "cron"
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            duration = try? container.decode(Int.self, forKey: .duration)
            
            cron = try? container.decode(String.self, forKey: .cron)
            
            start = try? container.decode(String.self, forKey: .start)
            
            end = try? container.decode(String.self, forKey: .end)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            try? container.encodeIfPresent(end, forKey: .end)
            
        }
        
    }
    
    /*
        Model: SeoDetail
        Used By: Catalog
    */
    struct SeoDetail: Codable {
        
        var title: String?
        
        var description: String?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try? container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
        }
        
    }
    
    /*
        Model: CreateCollection
        Used By: Catalog
    */
    struct CreateCollection: Codable {
        
        var name: String
        
        var visibleFacetsKeys: [String]?
        
        var allowFacets: Bool?
        
        var badge: CollectionBadge?
        
        var slug: String
        
        var banners: CollectionBanner
        
        var appId: String
        
        var allowSort: Bool?
        
        var createdBy: UserInfo?
        
        var type: String
        
        var meta: [String: Any]?
        
        var logo: CollectionImage
        
        var isActive: Bool?
        
        var description: String?
        
        var customJson: [String: Any]?
        
        var query: [String: Any]?
        
        var published: Bool?
        
        var modifiedBy: UserInfo?
        
        var schedule: Schedule?
        
        var tags: [String]?
        
        var sortOn: String?
        
        var localeLanguage: [String: Any]?
        
        var seo: SeoDetail?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case allowFacets = "allow_facets"
            
            case badge = "badge"
            
            case slug = "slug"
            
            case banners = "banners"
            
            case appId = "app_id"
            
            case allowSort = "allow_sort"
            
            case createdBy = "created_by"
            
            case type = "type"
            
            case meta = "meta"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case description = "description"
            
            case customJson = "_custom_json"
            
            case query = "query"
            
            case published = "published"
            
            case modifiedBy = "modified_by"
            
            case schedule = "_schedule"
            
            case tags = "tags"
            
            case sortOn = "sort_on"
            
            case localeLanguage = "_locale_language"
            
            case seo = "seo"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try container.decode(String.self, forKey: .name)
            
            visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
            
            allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
            
            badge = try? container.decode(CollectionBadge.self, forKey: .badge)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            banners = try container.decode(CollectionBanner.self, forKey: .banners)
            
            appId = try container.decode(String.self, forKey: .appId)
            
            allowSort = try? container.decode(Bool.self, forKey: .allowSort)
            
            createdBy = try? container.decode(UserInfo.self, forKey: .createdBy)
            
            type = try container.decode(String.self, forKey: .type)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            logo = try container.decode(CollectionImage.self, forKey: .logo)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            description = try? container.decode(String.self, forKey: .description)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            modifiedBy = try? container.decode(UserInfo.self, forKey: .modifiedBy)
            
            schedule = try? container.decode(Schedule.self, forKey: .schedule)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            sortOn = try? container.decode(String.self, forKey: .sortOn)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
            seo = try? container.decode(SeoDetail.self, forKey: .seo)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
        }
        
    }
    
    /*
        Model: CollectionDetailResponse
        Used By: Catalog
    */
    struct CollectionDetailResponse: Codable {
        
        var appId: String?
        
        var description: String?
        
        var schedule: [String: Any]?
        
        var name: String?
        
        var type: String?
        
        var visibleFacetsKeys: [String]?
        
        var seo: SeoDetail?
        
        var query: [String: Any]?
        
        var allowFacets: Bool?
        
        var tag: [String]?
        
        var meta: [String: Any]?
        
        var badge: [String: Any]?
        
        var slug: String?
        
        var logo: Media?
        
        var isActive: Bool?
        
        var banners: ImageUrls?
        
        var cron: [String: Any]?
        
        var allowSort: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case description = "description"
            
            case schedule = "_schedule"
            
            case name = "name"
            
            case type = "type"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case seo = "seo"
            
            case query = "query"
            
            case allowFacets = "allow_facets"
            
            case tag = "tag"
            
            case meta = "meta"
            
            case badge = "badge"
            
            case slug = "slug"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case banners = "banners"
            
            case cron = "cron"
            
            case allowSort = "allow_sort"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            description = try? container.decode(String.self, forKey: .description)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
            name = try? container.decode(String.self, forKey: .name)
            
            type = try? container.decode(String.self, forKey: .type)
            
            visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
            
            seo = try? container.decode(SeoDetail.self, forKey: .seo)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
            
            tag = try? container.decode([String].self, forKey: .tag)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            badge = try? container.decode([String: Any].self, forKey: .badge)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            cron = try? container.decode([String: Any].self, forKey: .cron)
            
            allowSort = try? container.decode(Bool.self, forKey: .allowSort)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
        }
        
    }
    
    /*
        Model: GetCollectionDetailNest
        Used By: Catalog
    */
    struct GetCollectionDetailNest: Codable {
        
        var name: String?
        
        var visibleFacetsKeys: [String]?
        
        var allowFacets: Bool?
        
        var badge: [String: Any]?
        
        var slug: String?
        
        var action: ProductListingAction?
        
        var appId: String?
        
        var banners: ImageUrls?
        
        var cron: [String: Any]?
        
        var allowSort: Bool?
        
        var type: String?
        
        var meta: [String: Any]?
        
        var logo: Media?
        
        var isActive: Bool?
        
        var uid: String?
        
        var description: String?
        
        var query: [String: Any]?
        
        var tag: [String]?
        
        var schedule: [String: Any]?
        
        var seo: SeoDetail?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case allowFacets = "allow_facets"
            
            case badge = "badge"
            
            case slug = "slug"
            
            case action = "action"
            
            case appId = "app_id"
            
            case banners = "banners"
            
            case cron = "cron"
            
            case allowSort = "allow_sort"
            
            case type = "type"
            
            case meta = "meta"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
            case description = "description"
            
            case query = "query"
            
            case tag = "tag"
            
            case schedule = "_schedule"
            
            case seo = "seo"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
            
            allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
            
            badge = try? container.decode([String: Any].self, forKey: .badge)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            cron = try? container.decode([String: Any].self, forKey: .cron)
            
            allowSort = try? container.decode(Bool.self, forKey: .allowSort)
            
            type = try? container.decode(String.self, forKey: .type)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            description = try? container.decode(String.self, forKey: .description)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            tag = try? container.decode([String].self, forKey: .tag)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
            seo = try? container.decode(SeoDetail.self, forKey: .seo)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
        }
        
    }
    
    /*
        Model: CollectionListingFilterTag
        Used By: Catalog
    */
    struct CollectionListingFilterTag: Codable {
        
        var display: String?
        
        var name: String?
        
        var isSelected: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case name = "name"
            
            case isSelected = "is_selected"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            name = try? container.decode(String.self, forKey: .name)
            
            isSelected = try? container.decode(Bool.self, forKey: .isSelected)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
        }
        
    }
    
    /*
        Model: CollectionListingFilterType
        Used By: Catalog
    */
    struct CollectionListingFilterType: Codable {
        
        var display: String?
        
        var name: String?
        
        var isSelected: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case name = "name"
            
            case isSelected = "is_selected"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            name = try? container.decode(String.self, forKey: .name)
            
            isSelected = try? container.decode(Bool.self, forKey: .isSelected)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
        }
        
    }
    
    /*
        Model: CollectionListingFilter
        Used By: Catalog
    */
    struct CollectionListingFilter: Codable {
        
        var tags: [CollectionListingFilterTag]?
        
        var type: [CollectionListingFilterType]?
        

        enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([CollectionListingFilterTag].self, forKey: .tags)
            
            type = try? container.decode([CollectionListingFilterType].self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: GetCollectionListingResponse
        Used By: Catalog
    */
    struct GetCollectionListingResponse: Codable {
        
        var items: [GetCollectionDetailNest]?
        
        var page: ProductPage?
        
        var filters: CollectionListingFilter?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case filters = "filters"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([GetCollectionDetailNest].self, forKey: .items)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
            filters = try? container.decode(CollectionListingFilter.self, forKey: .filters)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
        }
        
    }
    
    /*
        Model: CollectionItem
        Used By: Catalog
    */
    struct CollectionItem: Codable {
        
        var action: String
        
        var itemId: Int
        

        enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case itemId = "item_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try container.decode(String.self, forKey: .action)
            
            itemId = try container.decode(Int.self, forKey: .itemId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
        }
        
    }
    
    /*
        Model: CollectionItemsRequest
        Used By: Catalog
    */
    struct CollectionItemsRequest: Codable {
        
        var type: String?
        
        var pageSize: Int
        
        var pageNo: Int
        
        var query: [String: Any]?
        
        var items: [CollectionItem]?
        

        enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case pageSize = "page_size"
            
            case pageNo = "page_no"
            
            case query = "query"
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            pageSize = try container.decode(Int.self, forKey: .pageSize)
            
            pageNo = try container.decode(Int.self, forKey: .pageNo)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            items = try? container.decode([CollectionItem].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: CollectionItemsResponse
        Used By: Catalog
    */
    struct CollectionItemsResponse: Codable {
        
        var detail: String?
        

        enum CodingKeys: String, CodingKey {
            
            case detail = "detail"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            detail = try? container.decode(String.self, forKey: .detail)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(detail, forKey: .detail)
            
        }
        
    }
    
    /*
        Model: CollectionsUpdateDetailResponse
        Used By: Catalog
    */
    struct CollectionsUpdateDetailResponse: Codable {
        
        var data: [CollectionDetailResponse]?
        

        enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([CollectionDetailResponse].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CollectionDetailViewDeleteResponse
        Used By: Catalog
    */
    struct CollectionDetailViewDeleteResponse: Codable {
        
        var detail: String?
        

        enum CodingKeys: String, CodingKey {
            
            case detail = "detail"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            detail = try? container.decode(String.self, forKey: .detail)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(detail, forKey: .detail)
            
        }
        
    }
    
    /*
        Model: GetFollowListingResponse
        Used By: Catalog
    */
    struct GetFollowListingResponse: Codable {
        
        var items: [[String: Any]]
        
        var page: ProductPage
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try container.decode([[String: Any]].self, forKey: .items)
            
            page = try container.decode(ProductPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: FollowPostResponse
        Used By: Catalog
    */
    struct FollowPostResponse: Codable {
        
        var id: String
        
        var message: String
        

        enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try container.decode(String.self, forKey: .id)
            
            message = try container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: FollowerCountResponse
        Used By: Catalog
    */
    struct FollowerCountResponse: Codable {
        
        var count: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            count = try? container.decode(Int.self, forKey: .count)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
        }
        
    }
    
    /*
        Model: FollowIdsData
        Used By: Catalog
    */
    struct FollowIdsData: Codable {
        
        var collections: [Int]?
        
        var products: [Int]?
        
        var brands: [Int]?
        

        enum CodingKeys: String, CodingKey {
            
            case collections = "collections"
            
            case products = "products"
            
            case brands = "brands"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            collections = try? container.decode([Int].self, forKey: .collections)
            
            products = try? container.decode([Int].self, forKey: .products)
            
            brands = try? container.decode([Int].self, forKey: .brands)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(collections, forKey: .collections)
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
        }
        
    }
    
    /*
        Model: FollowIdsResponse
        Used By: Catalog
    */
    struct FollowIdsResponse: Codable {
        
        var data: FollowIdsData?
        

        enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode(FollowIdsData.self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: LatLong
        Used By: Catalog
    */
    struct LatLong: Codable {
        
        var type: String?
        
        var coordinates: [Double]?
        

        enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case coordinates = "coordinates"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            coordinates = try? container.decode([Double].self, forKey: .coordinates)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
            
        }
        
    }
    
    /*
        Model: Store1
        Used By: Catalog
    */
    struct Store1: Codable {
        
        var name: String?
        
        var storeEmail: String?
        
        var city: String?
        
        var latLong: LatLong?
        
        var pincode: Int?
        
        var storeCode: String?
        
        var address: String?
        
        var state: String?
        
        var uid: Int?
        
        var country: String?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case storeEmail = "store_email"
            
            case city = "city"
            
            case latLong = "lat_long"
            
            case pincode = "pincode"
            
            case storeCode = "store_code"
            
            case address = "address"
            
            case state = "state"
            
            case uid = "uid"
            
            case country = "country"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            storeEmail = try? container.decode(String.self, forKey: .storeEmail)
            
            city = try? container.decode(String.self, forKey: .city)
            
            latLong = try? container.decode(LatLong.self, forKey: .latLong)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            storeCode = try? container.decode(String.self, forKey: .storeCode)
            
            address = try? container.decode(String.self, forKey: .address)
            
            state = try? container.decode(String.self, forKey: .state)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            country = try? container.decode(String.self, forKey: .country)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: StoreListingResponse
        Used By: Catalog
    */
    struct StoreListingResponse: Codable {
        
        var items: [Store1]?
        
        var page: ProductPage?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([Store1].self, forKey: .items)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: CartCurrency
        Used By: Catalog
    */
    struct CartCurrency: Codable {
        
        var code: String?
        
        var symbol: String?
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case symbol = "symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            symbol = try? container.decode(String.self, forKey: .symbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
        }
        
    }
    
    /*
        Model: CategoryInfo
        Used By: Catalog
    */
    struct CategoryInfo: Codable {
        
        var name: Int?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(Int.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: BaseInfo
        Used By: Catalog
    */
    struct BaseInfo: Codable {
        
        var name: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ActionQuery
        Used By: Catalog
    */
    struct ActionQuery: Codable {
        
        var productSlug: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case productSlug = "product_slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            productSlug = try? container.decode([String].self, forKey: .productSlug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(productSlug, forKey: .productSlug)
            
        }
        
    }
    
    /*
        Model: Action
        Used By: Catalog
    */
    struct Action: Codable {
        
        var query: ActionQuery?
        
        var url: String?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case url = "url"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            query = try? container.decode(ActionQuery.self, forKey: .query)
            
            url = try? container.decode(String.self, forKey: .url)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Image
        Used By: Catalog
    */
    struct Image: Codable {
        
        var secureUrl: String?
        
        var aspectRatio: String?
        
        var url: String?
        

        enum CodingKeys: String, CodingKey {
            
            case secureUrl = "secure_url"
            
            case aspectRatio = "aspect_ratio"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            secureUrl = try? container.decode(String.self, forKey: .secureUrl)
            
            aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
            
            url = try? container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: Product
        Used By: Catalog
    */
    struct Product: Codable {
        
        var slug: String?
        
        var action: Action?
        
        var categories: [CategoryInfo]?
        
        var images: [Image]?
        
        var type: String?
        
        var name: String?
        
        var uid: Int?
        
        var brand: BaseInfo?
        

        enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case action = "action"
            
            case categories = "categories"
            
            case images = "images"
            
            case type = "type"
            
            case name = "name"
            
            case uid = "uid"
            
            case brand = "brand"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            action = try? container.decode(Action.self, forKey: .action)
            
            categories = try? container.decode([CategoryInfo].self, forKey: .categories)
            
            images = try? container.decode([Image].self, forKey: .images)
            
            type = try? container.decode(String.self, forKey: .type)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            brand = try? container.decode(BaseInfo.self, forKey: .brand)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
        }
        
    }
    
    /*
        Model: ProductAvailability
        Used By: Catalog
    */
    struct ProductAvailability: Codable {
        
        var sizes: [String]?
        
        var isValid: Bool?
        
        var outOfStock: Bool?
        
        var deliverable: Bool?
        
        var otherStoreQuantity: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case isValid = "is_valid"
            
            case outOfStock = "out_of_stock"
            
            case deliverable = "deliverable"
            
            case otherStoreQuantity = "other_store_quantity"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sizes = try? container.decode([String].self, forKey: .sizes)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
            
            deliverable = try? container.decode(Bool.self, forKey: .deliverable)
            
            otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            try? container.encodeIfPresent(deliverable, forKey: .deliverable)
            
            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
            
        }
        
    }
    
    /*
        Model: ProductPrice
        Used By: Catalog
    */
    struct ProductPrice: Codable {
        
        var currencySymbol: String?
        
        var effective: Double?
        
        var marked: Double?
        
        var selling: Double?
        
        var currencyCode: String?
        
        var addOn: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case currencySymbol = "currency_symbol"
            
            case effective = "effective"
            
            case marked = "marked"
            
            case selling = "selling"
            
            case currencyCode = "currency_code"
            
            case addOn = "add_on"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
            effective = try? container.decode(Double.self, forKey: .effective)
            
            marked = try? container.decode(Double.self, forKey: .marked)
            
            selling = try? container.decode(Double.self, forKey: .selling)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            addOn = try? container.decode(Double.self, forKey: .addOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(addOn, forKey: .addOn)
            
        }
        
    }
    
    /*
        Model: ProductPriceInfo
        Used By: Catalog
    */
    struct ProductPriceInfo: Codable {
        
        var converted: ProductPrice?
        
        var base: ProductPrice?
        

        enum CodingKeys: String, CodingKey {
            
            case converted = "converted"
            
            case base = "base"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            converted = try? container.decode(ProductPrice.self, forKey: .converted)
            
            base = try? container.decode(ProductPrice.self, forKey: .base)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            try? container.encodeIfPresent(base, forKey: .base)
            
        }
        
    }
    
    /*
        Model: CartProductInfo
        Used By: Catalog
    */
    struct CartProductInfo: Codable {
        
        var message: String?
        
        var quantity: Int?
        
        var bulkOffer: String?
        
        var availability: ProductAvailability?
        
        var product: Product?
        
        var article: String?
        
        var key: String?
        
        var couponMessage: String?
        
        var price: ProductPriceInfo?
        
        var discount: String?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case quantity = "quantity"
            
            case bulkOffer = "bulk_offer"
            
            case availability = "availability"
            
            case product = "product"
            
            case article = "article"
            
            case key = "key"
            
            case couponMessage = "coupon_message"
            
            case price = "price"
            
            case discount = "discount"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
            
            availability = try? container.decode(ProductAvailability.self, forKey: .availability)
            
            product = try? container.decode(Product.self, forKey: .product)
            
            article = try? container.decode(String.self, forKey: .article)
            
            key = try? container.decode(String.self, forKey: .key)
            
            couponMessage = try? container.decode(String.self, forKey: .couponMessage)
            
            price = try? container.decode(ProductPriceInfo.self, forKey: .price)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
        }
        
    }
    
    /*
        Model: DisplayBreakup
        Used By: Catalog
    */
    struct DisplayBreakup: Codable {
        
        var value: Int?
        
        var currencySymbol: String?
        
        var key: String?
        
        var currencyCode: String?
        
        var display: String?
        

        enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case currencySymbol = "currency_symbol"
            
            case key = "key"
            
            case currencyCode = "currency_code"
            
            case display = "display"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try? container.decode(Int.self, forKey: .value)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
            key = try? container.decode(String.self, forKey: .key)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            display = try? container.decode(String.self, forKey: .display)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
        }
        
    }
    
    /*
        Model: CouponBreakup
        Used By: Catalog
    */
    struct CouponBreakup: Codable {
        
        var isApplied: Bool?
        
        var message: String?
        
        var value: Double?
        
        var code: String?
        
        var type: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case message = "message"
            
            case value = "value"
            
            case code = "code"
            
            case type = "type"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            message = try? container.decode(String.self, forKey: .message)
            
            value = try? container.decode(Double.self, forKey: .value)
            
            code = try? container.decode(String.self, forKey: .code)
            
            type = try? container.decode(String.self, forKey: .type)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: RawBreakup
        Used By: Catalog
    */
    struct RawBreakup: Codable {
        
        var deliveryCharge: Double?
        
        var youSaved: Double?
        
        var coupon: Double?
        
        var codCharge: Double?
        
        var fyndCash: Double?
        
        var total: Double?
        
        var subtotal: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case deliveryCharge = "delivery_charge"
            
            case youSaved = "you_saved"
            
            case coupon = "coupon"
            
            case codCharge = "cod_charge"
            
            case fyndCash = "fynd_cash"
            
            case total = "total"
            
            case subtotal = "subtotal"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
            
            youSaved = try? container.decode(Double.self, forKey: .youSaved)
            
            coupon = try? container.decode(Double.self, forKey: .coupon)
            
            codCharge = try? container.decode(Double.self, forKey: .codCharge)
            
            fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            subtotal = try? container.decode(Double.self, forKey: .subtotal)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
        }
        
    }
    
    /*
        Model: LoyaltyPoints
        Used By: Catalog
    */
    struct LoyaltyPoints: Codable {
        
        var isApplied: Bool?
        
        var applicable: Double?
        
        var total: Double?
        
        var description: String?
        

        enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case applicable = "applicable"
            
            case total = "total"
            
            case description = "description"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            applicable = try? container.decode(Double.self, forKey: .applicable)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            description = try? container.decode(String.self, forKey: .description)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
        }
        
    }
    
    /*
        Model: CartBreakup
        Used By: Catalog
    */
    struct CartBreakup: Codable {
        
        var coupon: CouponBreakup?
        
        var loyaltyPoints: LoyaltyPoints?
        
        var display: DisplayBreakup?
        
        var raw: RawBreakup?
        

        enum CodingKeys: String, CodingKey {
            
            case coupon = "coupon"
            
            case loyaltyPoints = "loyalty_points"
            
            case display = "display"
            
            case raw = "raw"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
            
            loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
            display = try? container.decode(DisplayBreakup.self, forKey: .display)
            
            raw = try? container.decode(RawBreakup.self, forKey: .raw)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
        }
        
    }
    
    /*
        Model: PaymentFlow
        Used By: Catalog
    */
    struct PaymentFlow: Codable {
        
        var data: [String: Any]?
        
        var paymentFlow: String?
        
        var apiLink: String?
        

        enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case paymentFlow = "payment_flow"
            
            case apiLink = "api_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
            paymentFlow = try? container.decode(String.self, forKey: .paymentFlow)
            
            apiLink = try? container.decode(String.self, forKey: .apiLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
            
            try? container.encodeIfPresent(apiLink, forKey: .apiLink)
            
        }
        
    }
    
    /*
        Model: PaymentFlows
        Used By: Catalog
    */
    struct PaymentFlows: Codable {
        
        var simpl: PaymentFlow?
        
        var razorpay: PaymentFlow?
        
        var upiRazorpay: PaymentFlow?
        
        var fynd: PaymentFlow?
        
        var juspay: PaymentFlow?
        

        enum CodingKeys: String, CodingKey {
            
            case simpl = "Simpl"
            
            case razorpay = "Razorpay"
            
            case upiRazorpay = "UPI_Razorpay"
            
            case fynd = "Fynd"
            
            case juspay = "Juspay"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
            
            razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
            
            upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
            
            fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
            
            juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
        }
        
    }
    
    /*
        Model: PaymentOption
        Used By: Catalog
    */
    struct PaymentOption: Codable {
        
        var paymentModeId: Int?
        
        var list: [[String: Any]]?
        
        var displayName: String?
        
        var displayPriority: Int?
        
        var name: String?
        

        enum CodingKeys: String, CodingKey {
            
            case paymentModeId = "payment_mode_id"
            
            case list = "list"
            
            case displayName = "display_name"
            
            case displayPriority = "display_priority"
            
            case name = "name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
            
            list = try? container.decode([[String: Any]].self, forKey: .list)
            
            displayName = try? container.decode(String.self, forKey: .displayName)
            
            displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
            
            name = try? container.decode(String.self, forKey: .name)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
        }
        
    }
    
    /*
        Model: PaymentOptions
        Used By: Catalog
    */
    struct PaymentOptions: Codable {
        
        var paymentFlows: PaymentFlows?
        
        var paymentOption: [PaymentOption]?
        

        enum CodingKeys: String, CodingKey {
            
            case paymentFlows = "payment_flows"
            
            case paymentOption = "payment_option"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentFlows = try? container.decode(PaymentFlows.self, forKey: .paymentFlows)
            
            paymentOption = try? container.decode([PaymentOption].self, forKey: .paymentOption)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
            
            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
            
        }
        
    }
    
    /*
        Model: CartResponse
        Used By: Catalog
    */
    struct CartResponse: Codable {
        
        var message: String?
        
        var checkoutMode: String?
        
        var items: [CartProductInfo]?
        
        var paymentOptions: PaymentOptions?
        
        var isValid: Bool?
        
        var restrictCheckout: Bool?
        
        var breakupValues: CartBreakup?
        
        var gstin: String?
        
        var deliveryChargeInfo: [String]?
        
        var uid: String?
        
        var lastModified: String?
        
        var couponText: String?
        
        var cartId: Int?
        
        var currency: CartCurrency?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case checkoutMode = "checkout_mode"
            
            case items = "items"
            
            case paymentOptions = "payment_options"
            
            case isValid = "is_valid"
            
            case restrictCheckout = "restrict_checkout"
            
            case breakupValues = "breakup_values"
            
            case gstin = "gstin"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case uid = "uid"
            
            case lastModified = "last_modified"
            
            case couponText = "coupon_text"
            
            case cartId = "cart_id"
            
            case currency = "currency"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
        }
        
    }
    
    /*
        Model: AddProductCart
        Used By: Catalog
    */
    struct AddProductCart: Codable {
        
        var quantity: Int?
        
        var itemId: Int?
        
        var storeId: Int?
        
        var articleId: String?
        
        var sellerId: Int?
        
        var display: String?
        
        var itemSize: String?
        
        var pos: Bool?
        
        var articleAssignment: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case itemId = "item_id"
            
            case storeId = "store_id"
            
            case articleId = "article_id"
            
            case sellerId = "seller_id"
            
            case display = "display"
            
            case itemSize = "item_size"
            
            case pos = "pos"
            
            case articleAssignment = "article_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            storeId = try? container.decode(Int.self, forKey: .storeId)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            sellerId = try? container.decode(Int.self, forKey: .sellerId)
            
            display = try? container.decode(String.self, forKey: .display)
            
            itemSize = try? container.decode(String.self, forKey: .itemSize)
            
            pos = try? container.decode(Bool.self, forKey: .pos)
            
            articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            try? container.encodeIfPresent(pos, forKey: .pos)
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
        }
        
    }
    
    /*
        Model: AddCartRequest
        Used By: Catalog
    */
    struct AddCartRequest: Codable {
        
        var items: [AddProductCart]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([AddProductCart].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: AddCartResponse
        Used By: Catalog
    */
    struct AddCartResponse: Codable {
        
        var message: String?
        
        var success: String?
        
        var cart: CartResponse?
        
        var partial: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case cart = "cart"
            
            case partial = "partial"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try? container.decode(String.self, forKey: .success)
            
            cart = try? container.decode(CartResponse.self, forKey: .cart)
            
            partial = try? container.decode(Bool.self, forKey: .partial)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(partial, forKey: .partial)
            
        }
        
    }
    
    /*
        Model: UpdateProductCart
        Used By: Catalog
    */
    struct UpdateProductCart: Codable {
        
        var quantity: Int?
        
        var itemId: Int?
        
        var articleId: String?
        
        var itemIndex: Int?
        
        var itemSize: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case itemId = "item_id"
            
            case articleId = "article_id"
            
            case itemIndex = "item_index"
            
            case itemSize = "item_size"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
            
            itemSize = try? container.decode(Int.self, forKey: .itemSize)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
        }
        
    }
    
    /*
        Model: UpdateCartRequest
        Used By: Catalog
    */
    struct UpdateCartRequest: Codable {
        
        var operation: String
        
        var items: [UpdateProductCart]?
        

        enum CodingKeys: String, CodingKey {
            
            case operation = "operation"
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            operation = try container.decode(String.self, forKey: .operation)
            
            items = try? container.decode([UpdateProductCart].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: UpdateCartResponse
        Used By: Catalog
    */
    struct UpdateCartResponse: Codable {
        
        var message: String?
        
        var success: String?
        
        var cart: CartResponse?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case cart = "cart"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try? container.decode(String.self, forKey: .success)
            
            cart = try? container.decode(CartResponse.self, forKey: .cart)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
        }
        
    }
    
    /*
        Model: CartItemCountResponse
        Used By: Catalog
    */
    struct CartItemCountResponse: Codable {
        
        var userCartItemsCount: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case userCartItemsCount = "user_cart_items_count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userCartItemsCount = try? container.decode(Int.self, forKey: .userCartItemsCount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(userCartItemsCount, forKey: .userCartItemsCount)
            
        }
        
    }
    
    /*
        Model: PageCoupon
        Used By: Catalog
    */
    struct PageCoupon: Codable {
        
        var totalItemCount: Int?
        
        var hasPrevious: Bool?
        
        var current: Int?
        
        var total: Int?
        
        var hasNext: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case totalItemCount = "total_item_count"
            
            case hasPrevious = "has_previous"
            
            case current = "current"
            
            case total = "total"
            
            case hasNext = "has_next"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
        }
        
    }
    
    /*
        Model: Coupon
        Used By: Catalog
    */
    struct Coupon: Codable {
        
        var message: String?
        
        var isApplied: Bool?
        
        var isApplicable: Bool?
        
        var minimumCartValue: Double?
        
        var couponValue: Double?
        
        var maxDiscountValue: Double?
        
        var couponCode: String?
        
        var title: String?
        
        var expiresOn: String?
        
        var uid: Int?
        
        var subTitle: String?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case isApplied = "is_applied"
            
            case isApplicable = "is_applicable"
            
            case minimumCartValue = "minimum_cart_value"
            
            case couponValue = "coupon_value"
            
            case maxDiscountValue = "max_discount_value"
            
            case couponCode = "coupon_code"
            
            case title = "title"
            
            case expiresOn = "expires_on"
            
            case uid = "uid"
            
            case subTitle = "sub_title"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
            
            minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
            
            couponValue = try? container.decode(Double.self, forKey: .couponValue)
            
            maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
            
            couponCode = try? container.decode(String.self, forKey: .couponCode)
            
            title = try? container.decode(String.self, forKey: .title)
            
            expiresOn = try? container.decode(String.self, forKey: .expiresOn)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            subTitle = try? container.decode(String.self, forKey: .subTitle)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
            
        }
        
    }
    
    /*
        Model: GetCouponResponse
        Used By: Catalog
    */
    struct GetCouponResponse: Codable {
        
        var page: PageCoupon?
        
        var availableCouponList: [Coupon]?
        

        enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case availableCouponList = "available_coupon_list"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            page = try? container.decode(PageCoupon.self, forKey: .page)
            
            availableCouponList = try? container.decode([Coupon].self, forKey: .availableCouponList)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(availableCouponList, forKey: .availableCouponList)
            
        }
        
    }
    
    /*
        Model: ApplyCouponRequest
        Used By: Catalog
    */
    struct ApplyCouponRequest: Codable {
        
        var couponCode: String
        

        enum CodingKeys: String, CodingKey {
            
            case couponCode = "coupon_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponCode = try container.decode(String.self, forKey: .couponCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
        }
        
    }
    
    /*
        Model: CartCoupon
        Used By: Catalog
    */
    struct CartCoupon: Codable {
        
        var isApplied: Bool?
        
        var message: String?
        
        var value: Int?
        
        var code: String?
        
        var type: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case message = "message"
            
            case value = "value"
            
            case code = "code"
            
            case type = "type"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            message = try? container.decode(String.self, forKey: .message)
            
            value = try? container.decode(Int.self, forKey: .value)
            
            code = try? container.decode(String.self, forKey: .code)
            
            type = try? container.decode(String.self, forKey: .type)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: RawCartCoupon
        Used By: Catalog
    */
    struct RawCartCoupon: Codable {
        
        var deliveryCharge: Double?
        
        var youSaved: Double?
        
        var coupon: Double?
        
        var mrpTotal: Double?
        
        var convenienceFee: Double?
        
        var vog: Double?
        
        var gstCharges: Double?
        
        var codCharge: Double?
        
        var fyndCash: Double?
        
        var total: Double?
        
        var subtotal: Double?
        
        var discount: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case deliveryCharge = "delivery_charge"
            
            case youSaved = "you_saved"
            
            case coupon = "coupon"
            
            case mrpTotal = "mrp_total"
            
            case convenienceFee = "convenience_fee"
            
            case vog = "vog"
            
            case gstCharges = "gst_charges"
            
            case codCharge = "cod_charge"
            
            case fyndCash = "fynd_cash"
            
            case total = "total"
            
            case subtotal = "subtotal"
            
            case discount = "discount"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
            
            youSaved = try? container.decode(Double.self, forKey: .youSaved)
            
            coupon = try? container.decode(Double.self, forKey: .coupon)
            
            mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
            
            convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
            
            vog = try? container.decode(Double.self, forKey: .vog)
            
            gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
            
            codCharge = try? container.decode(Double.self, forKey: .codCharge)
            
            fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            subtotal = try? container.decode(Double.self, forKey: .subtotal)
            
            discount = try? container.decode(Double.self, forKey: .discount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
        }
        
    }
    
    /*
        Model: SaveCoupon
        Used By: Catalog
    */
    struct SaveCoupon: Codable {
        
        var raw: RawCartCoupon?
        
        var coupon: CartCoupon?
        
        var display: [String]?
        
        var loyaltyPoints: LoyaltyPoints?
        

        enum CodingKeys: String, CodingKey {
            
            case raw = "raw"
            
            case coupon = "coupon"
            
            case display = "display"
            
            case loyaltyPoints = "loyalty_points"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            raw = try? container.decode(RawCartCoupon.self, forKey: .raw)
            
            coupon = try? container.decode(CartCoupon.self, forKey: .coupon)
            
            display = try? container.decode([String].self, forKey: .display)
            
            loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
        }
        
    }
    
    /*
        Model: SaveCouponResponse
        Used By: Catalog
    */
    struct SaveCouponResponse: Codable {
        
        var message: String?
        
        var checkoutMode: String?
        
        var items: [String]?
        
        var isValid: Bool?
        
        var restrictCheckout: Bool?
        
        var breakupValues: SaveCoupon?
        
        var gstin: String?
        
        var deliveryChargeInfo: String?
        
        var uid: Int?
        
        var lastModified: String?
        
        var couponText: String?
        
        var cartId: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case checkoutMode = "checkout_mode"
            
            case items = "items"
            
            case isValid = "is_valid"
            
            case restrictCheckout = "restrict_checkout"
            
            case breakupValues = "breakup_values"
            
            case gstin = "gstin"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case uid = "uid"
            
            case lastModified = "last_modified"
            
            case couponText = "coupon_text"
            
            case cartId = "cart_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            items = try? container.decode([String].self, forKey: .items)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
        }
        
    }
    
    /*
        Model: OfferPrice
        Used By: Catalog
    */
    struct OfferPrice: Codable {
        
        var currencySymbol: String?
        
        var effective: Int?
        
        var marked: Int?
        
        var currencyCode: String?
        
        var bulkEffective: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case currencySymbol = "currency_symbol"
            
            case effective = "effective"
            
            case marked = "marked"
            
            case currencyCode = "currency_code"
            
            case bulkEffective = "bulk_effective"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
            effective = try? container.decode(Int.self, forKey: .effective)
            
            marked = try? container.decode(Int.self, forKey: .marked)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
            
        }
        
    }
    
    /*
        Model: OfferItem
        Used By: Catalog
    */
    struct OfferItem: Codable {
        
        var quantity: Int?
        
        var best: Bool?
        
        var type: String?
        
        var price: OfferPrice?
        
        var total: Double?
        
        var autoApplied: Bool?
        
        var margin: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case best = "best"
            
            case type = "type"
            
            case price = "price"
            
            case total = "total"
            
            case autoApplied = "auto_applied"
            
            case margin = "margin"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            best = try? container.decode(Bool.self, forKey: .best)
            
            type = try? container.decode(String.self, forKey: .type)
            
            price = try? container.decode(OfferPrice.self, forKey: .price)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
            
            margin = try? container.decode(Int.self, forKey: .margin)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(best, forKey: .best)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
            
            try? container.encodeIfPresent(margin, forKey: .margin)
            
        }
        
    }
    
    /*
        Model: OfferSeller
        Used By: Catalog
    */
    struct OfferSeller: Codable {
        
        var name: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: BulkPriceOffer
        Used By: Catalog
    */
    struct BulkPriceOffer: Codable {
        
        var offers: [OfferItem]?
        
        var seller: OfferSeller?
        

        enum CodingKeys: String, CodingKey {
            
            case offers = "offers"
            
            case seller = "seller"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            offers = try? container.decode([OfferItem].self, forKey: .offers)
            
            seller = try? container.decode(OfferSeller.self, forKey: .seller)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(offers, forKey: .offers)
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
        }
        
    }
    
    /*
        Model: BulkPriceResponse
        Used By: Catalog
    */
    struct BulkPriceResponse: Codable {
        
        var data: [BulkPriceOffer]?
        

        enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([BulkPriceOffer].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: GeoLocation
        Used By: Catalog
    */
    struct GeoLocation: Codable {
        
        var longitude: Double?
        
        var latitude: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case longitude = "longitude"
            
            case latitude = "latitude"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            longitude = try? container.decode(Double.self, forKey: .longitude)
            
            latitude = try? container.decode(Double.self, forKey: .latitude)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
        }
        
    }
    
    /*
        Model: Address
        Used By: Catalog
    */
    struct Address: Codable {
        
        var phone: Int?
        
        var addressType: String?
        
        var countryCode: String?
        
        var state: String?
        
        var geoLocation: GeoLocation?
        
        var city: String?
        
        var userId: String?
        
        var meta: [String: Any]?
        
        var areaCodeSlug: String?
        
        var isDefaultAddress: Bool?
        
        var uid: Int?
        
        var area: String?
        
        var country: String?
        
        var areaCode: String?
        
        var name: String?
        
        var checkoutMode: String?
        
        var addressId: Int?
        
        var isActive: Bool?
        
        var landmark: String?
        
        var address: String?
        
        var email: String?
        

        enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case addressType = "address_type"
            
            case countryCode = "country_code"
            
            case state = "state"
            
            case geoLocation = "geo_location"
            
            case city = "city"
            
            case userId = "user_id"
            
            case meta = "meta"
            
            case areaCodeSlug = "area_code_slug"
            
            case isDefaultAddress = "is_default_address"
            
            case uid = "uid"
            
            case area = "area"
            
            case country = "country"
            
            case areaCode = "area_code"
            
            case name = "name"
            
            case checkoutMode = "checkout_mode"
            
            case addressId = "address_id"
            
            case isActive = "is_active"
            
            case landmark = "landmark"
            
            case address = "address"
            
            case email = "email"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            state = try? container.decode(String.self, forKey: .state)
            
            geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
            
            city = try? container.decode(String.self, forKey: .city)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            area = try? container.decode(String.self, forKey: .area)
            
            country = try? container.decode(String.self, forKey: .country)
            
            areaCode = try? container.decode(String.self, forKey: .areaCode)
            
            name = try? container.decode(String.self, forKey: .name)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            address = try? container.decode(String.self, forKey: .address)
            
            email = try? container.decode(String.self, forKey: .email)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
        }
        
    }
    
    /*
        Model: GetAddressResponse
        Used By: Catalog
    */
    struct GetAddressResponse: Codable {
        
        var address: [Address]?
        

        enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address = try? container.decode([Address].self, forKey: .address)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
        }
        
    }
    
    /*
        Model: SaveAddressRequest
        Used By: Catalog
    */
    struct SaveAddressRequest: Codable {
        
        var area: String?
        
        var addressType: String?
        
        var landmark: String?
        
        var phone: Int?
        
        var email: String?
        
        var address: String?
        
        var name: String?
        
        var isDefaultAddress: Bool?
        
        var pincode: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case area = "area"
            
            case addressType = "address_type"
            
            case landmark = "landmark"
            
            case phone = "phone"
            
            case email = "email"
            
            case address = "address"
            
            case name = "name"
            
            case isDefaultAddress = "is_default_address"
            
            case pincode = "pincode"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            area = try? container.decode(String.self, forKey: .area)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            email = try? container.decode(String.self, forKey: .email)
            
            address = try? container.decode(String.self, forKey: .address)
            
            name = try? container.decode(String.self, forKey: .name)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
        }
        
    }
    
    /*
        Model: SaveAddressResponse
        Used By: Catalog
    */
    struct SaveAddressResponse: Codable {
        
        var isDefaultAddress: Bool?
        
        var addressId: Int?
        
        var success: String?
        

        enum CodingKeys: String, CodingKey {
            
            case isDefaultAddress = "is_default_address"
            
            case addressId = "address_id"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            success = try? container.decode(String.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: UpdateAddressRequest
        Used By: Catalog
    */
    struct UpdateAddressRequest: Codable {
        
        var area: String?
        
        var addressType: String?
        
        var landmark: String?
        
        var phone: Int?
        
        var email: String?
        
        var address: String?
        
        var name: String?
        
        var isDefaultAddress: Bool?
        
        var pincode: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case area = "area"
            
            case addressType = "address_type"
            
            case landmark = "landmark"
            
            case phone = "phone"
            
            case email = "email"
            
            case address = "address"
            
            case name = "name"
            
            case isDefaultAddress = "is_default_address"
            
            case pincode = "pincode"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            area = try? container.decode(String.self, forKey: .area)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            email = try? container.decode(String.self, forKey: .email)
            
            address = try? container.decode(String.self, forKey: .address)
            
            name = try? container.decode(String.self, forKey: .name)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
        }
        
    }
    
    /*
        Model: UpdateAddressResponse
        Used By: Catalog
    */
    struct UpdateAddressResponse: Codable {
        
        var isDefaultAddress: Bool?
        
        var addressId: Int?
        
        var isUpdated: Bool?
        
        var success: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case isDefaultAddress = "is_default_address"
            
            case addressId = "address_id"
            
            case isUpdated = "is_updated"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: DeleteAddressResponse
        Used By: Catalog
    */
    struct DeleteAddressResponse: Codable {
        
        var addressId: Int?
        
        var isDeleted: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case addressId = "address_id"
            
            case isDeleted = "is_deleted"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            isDeleted = try? container.decode(Bool.self, forKey: .isDeleted)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
        }
        
    }
    
    /*
        Model: SelectCartAddressRequest
        Used By: Catalog
    */
    struct SelectCartAddressRequest: Codable {
        
        var uid: String?
        
        var addressId: String?
        
        var billingAddressId: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case addressId = "address_id"
            
            case billingAddressId = "billing_address_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            addressId = try? container.decode(String.self, forKey: .addressId)
            
            billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
        }
        
    }
    
    /*
        Model: UpdateCartPaymentRequest
        Used By: Catalog
    */
    struct UpdateCartPaymentRequest: Codable {
        
        var addressId: Int?
        
        var merchantCode: String?
        
        var paymentIdentifier: String?
        
        var aggregatorName: String?
        
        var paymentMode: String?
        
        var uid: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case addressId = "address_id"
            
            case merchantCode = "merchant_code"
            
            case paymentIdentifier = "payment_identifier"
            
            case aggregatorName = "aggregator_name"
            
            case paymentMode = "payment_mode"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            merchantCode = try? container.decode(String.self, forKey: .merchantCode)
            
            paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
            
            aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
            
            paymentMode = try? container.decode(String.self, forKey: .paymentMode)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ShipmentResponse
        Used By: Catalog
    */
    struct ShipmentResponse: Codable {
        
        var boxType: String?
        
        var items: [CartProductInfo]?
        
        var shipments: Int?
        
        var fulfillmentType: String?
        
        var promise: String?
        
        var fulfillmentId: Int?
        
        var shipmentType: String?
        
        var dpOptions: [String: Any]?
        
        var dpId: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case boxType = "box_type"
            
            case items = "items"
            
            case shipments = "shipments"
            
            case fulfillmentType = "fulfillment_type"
            
            case promise = "promise"
            
            case fulfillmentId = "fulfillment_id"
            
            case shipmentType = "shipment_type"
            
            case dpOptions = "dp_options"
            
            case dpId = "dp_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            boxType = try? container.decode(String.self, forKey: .boxType)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            shipments = try? container.decode(Int.self, forKey: .shipments)
            
            fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
            
            promise = try? container.decode(String.self, forKey: .promise)
            
            fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
            
            shipmentType = try? container.decode(String.self, forKey: .shipmentType)
            
            dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
            
            dpId = try? container.decode(Int.self, forKey: .dpId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
        }
        
    }
    
    /*
        Model: CartShipmentsResponse
        Used By: Catalog
    */
    struct CartShipmentsResponse: Codable {
        
        var message: String?
        
        var checkoutMode: String?
        
        var paymentOptions: PaymentOptions?
        
        var isValid: Bool?
        
        var restrictCheckout: Bool?
        
        var breakupValues: CartBreakup?
        
        var gstin: String?
        
        var deliveryChargeInfo: [String]?
        
        var shipments: [ShipmentResponse]?
        
        var uid: String?
        
        var lastModified: String?
        
        var couponText: String?
        
        var cartId: Int?
        
        var currency: CartCurrency?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case checkoutMode = "checkout_mode"
            
            case paymentOptions = "payment_options"
            
            case isValid = "is_valid"
            
            case restrictCheckout = "restrict_checkout"
            
            case breakupValues = "breakup_values"
            
            case gstin = "gstin"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case shipments = "shipments"
            
            case uid = "uid"
            
            case lastModified = "last_modified"
            
            case couponText = "coupon_text"
            
            case cartId = "cart_id"
            
            case currency = "currency"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
        }
        
    }
    
    /*
        Model: CartCheckoutRequest
        Used By: Catalog
    */
    struct CartCheckoutRequest: Codable {
        
        var fyndstoreEmpId: String?
        
        var paymentParams: [String: Any]?
        
        var addressId: Int?
        
        var billingAddress: [String: Any]?
        
        var merchantCode: String?
        
        var paymentAutoConfirm: Bool?
        
        var paymentIdentifier: String?
        
        var orderingStore: Int?
        
        var extraMeta: [String: Any]?
        
        var callbackUrl: String?
        
        var aggregator: String?
        
        var meta: [String: Any]?
        
        var paymentMode: String
        
        var staff: [String: Any]?
        
        var billingAddressId: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case fyndstoreEmpId = "fyndstore_emp_id"
            
            case paymentParams = "payment_params"
            
            case addressId = "address_id"
            
            case billingAddress = "billing_address"
            
            case merchantCode = "merchant_code"
            
            case paymentAutoConfirm = "payment_auto_confirm"
            
            case paymentIdentifier = "payment_identifier"
            
            case orderingStore = "ordering_store"
            
            case extraMeta = "extra_meta"
            
            case callbackUrl = "callback_url"
            
            case aggregator = "aggregator"
            
            case meta = "meta"
            
            case paymentMode = "payment_mode"
            
            case staff = "staff"
            
            case billingAddressId = "billing_address_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
            
            paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
            
            merchantCode = try? container.decode(String.self, forKey: .merchantCode)
            
            paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
            
            paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
            
            orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
            
            extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
            
            callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
            
            aggregator = try? container.decode(String.self, forKey: .aggregator)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            staff = try? container.decode([String: Any].self, forKey: .staff)
            
            billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
            
            try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            try? container.encodeIfPresent(staff, forKey: .staff)
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
        }
        
    }
    
    /*
        Model: CheckCart
        Used By: Catalog
    */
    struct CheckCart: Codable {
        
        var isValid: Bool?
        
        var errorMessage: String?
        
        var deliveryCharges: Int?
        
        var storeEmps: [[String: Any]]?
        
        var orderId: String?
        
        var codCharges: Int?
        
        var storeCode: String?
        
        var message: String?
        
        var items: [CartProductInfo]?
        
        var paymentOptions: PaymentOptions?
        
        var breakupValues: CartBreakup?
        
        var success: Bool?
        
        var uid: String?
        
        var lastModified: String?
        
        var cartId: Int?
        
        var currency: CartCurrency?
        
        var userType: String?
        
        var codMessage: String?
        
        var checkoutMode: String?
        
        var couponText: String?
        
        var deliveryChargeOrderValue: Int?
        
        var restrictCheckout: Bool?
        
        var gstin: String?
        
        var deliveryChargeInfo: [String]?
        
        var codAvailable: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case isValid = "is_valid"
            
            case errorMessage = "error_message"
            
            case deliveryCharges = "delivery_charges"
            
            case storeEmps = "store_emps"
            
            case orderId = "order_id"
            
            case codCharges = "cod_charges"
            
            case storeCode = "store_code"
            
            case message = "message"
            
            case items = "items"
            
            case paymentOptions = "payment_options"
            
            case breakupValues = "breakup_values"
            
            case success = "success"
            
            case uid = "uid"
            
            case lastModified = "last_modified"
            
            case cartId = "cart_id"
            
            case currency = "currency"
            
            case userType = "user_type"
            
            case codMessage = "cod_message"
            
            case checkoutMode = "checkout_mode"
            
            case couponText = "coupon_text"
            
            case deliveryChargeOrderValue = "delivery_charge_order_value"
            
            case restrictCheckout = "restrict_checkout"
            
            case gstin = "gstin"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case codAvailable = "cod_available"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            errorMessage = try? container.decode(String.self, forKey: .errorMessage)
            
            deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
            
            storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
            codCharges = try? container.decode(Int.self, forKey: .codCharges)
            
            storeCode = try? container.decode(String.self, forKey: .storeCode)
            
            message = try? container.decode(String.self, forKey: .message)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            userType = try? container.decode(String.self, forKey: .userType)
            
            codMessage = try? container.decode(String.self, forKey: .codMessage)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            try? container.encodeIfPresent(codMessage, forKey: .codMessage)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
            
        }
        
    }
    
    /*
        Model: OrderData
        Used By: Catalog
    */
    struct OrderData: Codable {
        
        var orderId: String?
        

        enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
        }
        
    }
    
    /*
        Model: CartCheckoutResponse
        Used By: Catalog
    */
    struct CartCheckoutResponse: Codable {
        
        var message: String?
        
        var success: Bool?
        
        var callbackUrl: String?
        
        var data: OrderData?
        
        var cart: CheckCart?
        
        var orderId: String?
        
        var appInterceptUrl: String?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case callbackUrl = "callback_url"
            
            case data = "data"
            
            case cart = "cart"
            
            case orderId = "order_id"
            
            case appInterceptUrl = "app_intercept_url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
            
            data = try? container.decode(OrderData.self, forKey: .data)
            
            cart = try? container.decode(CheckCart.self, forKey: .cart)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
            appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
            
        }
        
    }
    
    /*
        Model: CartMetaRequest
        Used By: Catalog
    */
    struct CartMetaRequest: Codable {
        
        var comment: String?
        
        var checkoutMode: String?
        
        var pickUpCustomerDetails: [String: Any]?
        
        var gstin: String?
        

        enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case checkoutMode = "checkout_mode"
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
            case gstin = "gstin"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            comment = try? container.decode(String.self, forKey: .comment)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            pickUpCustomerDetails = try? container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
        }
        
    }
    
    /*
        Model: CartMetaResponse
        Used By: Catalog
    */
    struct CartMetaResponse: Codable {
        
        var message: String?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CartMetaMissingResponse
        Used By: Catalog
    */
    struct CartMetaMissingResponse: Codable {
        
        var errors: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            errors = try? container.decode([String].self, forKey: .errors)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
        }
        
    }
    
    /*
        Model: GetShareCartLinkRequest
        Used By: Catalog
    */
    struct GetShareCartLinkRequest: Codable {
        
        var uid: Int
        
        var meta: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case meta = "meta"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try container.decode(Int.self, forKey: .uid)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
        }
        
    }
    
    /*
        Model: GetShareCartLinkResponse
        Used By: Catalog
    */
    struct GetShareCartLinkResponse: Codable {
        
        var shareUrl: String?
        
        var token: String?
        

        enum CodingKeys: String, CodingKey {
            
            case shareUrl = "share_url"
            
            case token = "token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shareUrl = try? container.decode(String.self, forKey: .shareUrl)
            
            token = try? container.decode(String.self, forKey: .token)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shareUrl, forKey: .shareUrl)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
        }
        
    }
    
    /*
        Model: SharedCartDetails
        Used By: Catalog
    */
    struct SharedCartDetails: Codable {
        
        var createdOn: String?
        
        var token: String?
        
        var source: [String: Any]?
        
        var meta: [String: Any]?
        
        var user: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case token = "token"
            
            case source = "source"
            
            case meta = "meta"
            
            case user = "user"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            token = try? container.decode(String.self, forKey: .token)
            
            source = try? container.decode([String: Any].self, forKey: .source)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: SharedCart
        Used By: Catalog
    */
    struct SharedCart: Codable {
        
        var message: String?
        
        var checkoutMode: String?
        
        var items: [CartProductInfo]?
        
        var paymentOptions: PaymentOptions?
        
        var isValid: Bool?
        
        var restrictCheckout: Bool?
        
        var breakupValues: CartBreakup?
        
        var gstin: String?
        
        var deliveryChargeInfo: [String]?
        
        var sharedCartDetails: SharedCartDetails?
        
        var uid: String?
        
        var lastModified: String?
        
        var couponText: String?
        
        var cartId: Int?
        
        var currency: CartCurrency?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case checkoutMode = "checkout_mode"
            
            case items = "items"
            
            case paymentOptions = "payment_options"
            
            case isValid = "is_valid"
            
            case restrictCheckout = "restrict_checkout"
            
            case breakupValues = "breakup_values"
            
            case gstin = "gstin"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case sharedCartDetails = "shared_cart_details"
            
            case uid = "uid"
            
            case lastModified = "last_modified"
            
            case couponText = "coupon_text"
            
            case cartId = "cart_id"
            
            case currency = "currency"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
        }
        
    }
    
    /*
        Model: SharedCartResponse
        Used By: Catalog
    */
    struct SharedCartResponse: Codable {
        
        var error: String?
        
        var cart: SharedCart?
        

        enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case cart = "cart"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            error = try? container.decode(String.self, forKey: .error)
            
            cart = try? container.decode(SharedCart.self, forKey: .cart)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
        }
        
    }
    
    /*
        Model: TicketList
        Used By: Catalog
    */
    struct TicketList: Codable {
        
        var docs: [Ticket]?
        
        var filters: Filter?
        
        var limit: Int?
        
        var page: Int?
        
        var pages: Int?
        
        var total: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case filters = "filters"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([Ticket].self, forKey: .docs)
            
            filters = try? container.decode(Filter.self, forKey: .filters)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: TicketHistoryList
        Used By: Catalog
    */
    struct TicketHistoryList: Codable {
        
        var docs: [TicketHistory]?
        
        var limit: Int?
        
        var page: Int?
        
        var pages: Int?
        
        var total: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([TicketHistory].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CustomFormList
        Used By: Catalog
    */
    struct CustomFormList: Codable {
        
        var docs: [CustomForm]?
        
        var limit: Int?
        
        var page: Int?
        
        var pages: Int?
        
        var total: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([CustomForm].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CreateCustomFormPayload
        Used By: Catalog
    */
    struct CreateCustomFormPayload: Codable {
        
        var slug: String
        
        var title: String
        
        var inputs: [[String: Any]]
        
        var description: String?
        
        var headerImage: String?
        
        var shouldNotify: Bool?
        
        var successMessage: String?
        
        var pollForAssignment: PollForAssignment?
        

        enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditCustomFormPayload
        Used By: Catalog
    */
    struct EditCustomFormPayload: Codable {
        
        var title: String
        
        var inputs: [[String: Any]]
        
        var description: String?
        
        var headerImage: String?
        
        var shouldNotify: Bool?
        
        var loginRequired: Bool?
        
        var successMessage: String?
        
        var pollForAssignment: PollForAssignment?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case loginRequired = "login_required"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            loginRequired = try? container.decode(Bool.self, forKey: .loginRequired)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditTicketPayload
        Used By: Catalog
    */
    struct EditTicketPayload: Codable {
        
        var content: Content?
        
        var category: String?
        
        var source: String?
        
        var status: String?
        
        var priority: String?
        
        var assignedTo: AgentChangePayload?
        
        var tags: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case content = "content"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            content = try? container.decode(Content.self, forKey: .content)
            
            category = try? container.decode(String.self, forKey: .category)
            
            source = try? container.decode(String.self, forKey: .source)
            
            status = try? container.decode(String.self, forKey: .status)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            assignedTo = try? container.decode(AgentChangePayload.self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: AgentChangePayload
        Used By: Catalog
    */
    struct AgentChangePayload: Codable {
        
        var agentId: String
        

        enum CodingKeys: String, CodingKey {
            
            case agentId = "agent_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            agentId = try container.decode(String.self, forKey: .agentId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(agentId, forKey: .agentId)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomResponse
        Used By: Catalog
    */
    struct CreateVideoRoomResponse: Codable {
        
        var uniqueName: String
        

        enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomPayload
        Used By: Catalog
    */
    struct CreateVideoRoomPayload: Codable {
        
        var uniqueName: String
        
        var notify: [[String: Any]]?
        

        enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
            case notify = "notify"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
            notify = try? container.decode([[String: Any]].self, forKey: .notify)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
            try? container.encodeIfPresent(notify, forKey: .notify)
            
        }
        
    }
    
    /*
        Model: Filter
        Used By: Catalog
    */
    struct Filter: Codable {
        
        var priorities: Priority
        
        var categories: Category?
        
        var statuses: Status
        
        var assignees: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case priorities = "priorities"
            
            case categories = "categories"
            
            case statuses = "statuses"
            
            case assignees = "assignees"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            priorities = try container.decode(Priority.self, forKey: .priorities)
            
            categories = try? container.decode(Category.self, forKey: .categories)
            
            statuses = try container.decode(Status.self, forKey: .statuses)
            
            assignees = try container.decode([[String: Any]].self, forKey: .assignees)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(priorities, forKey: .priorities)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            try? container.encodeIfPresent(assignees, forKey: .assignees)
            
        }
        
    }
    
    /*
        Model: TicketHistoryPayload
        Used By: Catalog
    */
    struct TicketHistoryPayload: Codable {
        
        var value: [String: Any]?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: CustomFormSubmissionPayload
        Used By: Catalog
    */
    struct CustomFormSubmissionPayload: Codable {
        
        var response: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            response = try container.decode([[String: Any]].self, forKey: .response)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(response, forKey: .response)
            
        }
        
    }
    
    /*
        Model: GetTokenForVideoRoomResponse
        Used By: Catalog
    */
    struct GetTokenForVideoRoomResponse: Codable {
        
        var accessToken: String
        

        enum CodingKeys: String, CodingKey {
            
            case accessToken = "access_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            accessToken = try container.decode(String.self, forKey: .accessToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(accessToken, forKey: .accessToken)
            
        }
        
    }
    
    /*
        Model: GetParticipantsInsideVideoRoomResponse
        Used By: Catalog
    */
    struct GetParticipantsInsideVideoRoomResponse: Codable {
        
        var participants: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case participants = "participants"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            participants = try container.decode([[String: Any]].self, forKey: .participants)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(participants, forKey: .participants)
            
        }
        
    }
    
    /*
        Model: SubmitCustomFormResponse
        Used By: Catalog
    */
    struct SubmitCustomFormResponse: Codable {
        
        var ticket: Ticket
        

        enum CodingKeys: String, CodingKey {
            
            case ticket = "ticket"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ticket = try container.decode(Ticket.self, forKey: .ticket)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ticket, forKey: .ticket)
            
        }
        
    }
    
    /*
        Model: TicketContext
        Used By: Catalog
    */
    struct TicketContext: Codable {
        
        var applicationId: String?
        
        var companyId: String
        

        enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            companyId = try container.decode(String.self, forKey: .companyId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
        }
        
    }
    
    /*
        Model: CreatedOn
        Used By: Catalog
    */
    struct CreatedOn: Codable {
        
        var userAgent: String
        

        enum CodingKeys: String, CodingKey {
            
            case userAgent = "user_agent"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userAgent = try container.decode(String.self, forKey: .userAgent)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
            
        }
        
    }
    
    /*
        Model: Asset
        Used By: Catalog
    */
    struct Asset: Codable {
        
        var aspectRatio: String?
        
        var id: String?
        
        var secureUrl: String?
        

        enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case id = "id"
            
            case secureUrl = "secure_url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
            
            id = try? container.decode(String.self, forKey: .id)
            
            secureUrl = try? container.decode(String.self, forKey: .secureUrl)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
        }
        
    }
    
    /*
        Model: Content
        Used By: Catalog
    */
    struct Content: Codable {
        
        var title: String
        
        var description: String?
        
        var attachments: [Asset]?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case attachments = "attachments"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            attachments = try? container.decode([Asset].self, forKey: .attachments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
        }
        
    }
    
    /*
        Model: APIError
        Used By: Catalog
    */
    struct APIError: Codable {
        
        var code: Double?
        
        var error: [String: Any]?
        
        var message: String
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(Double.self, forKey: .code)
            
            error = try? container.decode([String: Any].self, forKey: .error)
            
            message = try container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: AddTicketPayload
        Used By: Catalog
    */
    struct AddTicketPayload: Codable {
        
        var status: String
        
        var priority: String
        
        var category: String
        
        var content: Content
        

        enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case priority = "priority"
            
            case category = "category"
            
            case content = "content"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try container.decode(String.self, forKey: .status)
            
            priority = try container.decode(String.self, forKey: .priority)
            
            category = try container.decode(String.self, forKey: .category)
            
            content = try container.decode(Content.self, forKey: .content)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
        }
        
    }
    
    /*
        Model: Priority
        Used By: Catalog
    */
    struct Priority: Codable {
        
        var key: String
        
        var display: String
        
        var color: String
        

        enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Status
        Used By: Catalog
    */
    struct Status: Codable {
        
        var key: String
        
        var display: String
        
        var color: String
        

        enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Category
        Used By: Catalog
    */
    struct Category: Codable {
        
        var key: String
        
        var display: String
        
        var form: CustomForm?
        

        enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case form = "form"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            form = try? container.decode(CustomForm.self, forKey: .form)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(form, forKey: .form)
            
        }
        
    }
    
    /*
        Model: SubmitButton
        Used By: Catalog
    */
    struct SubmitButton: Codable {
        
        var title: String
        
        var titleColor: String
        
        var backgroundColor: String
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case titleColor = "title_color"
            
            case backgroundColor = "background_color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            titleColor = try container.decode(String.self, forKey: .titleColor)
            
            backgroundColor = try container.decode(String.self, forKey: .backgroundColor)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(titleColor, forKey: .titleColor)
            
            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
            
        }
        
    }
    
    /*
        Model: PollForAssignment
        Used By: Catalog
    */
    struct PollForAssignment: Codable {
        
        var duration: Double
        
        var message: String
        
        var successMessage: String
        
        var failureMessage: String
        

        enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case message = "message"
            
            case successMessage = "success_message"
            
            case failureMessage = "failure_message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            duration = try container.decode(Double.self, forKey: .duration)
            
            message = try container.decode(String.self, forKey: .message)
            
            successMessage = try container.decode(String.self, forKey: .successMessage)
            
            failureMessage = try container.decode(String.self, forKey: .failureMessage)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(failureMessage, forKey: .failureMessage)
            
        }
        
    }
    
    /*
        Model: CustomForm
        Used By: Catalog
    */
    struct CustomForm: Codable {
        
        var applicationId: String
        
        var slug: String
        
        var headerImage: String?
        
        var title: String
        
        var description: String?
        
        var loginRequired: Bool
        
        var shouldNotify: Bool
        
        var successMessage: String?
        
        var submitButton: SubmitButton?
        
        var inputs: [[String: Any]]
        
        var createdOn: CreatedOn?
        
        var createdBy: [String: Any]?
        
        var pollForAssignment: PollForAssignment?
        
        var id: String
        
        var updatedAt: String?
        
        var createdAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case slug = "slug"
            
            case headerImage = "header_image"
            
            case title = "title"
            
            case description = "description"
            
            case loginRequired = "login_required"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case submitButton = "submit_button"
            
            case inputs = "inputs"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case pollForAssignment = "poll_for_assignment"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try container.decode(String.self, forKey: .applicationId)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
            
            shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            submitButton = try? container.decode(SubmitButton.self, forKey: .submitButton)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(submitButton, forKey: .submitButton)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: TicketHistory
        Used By: Catalog
    */
    struct TicketHistory: Codable {
        
        var type: String
        
        var value: [String: Any]
        
        var ticketId: String
        
        var createdOn: CreatedOn?
        
        var createdBy: [String: Any]?
        
        var id: String
        
        var updatedAt: String?
        
        var createdAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case ticketId = "ticket_id"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try container.decode(String.self, forKey: .type)
            
            value = try container.decode([String: Any].self, forKey: .value)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: Ticket
        Used By: Catalog
    */
    struct Ticket: Codable {
        
        var context: TicketContext?
        
        var createdOn: CreatedOn?
        
        var responseId: String?
        
        var content: Content?
        
        var ticketId: String
        
        var category: Category
        
        var source: String
        
        var status: Status
        
        var priority: Priority
        
        var createdBy: [String: Any]?
        
        var assignedTo: [String: Any]?
        
        var tags: [String]?
        
        var customJson: [String: Any]?
        
        var id: String?
        
        var updatedAt: String?
        
        var createdAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case context = "context"
            
            case createdOn = "created_on"
            
            case responseId = "response_id"
            
            case content = "content"
            
            case ticketId = "ticket_id"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case createdBy = "created_by"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            context = try? container.decode(TicketContext.self, forKey: .context)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            responseId = try? container.decode(String.self, forKey: .responseId)
            
            content = try? container.decode(Content.self, forKey: .content)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            category = try container.decode(Category.self, forKey: .category)
            
            source = try container.decode(String.self, forKey: .source)
            
            status = try container.decode(Status.self, forKey: .status)
            
            priority = try container.decode(Priority.self, forKey: .priority)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            assignedTo = try? container.decode([String: Any].self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            id = try? container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(context, forKey: .context)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(responseId, forKey: .responseId)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: PaginationSchema
        Used By: Catalog
    */
    struct PaginationSchema: Codable {
        
        var size: Int?
        
        var itemTotal: Int?
        
        var hasNext: Bool?
        
        var type: String?
        
        var current: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            type = try? container.decode(String.self, forKey: .type)
            
            current = try? container.decode(Int.self, forKey: .current)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
        }
        
    }
    
    /*
        Model: ThemesListingResponseSchema
        Used By: Catalog
    */
    struct ThemesListingResponseSchema: Codable {
        
        var items: [ThemesSchema]?
        
        var page: PaginationSchema?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ThemesSchema].self, forKey: .items)
            
            page = try? container.decode(PaginationSchema.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: AddThemeRequestSchema
        Used By: Catalog
    */
    struct AddThemeRequestSchema: Codable {
        
        var themeId: String?
        

        enum CodingKeys: String, CodingKey {
            
            case themeId = "theme_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            themeId = try? container.decode(String.self, forKey: .themeId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
        }
        
    }
    
    /*
        Model: UpgradableThemeSchema
        Used By: Catalog
    */
    struct UpgradableThemeSchema: Codable {
        
        var parentTheme: String?
        
        var appliedTheme: String?
        
        var upgrade: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case parentTheme = "parent_theme"
            
            case appliedTheme = "applied_theme"
            
            case upgrade = "upgrade"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            appliedTheme = try? container.decode(String.self, forKey: .appliedTheme)
            
            upgrade = try? container.decode(Bool.self, forKey: .upgrade)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(appliedTheme, forKey: .appliedTheme)
            
            try? container.encodeIfPresent(upgrade, forKey: .upgrade)
            
        }
        
    }
    
    /*
        Model: FontsSchema
        Used By: Catalog
    */
    struct FontsSchema: Codable {
        
    }
    
    /*
        Model: ThemesSchema
        Used By: Catalog
    */
    struct ThemesSchema: Codable {
        
        var application: String?
        
        var applied: Bool?
        
        var customized: Bool?
        
        var published: Bool?
        
        var archived: Bool?
        
        var createdAt: String?
        
        var updatedAt: String?
        
        var version: String?
        
        var parentThemeVersion: String?
        
        var parentTheme: String?
        
        var information: [String: Any]?
        
        var tags: [String]?
        
        var src: [String: Any]?
        
        var assets: [String: Any]?
        
        var availablePages: [[String: Any]]?
        
        var pages: [String: Any]?
        
        var availableSections: [availableSectionSchema]?
        
        var sections: [sectionSchema]?
        
        var constants: [String: Any]?
        
        var styles: [String: Any]?
        
        var config: [String: Any]?
        
        var settings: [String: Any]?
        
        var font: [String: Any]?
        
        var id: String?
        
        var v: Int?
        
        var colors: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case applied = "applied"
            
            case customized = "customized"
            
            case published = "published"
            
            case archived = "archived"
            
            case createdAt = "createdAt"
            
            case updatedAt = "updatedAt"
            
            case version = "version"
            
            case parentThemeVersion = "parentThemeVersion"
            
            case parentTheme = "parentTheme"
            
            case information = "information"
            
            case tags = "tags"
            
            case src = "src"
            
            case assets = "assets"
            
            case availablePages = "available_pages"
            
            case pages = "pages"
            
            case availableSections = "available_sections"
            
            case sections = "sections"
            
            case constants = "constants"
            
            case styles = "styles"
            
            case config = "config"
            
            case settings = "settings"
            
            case font = "font"
            
            case id = "_id"
            
            case v = "__v"
            
            case colors = "colors"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            applied = try? container.decode(Bool.self, forKey: .applied)
            
            customized = try? container.decode(Bool.self, forKey: .customized)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            archived = try? container.decode(Bool.self, forKey: .archived)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            version = try? container.decode(String.self, forKey: .version)
            
            parentThemeVersion = try? container.decode(String.self, forKey: .parentThemeVersion)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            information = try? container.decode([String: Any].self, forKey: .information)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            src = try? container.decode([String: Any].self, forKey: .src)
            
            assets = try? container.decode([String: Any].self, forKey: .assets)
            
            availablePages = try? container.decode([[String: Any]].self, forKey: .availablePages)
            
            pages = try? container.decode([String: Any].self, forKey: .pages)
            
            availableSections = try? container.decode([availableSectionSchema].self, forKey: .availableSections)
            
            sections = try? container.decode([sectionSchema].self, forKey: .sections)
            
            constants = try? container.decode([String: Any].self, forKey: .constants)
            
            styles = try? container.decode([String: Any].self, forKey: .styles)
            
            config = try? container.decode([String: Any].self, forKey: .config)
            
            settings = try? container.decode([String: Any].self, forKey: .settings)
            
            font = try? container.decode([String: Any].self, forKey: .font)
            
            id = try? container.decode(String.self, forKey: .id)
            
            v = try? container.decode(Int.self, forKey: .v)
            
            colors = try? container.decode([String: Any].self, forKey: .colors)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            try? container.encodeIfPresent(customized, forKey: .customized)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            try? container.encodeIfPresent(parentThemeVersion, forKey: .parentThemeVersion)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(information, forKey: .information)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            try? container.encodeIfPresent(availablePages, forKey: .availablePages)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(availableSections, forKey: .availableSections)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
            try? container.encodeIfPresent(constants, forKey: .constants)
            
            try? container.encodeIfPresent(styles, forKey: .styles)
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            try? container.encodeIfPresent(settings, forKey: .settings)
            
            try? container.encodeIfPresent(font, forKey: .font)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            try? container.encodeIfPresent(colors, forKey: .colors)
            
        }
        
    }
    
    /*
        Model: pagesSchema
        Used By: Catalog
    */
    struct pagesSchema: Codable {
        
        var text: String?
        
        var path: String?
        
        var type: String?
        
        var value: String?
        
        var sections: [[String: Any]]?
        

        enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case path = "path"
            
            case type = "type"
            
            case value = "value"
            
            case sections = "sections"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            text = try? container.decode(String.self, forKey: .text)
            
            path = try? container.decode(String.self, forKey: .path)
            
            type = try? container.decode(String.self, forKey: .type)
            
            value = try? container.decode(String.self, forKey: .value)
            
            sections = try? container.decode([[String: Any]].self, forKey: .sections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
        }
        
    }
    
    /*
        Model: availableSectionSchema
        Used By: Catalog
    */
    struct availableSectionSchema: Codable {
        
        var blocks: [[String: Any]]?
        
        var name: String?
        
        var label: String?
        
        var props: [[String: Any]]?
        

        enum CodingKeys: String, CodingKey {
            
            case blocks = "blocks"
            
            case name = "name"
            
            case label = "label"
            
            case props = "props"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            blocks = try? container.decode([[String: Any]].self, forKey: .blocks)
            
            name = try? container.decode(String.self, forKey: .name)
            
            label = try? container.decode(String.self, forKey: .label)
            
            props = try? container.decode([[String: Any]].self, forKey: .props)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            try? container.encodeIfPresent(props, forKey: .props)
            
        }
        
    }
    
    /*
        Model: sectionSchema
        Used By: Catalog
    */
    struct sectionSchema: Codable {
        
        var pageKey: String?
        
        var pageSections: [[String: Any]]?
        

        enum CodingKeys: String, CodingKey {
            
            case pageKey = "page_key"
            
            case pageSections = "page_sections"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pageKey = try? container.decode(String.self, forKey: .pageKey)
            
            pageSections = try? container.decode([[String: Any]].self, forKey: .pageSections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pageKey, forKey: .pageKey)
            
            try? container.encodeIfPresent(pageSections, forKey: .pageSections)
            
        }
        
    }
    
    /*
        Model: EditEmailRequestSchema
        Used By: Catalog
    */
    struct EditEmailRequestSchema: Codable {
        
        var email: String?
        

        enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
        }
        
    }
    
    /*
        Model: SendVerificationLinkMobileRequestSchema
        Used By: Catalog
    */
    struct SendVerificationLinkMobileRequestSchema: Codable {
        
        var verified: Bool?
        
        var active: Bool?
        
        var countryCode: String?
        
        var phone: String?
        
        var primary: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case active = "active"
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
            case primary = "primary"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
            primary = try? container.decode(Bool.self, forKey: .primary)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
        }
        
    }
    
    /*
        Model: EditMobileRequestSchema
        Used By: Catalog
    */
    struct EditMobileRequestSchema: Codable {
        
        var countryCode: String?
        
        var phone: String?
        

        enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
        }
        
    }
    
    /*
        Model: EditProfileRequestSchema
        Used By: Catalog
    */
    struct EditProfileRequestSchema: Codable {
        
        var firstName: String?
        
        var lastName: String?
        
        var mobile: String?
        
        var email: String?
        
        var gender: String?
        
        var dob: String?
        
        var profilePicUrl: String?
        
        var androidHash: String?
        
        var sender: String?
        
        var registerToken: String?
        

        enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
            case gender = "gender"
            
            case dob = "dob"
            
            case profilePicUrl = "profile_pic_url"
            
            case androidHash = "androidHash"
            
            case sender = "sender"
            
            case registerToken = "register_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            email = try? container.decode(String.self, forKey: .email)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            dob = try? container.decode(String.self, forKey: .dob)
            
            profilePicUrl = try? container.decode(String.self, forKey: .profilePicUrl)
            
            androidHash = try? container.decode(String.self, forKey: .androidHash)
            
            sender = try? container.decode(String.self, forKey: .sender)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(dob, forKey: .dob)
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: SendEmailOtpRequestSchema
        Used By: Catalog
    */
    struct SendEmailOtpRequestSchema: Codable {
        
        var email: String?
        
        var action: String?
        
        var token: String?
        
        var registerToken: String?
        

        enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case action = "action"
            
            case token = "token"
            
            case registerToken = "register_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            action = try? container.decode(String.self, forKey: .action)
            
            token = try? container.decode(String.self, forKey: .token)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: VerifyOtpRequestSchema
        Used By: Catalog
    */
    struct VerifyOtpRequestSchema: Codable {
        
        var requestId: String?
        
        var registerToken: String?
        
        var otp: String?
        

        enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case registerToken = "register_token"
            
            case otp = "otp"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
            otp = try? container.decode(String.self, forKey: .otp)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
        }
        
    }
    
    /*
        Model: SendMobileOtpRequestSchema
        Used By: Catalog
    */
    struct SendMobileOtpRequestSchema: Codable {
        
        var mobile: String?
        
        var countryCode: String?
        
        var action: String?
        
        var token: String?
        
        var androidHash: String?
        
        var force: String?
        

        enum CodingKeys: String, CodingKey {
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
            case action = "action"
            
            case token = "token"
            
            case androidHash = "androidHash"
            
            case force = "force"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            action = try? container.decode(String.self, forKey: .action)
            
            token = try? container.decode(String.self, forKey: .token)
            
            androidHash = try? container.decode(String.self, forKey: .androidHash)
            
            force = try? container.decode(String.self, forKey: .force)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            try? container.encodeIfPresent(force, forKey: .force)
            
        }
        
    }
    
    /*
        Model: UpdatePasswordRequestSchema
        Used By: Catalog
    */
    struct UpdatePasswordRequestSchema: Codable {
        
        var oldPassword: String?
        
        var newPassword: String?
        

        enum CodingKeys: String, CodingKey {
            
            case oldPassword = "old_password"
            
            case newPassword = "new_password"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            oldPassword = try? container.decode(String.self, forKey: .oldPassword)
            
            newPassword = try? container.decode(String.self, forKey: .newPassword)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(oldPassword, forKey: .oldPassword)
            
            try? container.encodeIfPresent(newPassword, forKey: .newPassword)
            
        }
        
    }
    
    /*
        Model: FormRegisterRequestSchema
        Used By: Catalog
    */
    struct FormRegisterRequestSchema: Codable {
        
        var firstName: String?
        
        var lastName: String?
        
        var gender: String?
        
        var email: String?
        
        var password: String?
        
        var phone: [String: Any]?
        
        var registerToken: String?
        

        enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case gender = "gender"
            
            case email = "email"
            
            case password = "password"
            
            case phone = "phone"
            
            case registerToken = "register_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            email = try? container.decode(String.self, forKey: .email)
            
            password = try? container.decode(String.self, forKey: .password)
            
            phone = try? container.decode([String: Any].self, forKey: .phone)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: TokenRequestBodySchema
        Used By: Catalog
    */
    struct TokenRequestBodySchema: Codable {
        
        var token: String?
        

        enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            token = try? container.decode(String.self, forKey: .token)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
        }
        
    }
    
    /*
        Model: ForgotPasswordRequestSchema
        Used By: Catalog
    */
    struct ForgotPasswordRequestSchema: Codable {
        
        var code: String?
        
        var password: String?
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case password = "password"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            password = try? container.decode(String.self, forKey: .password)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
        }
        
    }
    
    /*
        Model: CodeRequestBodySchema
        Used By: Catalog
    */
    struct CodeRequestBodySchema: Codable {
        
        var code: String?
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
        }
        
    }
    
    /*
        Model: SendResetPasswordEmailRequestSchema
        Used By: Catalog
    */
    struct SendResetPasswordEmailRequestSchema: Codable {
        
        var email: String?
        
        var gRecaptchaResponse: String?
        

        enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
        }
        
    }
    
    /*
        Model: PasswordLoginRequestSchema
        Used By: Catalog
    */
    struct PasswordLoginRequestSchema: Codable {
        
        var gRecaptchaResponse: String?
        
        var password: String?
        
        var username: String?
        

        enum CodingKeys: String, CodingKey {
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
            case password = "password"
            
            case username = "username"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
            password = try? container.decode(String.self, forKey: .password)
            
            username = try? container.decode(String.self, forKey: .username)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
        }
        
    }
    
    /*
        Model: SendOtpRequestSchema
        Used By: Catalog
    */
    struct SendOtpRequestSchema: Codable {
        
        var countryCode: String?
        
        var gRecaptchaResponse: String?
        
        var mobile: String?
        

        enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
            case mobile = "mobile"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
        }
        
    }
    
    /*
        Model: OAuthRequestSchema
        Used By: Catalog
    */
    struct OAuthRequestSchema: Codable {
        
        var isSignedIn: Bool?
        
        var oauth2: [String: Any]?
        
        var profile: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case isSignedIn = "is_signed_in"
            
            case oauth2 = "oauth2"
            
            case profile = "profile"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSignedIn = try? container.decode(Bool.self, forKey: .isSignedIn)
            
            oauth2 = try? container.decode([String: Any].self, forKey: .oauth2)
            
            profile = try? container.decode([String: Any].self, forKey: .profile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSignedIn, forKey: .isSignedIn)
            
            try? container.encodeIfPresent(oauth2, forKey: .oauth2)
            
            try? container.encodeIfPresent(profile, forKey: .profile)
            
        }
        
    }
    
    /*
        Model: AuthSuccess
        Used By: Catalog
    */
    struct AuthSuccess: Codable {
        
        var registerToken: String?
        
        var userExists: Bool?
        
        var user: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case registerToken = "register_token"
            
            case userExists = "user_exists"
            
            case user = "user"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
            userExists = try? container.decode(Bool.self, forKey: .userExists)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            try? container.encodeIfPresent(userExists, forKey: .userExists)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: SendOtpResponse
        Used By: Catalog
    */
    struct SendOtpResponse: Codable {
        
        var resendTimer: Int?
        
        var resendToken: String?
        
        var success: Bool?
        
        var requestId: String?
        
        var message: String?
        
        var mobile: String?
        
        var countryCode: String?
        

        enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: LoginSuccess
        Used By: Catalog
    */
    struct LoginSuccess: Codable {
        
        var user: UserSchema?
        

        enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: VerifyOtpSuccess
        Used By: Catalog
    */
    struct VerifyOtpSuccess: Codable {
        
        var user: UserSchema?
        
        var userExists: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case userExists = "userExists"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            userExists = try? container.decode(Bool.self, forKey: .userExists)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(userExists, forKey: .userExists)
            
        }
        
    }
    
    /*
        Model: ResetPasswordSuccess
        Used By: Catalog
    */
    struct ResetPasswordSuccess: Codable {
        
        var status: String?
        

        enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try? container.decode(String.self, forKey: .status)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
        }
        
    }
    
    /*
        Model: RegisterFormSuccess
        Used By: Catalog
    */
    struct RegisterFormSuccess: Codable {
        
        var resendTimer: Int?
        
        var resendToken: String?
        
        var success: Bool?
        
        var requestId: String?
        
        var message: String?
        
        var mobile: String?
        
        var countryCode: String?
        

        enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: VerifyEmailSuccess
        Used By: Catalog
    */
    struct VerifyEmailSuccess: Codable {
        
        var message: String?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: HasPasswordSuccess
        Used By: Catalog
    */
    struct HasPasswordSuccess: Codable {
        
        var result: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case result = "result"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            result = try? container.decode(Bool.self, forKey: .result)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(result, forKey: .result)
            
        }
        
    }
    
    /*
        Model: LogoutSuccess
        Used By: Catalog
    */
    struct LogoutSuccess: Codable {
        
        var logout: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case logout = "logout"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logout = try? container.decode(Bool.self, forKey: .logout)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logout, forKey: .logout)
            
        }
        
    }
    
    /*
        Model: OtpSuccess
        Used By: Catalog
    */
    struct OtpSuccess: Codable {
        
        var resendTimer: Int?
        
        var resendToken: String?
        
        var success: Bool?
        
        var requestId: String?
        
        var message: String?
        
        var mobile: String?
        
        var countryCode: String?
        

        enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: EmailOtpSuccess
        Used By: Catalog
    */
    struct EmailOtpSuccess: Codable {
        
        var resendToken: String?
        

        enum CodingKeys: String, CodingKey {
            
            case resendToken = "resend_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
        }
        
    }
    
    /*
        Model: SessionListSuccess
        Used By: Catalog
    */
    struct SessionListSuccess: Codable {
        
        var sessions: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case sessions = "sessions"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sessions = try? container.decode([String].self, forKey: .sessions)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sessions, forKey: .sessions)
            
        }
        
    }
    
    /*
        Model: VerifyMobileOTPSuccess
        Used By: Catalog
    */
    struct VerifyMobileOTPSuccess: Codable {
        
        var user: UserSchema?
        
        var verifyMobileLink: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case verifyMobileLink = "verify_mobile_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            verifyMobileLink = try? container.decode(Bool.self, forKey: .verifyMobileLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
            
        }
        
    }
    
    /*
        Model: VerifyEmailOTPSuccess
        Used By: Catalog
    */
    struct VerifyEmailOTPSuccess: Codable {
        
        var user: UserSchema?
        
        var verifyEmailLink: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case verifyEmailLink = "verify_email_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            verifyEmailLink = try? container.decode(Bool.self, forKey: .verifyEmailLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
            
        }
        
    }
    
    /*
        Model: SendMobileVerifyLinkSuccess
        Used By: Catalog
    */
    struct SendMobileVerifyLinkSuccess: Codable {
        
        var verifyMobileLink: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case verifyMobileLink = "verify_mobile_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifyMobileLink = try? container.decode(Bool.self, forKey: .verifyMobileLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
            
        }
        
    }
    
    /*
        Model: SendEmailVerifyLinkSuccess
        Used By: Catalog
    */
    struct SendEmailVerifyLinkSuccess: Codable {
        
        var verifyEmailLink: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case verifyEmailLink = "verify_email_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifyEmailLink = try? container.decode(Bool.self, forKey: .verifyEmailLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
            
        }
        
    }
    
    /*
        Model: UserSearchResponseSchema
        Used By: Catalog
    */
    struct UserSearchResponseSchema: Codable {
        
    }
    
    /*
        Model: CustomerListResponseSchema
        Used By: Catalog
    */
    struct CustomerListResponseSchema: Codable {
        
        var items: [UserSchema]?
        
        var page: PaginationSchema?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([UserSchema].self, forKey: .items)
            
            page = try? container.decode(PaginationSchema.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: PlatformSchema
        Used By: Catalog
    */
    struct PlatformSchema: Codable {
        
        var display: String?
        
        var lookAndFeel: [String: Any]?
        
        var updatedAt: String?
        
        var active: Bool?
        
        var forgotPassword: Bool?
        
        var login: [String: Any]?
        
        var skipCaptcha: Bool?
        
        var name: String?
        
        var meta: [String: Any]?
        
        var id: String?
        
        var social: [String: Any]?
        
        var requiredFields: [String: Any]?
        
        var registerRequiredFields: [String: Any]?
        
        var skipLogin: Bool?
        
        var flashCard: [String: Any]?
        
        var subtext: String?
        
        var socialTokens: [String: Any]?
        
        var createdAt: String?
        
        var register: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case lookAndFeel = "look_and_feel"
            
            case updatedAt = "updated_at"
            
            case active = "active"
            
            case forgotPassword = "forgot_password"
            
            case login = "login"
            
            case skipCaptcha = "skip_captcha"
            
            case name = "name"
            
            case meta = "meta"
            
            case id = "_id"
            
            case social = "social"
            
            case requiredFields = "required_fields"
            
            case registerRequiredFields = "register_required_fields"
            
            case skipLogin = "skip_login"
            
            case flashCard = "flash_card"
            
            case subtext = "subtext"
            
            case socialTokens = "social_tokens"
            
            case createdAt = "created_at"
            
            case register = "register"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            lookAndFeel = try? container.decode([String: Any].self, forKey: .lookAndFeel)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            forgotPassword = try? container.decode(Bool.self, forKey: .forgotPassword)
            
            login = try? container.decode([String: Any].self, forKey: .login)
            
            skipCaptcha = try? container.decode(Bool.self, forKey: .skipCaptcha)
            
            name = try? container.decode(String.self, forKey: .name)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            social = try? container.decode([String: Any].self, forKey: .social)
            
            requiredFields = try? container.decode([String: Any].self, forKey: .requiredFields)
            
            registerRequiredFields = try? container.decode([String: Any].self, forKey: .registerRequiredFields)
            
            skipLogin = try? container.decode(Bool.self, forKey: .skipLogin)
            
            flashCard = try? container.decode([String: Any].self, forKey: .flashCard)
            
            subtext = try? container.decode(String.self, forKey: .subtext)
            
            socialTokens = try? container.decode([String: Any].self, forKey: .socialTokens)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            register = try? container.decode(Bool.self, forKey: .register)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(lookAndFeel, forKey: .lookAndFeel)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(forgotPassword, forKey: .forgotPassword)
            
            try? container.encodeIfPresent(login, forKey: .login)
            
            try? container.encodeIfPresent(skipCaptcha, forKey: .skipCaptcha)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(social, forKey: .social)
            
            try? container.encodeIfPresent(requiredFields, forKey: .requiredFields)
            
            try? container.encodeIfPresent(registerRequiredFields, forKey: .registerRequiredFields)
            
            try? container.encodeIfPresent(skipLogin, forKey: .skipLogin)
            
            try? container.encodeIfPresent(flashCard, forKey: .flashCard)
            
            try? container.encodeIfPresent(subtext, forKey: .subtext)
            
            try? container.encodeIfPresent(socialTokens, forKey: .socialTokens)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(register, forKey: .register)
            
        }
        
    }
    
    /*
        Model: UserSchema
        Used By: Catalog
    */
    struct UserSchema: Codable {
        
        var firstName: String?
        
        var lastName: String?
        
        var phoneNumbers: [[String: Any]]?
        
        var emails: [[String: Any]]?
        
        var gender: String?
        
        var active: Bool?
        
        var profilePicUrl: String?
        
        var username: String?
        
        var accountType: String?
        
        var uid: String?
        
        var debug: [String: Any]?
        
        var hasOldPasswordHash: Bool?
        
        var id: String?
        
        var createdAt: String?
        
        var updatedAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case gender = "gender"
            
            case active = "active"
            
            case profilePicUrl = "profile_pic_url"
            
            case username = "username"
            
            case accountType = "account_type"
            
            case uid = "uid"
            
            case debug = "debug"
            
            case hasOldPasswordHash = "has_old_password_hash"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            phoneNumbers = try? container.decode([[String: Any]].self, forKey: .phoneNumbers)
            
            emails = try? container.decode([[String: Any]].self, forKey: .emails)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            profilePicUrl = try? container.decode(String.self, forKey: .profilePicUrl)
            
            username = try? container.decode(String.self, forKey: .username)
            
            accountType = try? container.decode(String.self, forKey: .accountType)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            debug = try? container.decode([String: Any].self, forKey: .debug)
            
            hasOldPasswordHash = try? container.decode(Bool.self, forKey: .hasOldPasswordHash)
            
            id = try? container.decode(String.self, forKey: .id)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(debug, forKey: .debug)
            
            try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
        }
        
    }
    
    /*
        Model: CommunicationConsentReq
        Used By: Catalog
    */
    struct CommunicationConsentReq: Codable {
        
        var response: String?
        
        var action: String?
        
        var channel: String?
        

        enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
            case action = "action"
            
            case channel = "channel"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            response = try? container.decode(String.self, forKey: .response)
            
            action = try? container.decode(String.self, forKey: .action)
            
            channel = try? container.decode(String.self, forKey: .channel)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
        }
        
    }
    
    /*
        Model: CommunicationConsentRes
        Used By: Catalog
    */
    struct CommunicationConsentRes: Codable {
        
        var appId: String?
        
        var userId: String?
        
        var channels: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case appId = "appId"
            
            case userId = "userId"
            
            case channels = "channels"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            channels = try? container.decode([String: Any].self, forKey: .channels)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
        }
        
    }
    
    /*
        Model: CommunicationConsent
        Used By: Catalog
    */
    struct CommunicationConsent: Codable {
        
        var appId: String?
        
        var userId: String?
        
        var channels: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case appId = "appId"
            
            case userId = "userId"
            
            case channels = "channels"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            channels = try? container.decode([String: Any].self, forKey: .channels)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
        }
        
    }
    
    /*
        Model: PushtokenReq
        Used By: Catalog
    */
    struct PushtokenReq: Codable {
        
        var action: String?
        
        var bundleIdentifier: String?
        
        var pushToken: String?
        
        var uniqueDeviceId: String?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case bundleIdentifier = "bundle_identifier"
            
            case pushToken = "push_token"
            
            case uniqueDeviceId = "unique_device_id"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(String.self, forKey: .action)
            
            bundleIdentifier = try? container.decode(String.self, forKey: .bundleIdentifier)
            
            pushToken = try? container.decode(String.self, forKey: .pushToken)
            
            uniqueDeviceId = try? container.decode(String.self, forKey: .uniqueDeviceId)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
            
            try? container.encodeIfPresent(pushToken, forKey: .pushToken)
            
            try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: PushtokenRes
        Used By: Catalog
    */
    struct PushtokenRes: Codable {
        
        var id: String?
        
        var bundleIdentifier: String?
        
        var pushToken: String?
        
        var uniqueDeviceId: String?
        
        var type: String?
        
        var platform: String?
        
        var applicationId: String?
        
        var userId: String?
        
        var createdAt: String?
        
        var updatedAt: String?
        
        var expiredAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case bundleIdentifier = "bundle_identifier"
            
            case pushToken = "push_token"
            
            case uniqueDeviceId = "unique_device_id"
            
            case type = "type"
            
            case platform = "platform"
            
            case applicationId = "application_id"
            
            case userId = "user_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case expiredAt = "expired_at"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            bundleIdentifier = try? container.decode(String.self, forKey: .bundleIdentifier)
            
            pushToken = try? container.decode(String.self, forKey: .pushToken)
            
            uniqueDeviceId = try? container.decode(String.self, forKey: .uniqueDeviceId)
            
            type = try? container.decode(String.self, forKey: .type)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            expiredAt = try? container.decode(String.self, forKey: .expiredAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
            
            try? container.encodeIfPresent(pushToken, forKey: .pushToken)
            
            try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(expiredAt, forKey: .expiredAt)
            
        }
        
    }
    
    /*
        Model: QRCodeResp
        Used By: Catalog
    */
    struct QRCodeResp: Codable {
        
        var link: String?
        
        var svg: String?
        

        enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case svg = "svg"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            link = try? container.decode(String.self, forKey: .link)
            
            svg = try? container.decode(String.self, forKey: .svg)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            try? container.encodeIfPresent(svg, forKey: .svg)
            
        }
        
    }
    
    /*
        Model: RedirectDevice
        Used By: Catalog
    */
    struct RedirectDevice: Codable {
        
        var link: String
        
        var type: String
        

        enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            link = try container.decode(String.self, forKey: .link)
            
            type = try container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Redirects
        Used By: Catalog
    */
    struct Redirects: Codable {
        
        var ios: RedirectDevice?
        
        var android: RedirectDevice?
        
        var web: [String: Any]?
        
        var forceWeb: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case ios = "ios"
            
            case android = "android"
            
            case web = "web"
            
            case forceWeb = "force_web"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ios = try? container.decode(RedirectDevice.self, forKey: .ios)
            
            android = try? container.decode(RedirectDevice.self, forKey: .android)
            
            web = try? container.decode([String: Any].self, forKey: .web)
            
            forceWeb = try? container.decode(Bool.self, forKey: .forceWeb)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ios, forKey: .ios)
            
            try? container.encodeIfPresent(android, forKey: .android)
            
            try? container.encodeIfPresent(web, forKey: .web)
            
            try? container.encodeIfPresent(forceWeb, forKey: .forceWeb)
            
        }
        
    }
    
    /*
        Model: ShortLinkReq
        Used By: Catalog
    */
    struct ShortLinkReq: Codable {
        
        var title: String
        
        var url: String
        
        var hash: String?
        
        var active: String?
        
        var type: String?
        
        var expireAt: String?
        
        var enableTracking: Bool?
        
        var redirects: Redirects?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case url = "url"
            
            case hash = "hash"
            
            case active = "active"
            
            case type = "type"
            
            case expireAt = "expire_at"
            
            case enableTracking = "enable_tracking"
            
            case redirects = "redirects"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            url = try container.decode(String.self, forKey: .url)
            
            hash = try? container.decode(String.self, forKey: .hash)
            
            active = try? container.decode(String.self, forKey: .active)
            
            type = try? container.decode(String.self, forKey: .type)
            
            expireAt = try? container.decode(String.self, forKey: .expireAt)
            
            enableTracking = try? container.decode(Bool.self, forKey: .enableTracking)
            
            redirects = try? container.decode(Redirects.self, forKey: .redirects)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(hash, forKey: .hash)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            try? container.encodeIfPresent(redirects, forKey: .redirects)
            
        }
        
    }
    
    /*
        Model: ShortLinkRes
        Used By: Catalog
    */
    struct ShortLinkRes: Codable {
        
        var title: String?
        
        var url: [String: Any]?
        
        var createdBy: String?
        
        var personalized: String?
        
        var appRedirect: String?
        
        var fallback: String?
        
        var active: Bool?
        
        var id: String?
        
        var enableTracking: Bool?
        
        var expireAt: Bool?
        
        var application: String?
        
        var userId: Bool?
        
        var createdAt: Bool?
        
        var updatedAt: Bool?
        
        var redirects: Redirects?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case url = "url"
            
            case createdBy = "created_by"
            
            case personalized = "personalized"
            
            case appRedirect = "app_redirect"
            
            case fallback = "fallback"
            
            case active = "active"
            
            case id = "_id"
            
            case enableTracking = "enable_tracking"
            
            case expireAt = "expire_at"
            
            case application = "application"
            
            case userId = "user_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case redirects = "redirects"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try? container.decode(String.self, forKey: .title)
            
            url = try? container.decode([String: Any].self, forKey: .url)
            
            createdBy = try? container.decode(String.self, forKey: .createdBy)
            
            personalized = try? container.decode(String.self, forKey: .personalized)
            
            appRedirect = try? container.decode(String.self, forKey: .appRedirect)
            
            fallback = try? container.decode(String.self, forKey: .fallback)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            id = try? container.decode(String.self, forKey: .id)
            
            enableTracking = try? container.decode(Bool.self, forKey: .enableTracking)
            
            expireAt = try? container.decode(Bool.self, forKey: .expireAt)
            
            application = try? container.decode(String.self, forKey: .application)
            
            userId = try? container.decode(Bool.self, forKey: .userId)
            
            createdAt = try? container.decode(Bool.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(Bool.self, forKey: .updatedAt)
            
            redirects = try? container.decode(Redirects.self, forKey: .redirects)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(personalized, forKey: .personalized)
            
            try? container.encodeIfPresent(appRedirect, forKey: .appRedirect)
            
            try? container.encodeIfPresent(fallback, forKey: .fallback)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(redirects, forKey: .redirects)
            
        }
        
    }
    
    /*
        Model: FailedResponse
        Used By: Catalog
    */
    struct FailedResponse: Codable {
        
        var message: String
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CDN
        Used By: Catalog
    */
    struct CDN: Codable {
        
        var url: String
        

        enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: Upload
        Used By: Catalog
    */
    struct Upload: Codable {
        
        var expiry: Int
        
        var url: String
        

        enum CodingKeys: String, CodingKey {
            
            case expiry = "expiry"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            expiry = try container.decode(Int.self, forKey: .expiry)
            
            url = try container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: StartResponse
        Used By: Catalog
    */
    struct StartResponse: Codable {
        
        var fileName: String
        
        var filePath: String
        
        var contentType: String
        
        var method: String
        
        var namespace: String
        
        var operation: String
        
        var size: Int
        
        var upload: Upload
        
        var cdn: CDN
        

        enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case filePath = "file_path"
            
            case contentType = "content_type"
            
            case method = "method"
            
            case namespace = "namespace"
            
            case operation = "operation"
            
            case size = "size"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            fileName = try container.decode(String.self, forKey: .fileName)
            
            filePath = try container.decode(String.self, forKey: .filePath)
            
            contentType = try container.decode(String.self, forKey: .contentType)
            
            method = try container.decode(String.self, forKey: .method)
            
            namespace = try container.decode(String.self, forKey: .namespace)
            
            operation = try container.decode(String.self, forKey: .operation)
            
            size = try container.decode(Int.self, forKey: .size)
            
            upload = try container.decode(Upload.self, forKey: .upload)
            
            cdn = try container.decode(CDN.self, forKey: .cdn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
        }
        
    }
    
    /*
        Model: StartRequest
        Used By: Catalog
    */
    struct StartRequest: Codable {
        
        var fileName: String
        
        var contentType: String
        
        var size: Int
        
        var tags: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case contentType = "content_type"
            
            case size = "size"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            fileName = try container.decode(String.self, forKey: .fileName)
            
            contentType = try container.decode(String.self, forKey: .contentType)
            
            size = try container.decode(Int.self, forKey: .size)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: CompleteResponse
        Used By: Catalog
    */
    struct CompleteResponse: Codable {
        
        var id: String
        
        var fileName: String
        
        var filePath: String
        
        var contentType: String
        
        var method: String
        
        var namespace: String
        
        var operation: String
        
        var size: Int
        
        var upload: Upload
        
        var cdn: CDN
        
        var success: String
        
        var tags: [String]?
        
        var createdOn: String
        
        var modifiedOn: String
        

        enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case fileName = "file_name"
            
            case filePath = "file_path"
            
            case contentType = "content_type"
            
            case method = "method"
            
            case namespace = "namespace"
            
            case operation = "operation"
            
            case size = "size"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
            case success = "success"
            
            case tags = "tags"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try container.decode(String.self, forKey: .id)
            
            fileName = try container.decode(String.self, forKey: .fileName)
            
            filePath = try container.decode(String.self, forKey: .filePath)
            
            contentType = try container.decode(String.self, forKey: .contentType)
            
            method = try container.decode(String.self, forKey: .method)
            
            namespace = try container.decode(String.self, forKey: .namespace)
            
            operation = try container.decode(String.self, forKey: .operation)
            
            size = try container.decode(Int.self, forKey: .size)
            
            upload = try container.decode(Upload.self, forKey: .upload)
            
            cdn = try container.decode(CDN.self, forKey: .cdn)
            
            success = try container.decode(String.self, forKey: .success)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: AggregatorConfigDetail
        Used By: Catalog
    */
    struct AggregatorConfigDetail: Codable {
        
        var pin: String?
        
        var key: String
        
        var userId: String?
        
        var merchantId: String?
        
        var verifyApi: String?
        
        var configType: String
        
        var sdk: Bool?
        
        var secret: String
        
        var merchantKey: String?
        
        var api: String?
        

        enum CodingKeys: String, CodingKey {
            
            case pin = "pin"
            
            case key = "key"
            
            case userId = "user_id"
            
            case merchantId = "merchant_id"
            
            case verifyApi = "verify_api"
            
            case configType = "config_type"
            
            case sdk = "sdk"
            
            case secret = "secret"
            
            case merchantKey = "merchant_key"
            
            case api = "api"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pin = try? container.decode(String.self, forKey: .pin)
            
            key = try container.decode(String.self, forKey: .key)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            merchantId = try? container.decode(String.self, forKey: .merchantId)
            
            verifyApi = try? container.decode(String.self, forKey: .verifyApi)
            
            configType = try container.decode(String.self, forKey: .configType)
            
            sdk = try? container.decode(Bool.self, forKey: .sdk)
            
            secret = try container.decode(String.self, forKey: .secret)
            
            merchantKey = try? container.decode(String.self, forKey: .merchantKey)
            
            api = try? container.decode(String.self, forKey: .api)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pin, forKey: .pin)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(merchantId, forKey: .merchantId)
            
            try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            try? container.encodeIfPresent(sdk, forKey: .sdk)
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
            
            try? container.encodeIfPresent(api, forKey: .api)
            
        }
        
    }
    
    /*
        Model: AggregatorsConfigDetailResponse
        Used By: Catalog
    */
    struct AggregatorsConfigDetailResponse: Codable {
        
        var razorpay: AggregatorConfigDetail?
        
        var payumoney: AggregatorConfigDetail?
        
        var success: Bool
        
        var ccavenue: AggregatorConfigDetail?
        
        var juspay: AggregatorConfigDetail?
        
        var simpl: AggregatorConfigDetail?
        
        var stripe: AggregatorConfigDetail?
        
        var rupifi: AggregatorConfigDetail?
        
        var mswipe: AggregatorConfigDetail?
        
        var env: String
        

        enum CodingKeys: String, CodingKey {
            
            case razorpay = "razorpay"
            
            case payumoney = "payumoney"
            
            case success = "success"
            
            case ccavenue = "ccavenue"
            
            case juspay = "juspay"
            
            case simpl = "simpl"
            
            case stripe = "stripe"
            
            case rupifi = "rupifi"
            
            case mswipe = "mswipe"
            
            case env = "env"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
            
            payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
            
            juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
            
            simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
            
            stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
            
            rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
            
            mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
            
            env = try container.decode(String.self, forKey: .env)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            try? container.encodeIfPresent(payumoney, forKey: .payumoney)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            try? container.encodeIfPresent(rupifi, forKey: .rupifi)
            
            try? container.encodeIfPresent(mswipe, forKey: .mswipe)
            
            try? container.encodeIfPresent(env, forKey: .env)
            
        }
        
    }
    
    /*
        Model: ErrorCodeAndDescription
        Used By: Catalog
    */
    struct ErrorCodeAndDescription: Codable {
        
        var code: String
        
        var description: String
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try container.decode(String.self, forKey: .code)
            
            description = try container.decode(String.self, forKey: .description)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
        }
        
    }
    
    /*
        Model: HttpErrorCodeAndResponse
        Used By: Catalog
    */
    struct HttpErrorCodeAndResponse: Codable {
        
        var success: Bool
        
        var error: ErrorCodeAndDescription
        

        enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
        }
        
    }
    
    /*
        Model: AttachCardRequest
        Used By: Catalog
    */
    struct AttachCardRequest: Codable {
        
        var refresh: Bool?
        
        var cardId: String
        

        enum CodingKeys: String, CodingKey {
            
            case refresh = "refresh"
            
            case cardId = "card_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            refresh = try? container.decode(Bool.self, forKey: .refresh)
            
            cardId = try container.decode(String.self, forKey: .cardId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(refresh, forKey: .refresh)
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
        }
        
    }
    
    /*
        Model: AttachCardsResponse
        Used By: Catalog
    */
    struct AttachCardsResponse: Codable {
        
        var message: String?
        
        var success: Bool
        
        var data: [String: Any]
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CardPaymentGateway
        Used By: Catalog
    */
    struct CardPaymentGateway: Codable {
        
        var api: String?
        
        var aggregator: String
        
        var customerId: String?
        

        enum CodingKeys: String, CodingKey {
            
            case api = "api"
            
            case aggregator = "aggregator"
            
            case customerId = "customer_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            api = try? container.decode(String.self, forKey: .api)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            customerId = try? container.decode(String.self, forKey: .customerId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(api, forKey: .api)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
        }
        
    }
    
    /*
        Model: ActiveCardPaymentGatewayResponse
        Used By: Catalog
    */
    struct ActiveCardPaymentGatewayResponse: Codable {
        
        var cards: CardPaymentGateway
        
        var message: String
        
        var success: Bool
        

        enum CodingKeys: String, CodingKey {
            
            case cards = "cards"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cards, forKey: .cards)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ListCardsResponse
        Used By: Catalog
    */
    struct ListCardsResponse: Codable {
        
        var message: String
        
        var success: Bool
        
        var data: [[String: Any]]?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try? container.decode([[String: Any]].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: DeletehCardRequest
        Used By: Catalog
    */
    struct DeletehCardRequest: Codable {
        
        var cardId: String
        

        enum CodingKeys: String, CodingKey {
            
            case cardId = "card_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cardId = try container.decode(String.self, forKey: .cardId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
        }
        
    }
    
    /*
        Model: DeleteCardsResponse
        Used By: Catalog
    */
    struct DeleteCardsResponse: Codable {
        
        var message: String?
        
        var success: Bool
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ValidateCustomerRequest
        Used By: Catalog
    */
    struct ValidateCustomerRequest: Codable {
        
        var merchantParams: [String: Any]
        
        var phoneNumber: String
        
        var transactionAmountInPaise: Int
        
        var payload: String
        
        var aggregator: String
        

        enum CodingKeys: String, CodingKey {
            
            case merchantParams = "merchant_params"
            
            case phoneNumber = "phone_number"
            
            case transactionAmountInPaise = "transaction_amount_in_paise"
            
            case payload = "payload"
            
            case aggregator = "aggregator"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
            
            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
            
            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
            
            payload = try container.decode(String.self, forKey: .payload)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: ValidateCustomerResponse
        Used By: Catalog
    */
    struct ValidateCustomerResponse: Codable {
        
        var message: String
        
        var success: Bool
        
        var data: [String: Any]
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: ChargeCustomerRequest
        Used By: Catalog
    */
    struct ChargeCustomerRequest: Codable {
        
        var verified: Bool?
        
        var transactionToken: String?
        
        var orderId: String
        
        var amount: Int
        
        var aggregator: String
        

        enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case transactionToken = "transaction_token"
            
            case orderId = "order_id"
            
            case amount = "amount"
            
            case aggregator = "aggregator"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
            transactionToken = try? container.decode(String.self, forKey: .transactionToken)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: ChargeCustomerResponse
        Used By: Catalog
    */
    struct ChargeCustomerResponse: Codable {
        
        var deliveryAddressId: String?
        
        var status: String
        
        var success: Bool
        
        var message: String
        
        var orderId: String
        
        var cartId: String?
        
        var aggregator: String
        

        enum CodingKeys: String, CodingKey {
            
            case deliveryAddressId = "delivery_address_id"
            
            case status = "status"
            
            case success = "success"
            
            case message = "message"
            
            case orderId = "order_id"
            
            case cartId = "cart_id"
            
            case aggregator = "aggregator"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
            
            status = try container.decode(String.self, forKey: .status)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            message = try container.decode(String.self, forKey: .message)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            cartId = try? container.decode(String.self, forKey: .cartId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: PaymentInitializationRequest
        Used By: Catalog
    */
    struct PaymentInitializationRequest: Codable {
        
        var razorpayPaymentId: String
        
        var method: String
        
        var aggregatorOrderId: String
        
        var pollingUrl: String
        
        var merchantOrderId: String
        
        var timeout: Int
        
        var customerId: String
        
        var virtualId: String?
        
        var aggregator: String
        

        enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case method = "method"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case pollingUrl = "polling_url"
            
            case merchantOrderId = "merchant_order_id"
            
            case timeout = "timeout"
            
            case customerId = "customer_id"
            
            case virtualId = "virtual_id"
            
            case aggregator = "aggregator"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
            
            method = try container.decode(String.self, forKey: .method)
            
            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
            
            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            timeout = try container.decode(Int.self, forKey: .timeout)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            virtualId = try? container.decode(String.self, forKey: .virtualId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(virtualId, forKey: .virtualId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: PaymentInitializationResponse
        Used By: Catalog
    */
    struct PaymentInitializationResponse: Codable {
        
        var contact: String
        
        var currency: String
        
        var status: String
        
        var success: Bool
        
        var method: String
        
        var vpa: String
        
        var message: String?
        
        var orderId: String
        
        var email: String
        
        var amount: Int
        
        var merchantOrderId: String
        
        var customerId: String
        
        var aggregator: String
        

        enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case currency = "currency"
            
            case status = "status"
            
            case success = "success"
            
            case method = "method"
            
            case vpa = "vpa"
            
            case message = "message"
            
            case orderId = "order_id"
            
            case email = "email"
            
            case amount = "amount"
            
            case merchantOrderId = "merchant_order_id"
            
            case customerId = "customer_id"
            
            case aggregator = "aggregator"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            contact = try container.decode(String.self, forKey: .contact)
            
            currency = try container.decode(String.self, forKey: .currency)
            
            status = try container.decode(String.self, forKey: .status)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            method = try container.decode(String.self, forKey: .method)
            
            vpa = try container.decode(String.self, forKey: .vpa)
            
            message = try? container.decode(String.self, forKey: .message)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            email = try container.decode(String.self, forKey: .email)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: PaymentStatusUpdateRequest
        Used By: Catalog
    */
    struct PaymentStatusUpdateRequest: Codable {
        
        var contact: String
        
        var currency: String
        
        var status: String
        
        var method: String
        
        var vpa: String
        
        var orderId: String
        
        var email: String
        
        var amount: Int
        
        var merchantOrderId: String
        
        var customerId: String
        
        var aggregator: String
        

        enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case currency = "currency"
            
            case status = "status"
            
            case method = "method"
            
            case vpa = "vpa"
            
            case orderId = "order_id"
            
            case email = "email"
            
            case amount = "amount"
            
            case merchantOrderId = "merchant_order_id"
            
            case customerId = "customer_id"
            
            case aggregator = "aggregator"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            contact = try container.decode(String.self, forKey: .contact)
            
            currency = try container.decode(String.self, forKey: .currency)
            
            status = try container.decode(String.self, forKey: .status)
            
            method = try container.decode(String.self, forKey: .method)
            
            vpa = try container.decode(String.self, forKey: .vpa)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            email = try container.decode(String.self, forKey: .email)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: PaymentStatusUpdateResponse
        Used By: Catalog
    */
    struct PaymentStatusUpdateResponse: Codable {
        
        var aggregatorName: String
        
        var status: String
        
        var retry: Bool
        

        enum CodingKeys: String, CodingKey {
            
            case aggregatorName = "aggregator_name"
            
            case status = "status"
            
            case retry = "retry"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
            
            status = try container.decode(String.self, forKey: .status)
            
            retry = try container.decode(Bool.self, forKey: .retry)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(retry, forKey: .retry)
            
        }
        
    }
    
    /*
        Model: PaymentOptionsDetails
        Used By: Catalog
    */
    struct PaymentOptionsDetails: Codable {
        
        var paymentOption: [[String: Any]]?
        

        enum CodingKeys: String, CodingKey {
            
            case paymentOption = "payment_option"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentOption = try? container.decode([[String: Any]].self, forKey: .paymentOption)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
            
        }
        
    }
    
    /*
        Model: PaymentOptionsResponse
        Used By: Catalog
    */
    struct PaymentOptionsResponse: Codable {
        
        var success: Bool
        
        var paymentOptions: PaymentOptionsDetails
        

        enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case paymentOptions = "payment_options"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            paymentOptions = try container.decode(PaymentOptionsDetails.self, forKey: .paymentOptions)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryDetails
        Used By: Catalog
    */
    struct OrderBeneficiaryDetails: Codable {
        
        var comment: Bool?
        
        var transferMode: String
        
        var bankName: String
        
        var email: String
        
        var mobile: Bool?
        
        var branchName: Bool?
        
        var modifiedOn: String
        
        var beneficiaryId: String
        
        var address: String
        
        var subtitle: String
        
        var isActive: Bool
        
        var title: String
        
        var ifscCode: String
        
        var id: Int
        
        var createdOn: String
        
        var accountNo: String
        
        var accountHolder: String
        
        var displayName: String
        
        var delightsUserName: String
        

        enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case transferMode = "transfer_mode"
            
            case bankName = "bank_name"
            
            case email = "email"
            
            case mobile = "mobile"
            
            case branchName = "branch_name"
            
            case modifiedOn = "modified_on"
            
            case beneficiaryId = "beneficiary_id"
            
            case address = "address"
            
            case subtitle = "subtitle"
            
            case isActive = "is_active"
            
            case title = "title"
            
            case ifscCode = "ifsc_code"
            
            case id = "id"
            
            case createdOn = "created_on"
            
            case accountNo = "account_no"
            
            case accountHolder = "account_holder"
            
            case displayName = "display_name"
            
            case delightsUserName = "delights_user_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            comment = try? container.decode(Bool.self, forKey: .comment)
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            email = try container.decode(String.self, forKey: .email)
            
            mobile = try? container.decode(Bool.self, forKey: .mobile)
            
            branchName = try? container.decode(Bool.self, forKey: .branchName)
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            address = try container.decode(String.self, forKey: .address)
            
            subtitle = try container.decode(String.self, forKey: .subtitle)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            title = try container.decode(String.self, forKey: .title)
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            id = try container.decode(Int.self, forKey: .id)
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryResponse
        Used By: Catalog
    */
    struct OrderBeneficiaryResponse: Codable {
        
        var beneficiaries: [OrderBeneficiaryDetails]
        

        enum CodingKeys: String, CodingKey {
            
            case beneficiaries = "beneficiaries"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(beneficiaries, forKey: .beneficiaries)
            
        }
        
    }
    
    /*
        Model: NotFoundResourceError
        Used By: Catalog
    */
    struct NotFoundResourceError: Codable {
        
        var code: String
        
        var description: String
        
        var success: Bool
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try container.decode(String.self, forKey: .code)
            
            description = try container.decode(String.self, forKey: .description)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: IfscCodeResponse
        Used By: Catalog
    */
    struct IfscCodeResponse: Codable {
        
        var branchName: String
        
        var success: Bool?
        
        var bankName: String
        

        enum CodingKeys: String, CodingKey {
            
            case branchName = "branch_name"
            
            case success = "success"
            
            case bankName = "bank_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
        Used By: Catalog
    */
    struct ErrorCodeDescription: Codable {
        
        var code: String
        
        var description: String
        
        var success: Bool
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try container.decode(String.self, forKey: .code)
            
            description = try container.decode(String.self, forKey: .description)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryViaOtpVerificationRequest
        Used By: Catalog
    */
    struct AddBeneficiaryViaOtpVerificationRequest: Codable {
        
        var otp: String
        
        var hashKey: String
        
        var requestId: String
        

        enum CodingKeys: String, CodingKey {
            
            case otp = "otp"
            
            case hashKey = "hash_key"
            
            case requestId = "request_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            otp = try container.decode(String.self, forKey: .otp)
            
            hashKey = try container.decode(String.self, forKey: .hashKey)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryViaOtpVerificationResponse
        Used By: Catalog
    */
    struct AddBeneficiaryViaOtpVerificationResponse: Codable {
        
        var otp: String
        
        var hashKey: String
        
        var requestId: String
        

        enum CodingKeys: String, CodingKey {
            
            case otp = "otp"
            
            case hashKey = "hash_key"
            
            case requestId = "request_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            otp = try container.decode(String.self, forKey: .otp)
            
            hashKey = try container.decode(String.self, forKey: .hashKey)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
        }
        
    }
    
    /*
        Model: WrongOtpError
        Used By: Catalog
    */
    struct WrongOtpError: Codable {
        
        var description: String
        
        var success: String
        

        enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try container.decode(String.self, forKey: .description)
            
            success = try container.decode(String.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: BankDetails
        Used By: Catalog
    */
    struct BankDetails: Codable {
        
        var comment: String?
        
        var address: String
        
        var email: String
        
        var ifscCode: String
        
        var mobile: String
        
        var branchName: String
        
        var bankName: String
        
        var accountNo: String
        
        var accountHolder: String
        

        enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case address = "address"
            
            case email = "email"
            
            case ifscCode = "ifsc_code"
            
            case mobile = "mobile"
            
            case branchName = "branch_name"
            
            case bankName = "bank_name"
            
            case accountNo = "account_no"
            
            case accountHolder = "account_holder"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            comment = try? container.decode(String.self, forKey: .comment)
            
            address = try container.decode(String.self, forKey: .address)
            
            email = try container.decode(String.self, forKey: .email)
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            mobile = try container.decode(String.self, forKey: .mobile)
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Catalog
    */
    struct AddBeneficiaryDetailsRequest: Codable {
        
        var transferMode: String
        
        var orderId: String
        
        var shipmentId: String
        
        var details: BankDetails
        
        var delights: Bool
        

        enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case orderId = "order_id"
            
            case shipmentId = "shipment_id"
            
            case details = "details"
            
            case delights = "delights"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            details = try container.decode(BankDetails.self, forKey: .details)
            
            delights = try container.decode(Bool.self, forKey: .delights)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
        }
        
    }
    
    /*
        Model: RefundAccountResponse
        Used By: Catalog
    */
    struct RefundAccountResponse: Codable {
        
        var message: String
        
        var success: Bool
        
        var data: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: WalletOtpRequest
        Used By: Catalog
    */
    struct WalletOtpRequest: Codable {
        
        var mobile: Bool
        
        var countryCode: String
        

        enum CodingKeys: String, CodingKey {
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mobile = try container.decode(Bool.self, forKey: .mobile)
            
            countryCode = try container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: WalletOtpResponse
        Used By: Catalog
    */
    struct WalletOtpResponse: Codable {
        
        var success: Bool?
        
        var isVerifiedFlag: String
        
        var requestId: String
        

        enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isVerifiedFlag = "is_verified_flag"
            
            case requestId = "request_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
        }
        
    }
    
    /*
        Model: SetDefaultBeneficiaryRequest
        Used By: Catalog
    */
    struct SetDefaultBeneficiaryRequest: Codable {
        
        var beneficiaryId: String
        
        var orderId: String
        

        enum CodingKeys: String, CodingKey {
            
            case beneficiaryId = "beneficiary_id"
            
            case orderId = "order_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
        }
        
    }
    
    /*
        Model: SetDefaultBeneficiaryResponse
        Used By: Catalog
    */
    struct SetDefaultBeneficiaryResponse: Codable {
        
        var isBeneficiarySet: Bool
        
        var success: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case isBeneficiarySet = "is_beneficiary_set"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ApefaceApiError
        Used By: Catalog
    */
    struct ApefaceApiError: Codable {
        
        var message: String?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: OrderById
        Used By: Catalog
    */
    struct OrderById: Codable {
        
        var order: [String: Any]
        

        enum CodingKeys: String, CodingKey {
            
            case order = "order"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            order = try container.decode([String: Any].self, forKey: .order)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(order, forKey: .order)
            
        }
        
    }
    
    /*
        Model: OrderList
        Used By: Catalog
    */
    struct OrderList: Codable {
        
        var orders: [[String: Any]]
        
        var page: [String: Any]
        

        enum CodingKeys: String, CodingKey {
            
            case orders = "orders"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            orders = try container.decode([[String: Any]].self, forKey: .orders)
            
            page = try container.decode([String: Any].self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(orders, forKey: .orders)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ShipmentById
        Used By: Catalog
    */
    struct ShipmentById: Codable {
        
        var shipment: [String: Any]
        

        enum CodingKeys: String, CodingKey {
            
            case shipment = "shipment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipment = try container.decode([String: Any].self, forKey: .shipment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
        }
        
    }
    
    /*
        Model: ShipmentReasons
        Used By: Catalog
    */
    struct ShipmentReasons: Codable {
        
        var reasons: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            reasons = try container.decode([[String: Any]].self, forKey: .reasons)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
        }
        
    }
    
    /*
        Model: ShipmentStatusUpdateBody
        Used By: Catalog
    */
    struct ShipmentStatusUpdateBody: Codable {
        
        var shipments: [String: Any]
        
        var forceTransition: Bool
        
        var task: Bool
        

        enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case forceTransition = "force_transition"
            
            case task = "task"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipments = try container.decode([String: Any].self, forKey: .shipments)
            
            forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
            
            task = try container.decode(Bool.self, forKey: .task)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
            
            try? container.encodeIfPresent(task, forKey: .task)
            
        }
        
    }
    
    /*
        Model: ShipmentStatusUpdate
        Used By: Catalog
    */
    struct ShipmentStatusUpdate: Codable {
        
        var shipments: [String: Any]
        

        enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipments = try container.decode([String: Any].self, forKey: .shipments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
        }
        
    }
    
    /*
        Model: ShipmentTrack
        Used By: Catalog
    */
    struct ShipmentTrack: Codable {
        
        var results: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case results = "results"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            results = try container.decode([[String: Any]].self, forKey: .results)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(results, forKey: .results)
            
        }
        
    }
    
    /*
        Model: Article
        Used By: Catalog
    */
    struct Article: Codable {
        
        var id: String?
        
        var points: Double?
        
        var price: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case points = "points"
            
            case price = "price"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            points = try? container.decode(Double.self, forKey: .points)
            
            price = try? container.decode(Double.self, forKey: .price)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
        }
        
    }
    
    /*
        Model: CatalogueOrderRequest
        Used By: Catalog
    */
    struct CatalogueOrderRequest: Codable {
        
        var articles: [Article]?
        

        enum CodingKeys: String, CodingKey {
            
            case articles = "articles"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articles = try? container.decode([Article].self, forKey: .articles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
        }
        
    }
    
    /*
        Model: CatalogueOrderResponse
        Used By: Catalog
    */
    struct CatalogueOrderResponse: Codable {
        
        var articles: [Article]?
        

        enum CodingKeys: String, CodingKey {
            
            case articles = "articles"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articles = try? container.decode([Article].self, forKey: .articles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
        }
        
    }
    
    /*
        Model: CursorPage
        Used By: Catalog
    */
    struct CursorPage: Codable {
        
        var hasNext: Bool?
        
        var hasPrevious: Bool?
        
        var itemTotal: Int?
        
        var nextId: String?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case hasNext = "has_next"
            
            case hasPrevious = "has_previous"
            
            case itemTotal = "item_total"
            
            case nextId = "next_id"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            nextId = try? container.decode(String.self, forKey: .nextId)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Discount
        Used By: Catalog
    */
    struct Discount: Codable {
        
        var absolute: Double?
        
        var currency: String?
        
        var displayAbsolute: String?
        
        var displayPercent: String?
        
        var percent: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case absolute = "absolute"
            
            case currency = "currency"
            
            case displayAbsolute = "display_absolute"
            
            case displayPercent = "display_percent"
            
            case percent = "percent"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            absolute = try? container.decode(Double.self, forKey: .absolute)
            
            currency = try? container.decode(String.self, forKey: .currency)
            
            displayAbsolute = try? container.decode(String.self, forKey: .displayAbsolute)
            
            displayPercent = try? container.decode(String.self, forKey: .displayPercent)
            
            percent = try? container.decode(Double.self, forKey: .percent)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(absolute, forKey: .absolute)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(displayAbsolute, forKey: .displayAbsolute)
            
            try? container.encodeIfPresent(displayPercent, forKey: .displayPercent)
            
            try? container.encodeIfPresent(percent, forKey: .percent)
            
        }
        
    }
    
    /*
        Model: Error
        Used By: Catalog
    */
    struct Error: Codable {
        
        var code: Int?
        
        var exception: String?
        
        var info: String?
        
        var message: String?
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case exception = "exception"
            
            case info = "info"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(Int.self, forKey: .code)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            info = try? container.decode(String.self, forKey: .info)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: Offer
        Used By: Catalog
    */
    struct Offer: Codable {
        
        var schedule: String?
        
        var active: Bool?
        
        var applicationId: String?
        
        var bannerImage: Asset?
        
        var createdAt: String?
        
        var infoAction: Action?
        
        var name: String?
        
        var rule: [String: Any]?
        
        var share: ShareMessages?
        
        var subText: String?
        
        var text: String?
        
        var type: String?
        
        var updatedAt: String?
        
        var updatedBy: String?
        
        var url: String?
        

        enum CodingKeys: String, CodingKey {
            
            case schedule = "_schedule"
            
            case active = "active"
            
            case applicationId = "application_id"
            
            case bannerImage = "banner_image"
            
            case createdAt = "created_at"
            
            case infoAction = "info_action"
            
            case name = "name"
            
            case rule = "rule"
            
            case share = "share"
            
            case subText = "sub_text"
            
            case text = "text"
            
            case type = "type"
            
            case updatedAt = "updated_at"
            
            case updatedBy = "updated_by"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            schedule = try? container.decode(String.self, forKey: .schedule)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            bannerImage = try? container.decode(Asset.self, forKey: .bannerImage)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            infoAction = try? container.decode(Action.self, forKey: .infoAction)
            
            name = try? container.decode(String.self, forKey: .name)
            
            rule = try? container.decode([String: Any].self, forKey: .rule)
            
            share = try? container.decode(ShareMessages.self, forKey: .share)
            
            subText = try? container.decode(String.self, forKey: .subText)
            
            text = try? container.decode(String.self, forKey: .text)
            
            type = try? container.decode(String.self, forKey: .type)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            updatedBy = try? container.decode(String.self, forKey: .updatedBy)
            
            url = try? container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(bannerImage, forKey: .bannerImage)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(infoAction, forKey: .infoAction)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            try? container.encodeIfPresent(share, forKey: .share)
            
            try? container.encodeIfPresent(subText, forKey: .subText)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: OrderDiscountRequest
        Used By: Catalog
    */
    struct OrderDiscountRequest: Codable {
        
        var currency: String?
        
        var orderAmount: Double
        

        enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case orderAmount = "order_amount"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currency = try? container.decode(String.self, forKey: .currency)
            
            orderAmount = try container.decode(Double.self, forKey: .orderAmount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
            
        }
        
    }
    
    /*
        Model: OrderDiscountResponse
        Used By: Catalog
    */
    struct OrderDiscountResponse: Codable {
        
        var appliedRuleBucket: OrderDiscountRuleBucket?
        
        var baseDiscount: Discount?
        
        var discount: Discount?
        
        var orderAmount: Double?
        
        var points: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case appliedRuleBucket = "applied_rule_bucket"
            
            case baseDiscount = "base_discount"
            
            case discount = "discount"
            
            case orderAmount = "order_amount"
            
            case points = "points"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appliedRuleBucket = try? container.decode(OrderDiscountRuleBucket.self, forKey: .appliedRuleBucket)
            
            baseDiscount = try? container.decode(Discount.self, forKey: .baseDiscount)
            
            discount = try? container.decode(Discount.self, forKey: .discount)
            
            orderAmount = try? container.decode(Double.self, forKey: .orderAmount)
            
            points = try? container.decode(Double.self, forKey: .points)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appliedRuleBucket, forKey: .appliedRuleBucket)
            
            try? container.encodeIfPresent(baseDiscount, forKey: .baseDiscount)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
        }
        
    }
    
    /*
        Model: OrderDiscountRuleBucket
        Used By: Catalog
    */
    struct OrderDiscountRuleBucket: Codable {
        
        var high: Double?
        
        var low: Double?
        
        var max: Double?
        
        var value: Double?
        
        var valueType: String?
        

        enum CodingKeys: String, CodingKey {
            
            case high = "high"
            
            case low = "low"
            
            case max = "max"
            
            case value = "value"
            
            case valueType = "value_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            high = try? container.decode(Double.self, forKey: .high)
            
            low = try? container.decode(Double.self, forKey: .low)
            
            max = try? container.decode(Double.self, forKey: .max)
            
            value = try? container.decode(Double.self, forKey: .value)
            
            valueType = try? container.decode(String.self, forKey: .valueType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(high, forKey: .high)
            
            try? container.encodeIfPresent(low, forKey: .low)
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(valueType, forKey: .valueType)
            
        }
        
    }
    
    /*
        Model: PointsHistory
        Used By: Catalog
    */
    struct PointsHistory: Codable {
        
        var id: String?
        
        var applicationId: String?
        
        var claimed: Bool?
        
        var createdAt: String?
        
        var expiresOn: String?
        
        var meta: String?
        
        var points: Double?
        
        var remainingPoints: Double?
        
        var text1: String?
        
        var text2: String?
        
        var text3: String?
        
        var txnName: String?
        
        var updatedAt: String?
        
        var userId: String?
        

        enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case claimed = "claimed"
            
            case createdAt = "created_at"
            
            case expiresOn = "expires_on"
            
            case meta = "meta"
            
            case points = "points"
            
            case remainingPoints = "remaining_points"
            
            case text1 = "text_1"
            
            case text2 = "text_2"
            
            case text3 = "text_3"
            
            case txnName = "txn_name"
            
            case updatedAt = "updated_at"
            
            case userId = "user_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            claimed = try? container.decode(Bool.self, forKey: .claimed)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            expiresOn = try? container.decode(String.self, forKey: .expiresOn)
            
            meta = try? container.decode(String.self, forKey: .meta)
            
            points = try? container.decode(Double.self, forKey: .points)
            
            remainingPoints = try? container.decode(Double.self, forKey: .remainingPoints)
            
            text1 = try? container.decode(String.self, forKey: .text1)
            
            text2 = try? container.decode(String.self, forKey: .text2)
            
            text3 = try? container.decode(String.self, forKey: .text3)
            
            txnName = try? container.decode(String.self, forKey: .txnName)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(claimed, forKey: .claimed)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            try? container.encodeIfPresent(remainingPoints, forKey: .remainingPoints)
            
            try? container.encodeIfPresent(text1, forKey: .text1)
            
            try? container.encodeIfPresent(text2, forKey: .text2)
            
            try? container.encodeIfPresent(text3, forKey: .text3)
            
            try? container.encodeIfPresent(txnName, forKey: .txnName)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
        }
        
    }
    
    /*
        Model: PointsHistoryResponse
        Used By: Catalog
    */
    struct PointsHistoryResponse: Codable {
        
        var history: [PointsHistory]?
        
        var page: CursorPage?
        

        enum CodingKeys: String, CodingKey {
            
            case history = "history"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            history = try? container.decode([PointsHistory].self, forKey: .history)
            
            page = try? container.decode(CursorPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(history, forKey: .history)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: PointsResponse
        Used By: Catalog
    */
    struct PointsResponse: Codable {
        
        var points: Double?
        

        enum CodingKeys: String, CodingKey {
            
            case points = "points"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            points = try? container.decode(Double.self, forKey: .points)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
        }
        
    }
    
    /*
        Model: RedeemReferralCodeRequest
        Used By: Catalog
    */
    struct RedeemReferralCodeRequest: Codable {
        
        var deviceId: String
        
        var referralCode: String
        

        enum CodingKeys: String, CodingKey {
            
            case deviceId = "device_id"
            
            case referralCode = "referral_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deviceId = try container.decode(String.self, forKey: .deviceId)
            
            referralCode = try container.decode(String.self, forKey: .referralCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
            
        }
        
    }
    
    /*
        Model: RedeemReferralCodeResponse
        Used By: Catalog
    */
    struct RedeemReferralCodeResponse: Codable {
        
        var message: String?
        
        var points: Double?
        
        var redeemed: Bool?
        
        var referrerId: String?
        
        var referrerInfo: String?
        

        enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case points = "points"
            
            case redeemed = "redeemed"
            
            case referrerId = "referrer_id"
            
            case referrerInfo = "referrer_info"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            points = try? container.decode(Double.self, forKey: .points)
            
            redeemed = try? container.decode(Bool.self, forKey: .redeemed)
            
            referrerId = try? container.decode(String.self, forKey: .referrerId)
            
            referrerInfo = try? container.decode(String.self, forKey: .referrerInfo)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            try? container.encodeIfPresent(redeemed, forKey: .redeemed)
            
            try? container.encodeIfPresent(referrerId, forKey: .referrerId)
            
            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)
            
        }
        
    }
    
    /*
        Model: ReferralDetailsResponse
        Used By: Catalog
    */
    struct ReferralDetailsResponse: Codable {
        
        var referral: Offer?
        
        var referrerInfo: String?
        
        var share: ShareMessages?
        
        var user: [String: Any]?
        

        enum CodingKeys: String, CodingKey {
            
            case referral = "referral"
            
            case referrerInfo = "referrer_info"
            
            case share = "share"
            
            case user = "user"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            referral = try? container.decode(Offer.self, forKey: .referral)
            
            referrerInfo = try? container.decode(String.self, forKey: .referrerInfo)
            
            share = try? container.decode(ShareMessages.self, forKey: .share)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(referral, forKey: .referral)
            
            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)
            
            try? container.encodeIfPresent(share, forKey: .share)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: ShareMessages
        Used By: Catalog
    */
    struct ShareMessages: Codable {
        
        var email: String?
        
        var facebook: String?
        
        var fallback: String?
        
        var message: String?
        
        var messenger: String?
        
        var sms: String?
        
        var text: String?
        
        var twitter: String?
        
        var whatsapp: String?
        

        enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case facebook = "facebook"
            
            case fallback = "fallback"
            
            case message = "message"
            
            case messenger = "messenger"
            
            case sms = "sms"
            
            case text = "text"
            
            case twitter = "twitter"
            
            case whatsapp = "whatsapp"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            facebook = try? container.decode(String.self, forKey: .facebook)
            
            fallback = try? container.decode(String.self, forKey: .fallback)
            
            message = try? container.decode(String.self, forKey: .message)
            
            messenger = try? container.decode(String.self, forKey: .messenger)
            
            sms = try? container.decode(String.self, forKey: .sms)
            
            text = try? container.decode(String.self, forKey: .text)
            
            twitter = try? container.decode(String.self, forKey: .twitter)
            
            whatsapp = try? container.decode(String.self, forKey: .whatsapp)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(facebook, forKey: .facebook)
            
            try? container.encodeIfPresent(fallback, forKey: .fallback)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(messenger, forKey: .messenger)
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(twitter, forKey: .twitter)
            
            try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
            
        }
        
    }
    
    /*
        Model: Access
        Used By: Catalog
    */
    struct Access: Codable {
        
        var answer: Bool?
        
        var askQuestion: Bool?
        
        var comment: Bool?
        
        var rnr: Bool?
        

        enum CodingKeys: String, CodingKey {
            
            case answer = "answer"
            
            case askQuestion = "ask_question"
            
            case comment = "comment"
            
            case rnr = "rnr"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            answer = try? container.decode(Bool.self, forKey: .answer)
            
            askQuestion = try? container.decode(Bool.self, forKey: .askQuestion)
            
            comment = try? container.decode(Bool.self, forKey: .comment)
            
            rnr = try? container.decode(Bool.self, forKey: .rnr)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(answer, forKey: .answer)
            
            try? container.encodeIfPresent(askQuestion, forKey: .askQuestion)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(rnr, forKey: .rnr)
            
        }
        
    }
    
    /*
        Model: AddMediaListRequest
        Used By: Catalog
    */
    struct AddMediaListRequest: Codable {
        
        var entityId: String?
        
        var entityType: String?
        
        var mediaList: [AddMediaRequest]?
        
        var refId: String?
        
        var refType: String?
        

        enum CodingKeys: String, CodingKey {
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaList = "media_list"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            mediaList = try? container.decode([AddMediaRequest].self, forKey: .mediaList)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(mediaList, forKey: .mediaList)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
        }
        
    }
    
    /*
        Model: AddMediaRequest
        Used By: Catalog
    */
    struct AddMediaRequest: Codable {
        
        var cloudId: String?
        
        var cloudName: String?
        
        var cloudProvider: String?
        
        var entityId: String?
        
        var entityType: String?
        
        var mediaUrl: String?
        
        var refId: String?
        
        var refType: String?
        
        var tags: [String]?
        
        var thumbnailUrl: String?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case cloudId = "cloud_id"
            
            case cloudName = "cloud_name"
            
            case cloudProvider = "cloud_provider"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaUrl = "media_url"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
            case tags = "tags"
            
            case thumbnailUrl = "thumbnail_url"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cloudId = try? container.decode(String.self, forKey: .cloudId)
            
            cloudName = try? container.decode(String.self, forKey: .cloudName)
            
            cloudProvider = try? container.decode(String.self, forKey: .cloudProvider)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            mediaUrl = try? container.decode(String.self, forKey: .mediaUrl)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            thumbnailUrl = try? container.decode(String.self, forKey: .thumbnailUrl)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cloudId, forKey: .cloudId)
            
            try? container.encodeIfPresent(cloudName, forKey: .cloudName)
            
            try? container.encodeIfPresent(cloudProvider, forKey: .cloudProvider)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(mediaUrl, forKey: .mediaUrl)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Attribute
        Used By: Catalog
    */
    struct Attribute: Codable {
        
        var createdOn: String?
        
        var description: String?
        
        var id: String?
        
        var modifiedOn: String?
        
        var name: String?
        
        var slug: String?
        
        var tags: [TagMeta]?
        

        enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case description = "description"
            
            case id = "id"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case slug = "slug"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            description = try? container.decode(String.self, forKey: .description)
            
            id = try? container.decode(String.self, forKey: .id)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            tags = try? container.decode([TagMeta].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: AttributeObject
        Used By: Catalog
    */
    struct AttributeObject: Codable {
        
        var description: String?
        
        var name: String
        
        var slug: String?
        
        var title: String?
        
        var type: String
        
        var value: Double
        

        enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
            case title = "title"
            
            case type = "type"
            
            case value = "value"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            name = try container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            title = try? container.decode(String.self, forKey: .title)
            
            type = try container.decode(String.self, forKey: .type)
            
            value = try container.decode(Double.self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: CheckEligibilityResponse
        Used By: Catalog
    */
    struct CheckEligibilityResponse: Codable {
        
        var access: Access?
        
        var mediaCloud: MediaCloud?
        

        enum CodingKeys: String, CodingKey {
            
            case access = "access"
            
            case mediaCloud = "media_cloud"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            access = try? container.decode(Access.self, forKey: .access)
            
            mediaCloud = try? container.decode(MediaCloud.self, forKey: .mediaCloud)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(access, forKey: .access)
            
            try? container.encodeIfPresent(mediaCloud, forKey: .mediaCloud)
            
        }
        
    }
    
    /*
        Model: Cloud
        Used By: Catalog
    */
    struct Cloud: Codable {
        
        var id: String?
        
        var name: String?
        
        var provider: String?
        

        enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case provider = "provider"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            name = try? container.decode(String.self, forKey: .name)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
        }
        
    }
    
    /*
        Model: CommentRequest
        Used By: Catalog
    */
    struct CommentRequest: Codable {
        
        var comment: [String]
        
        var entityId: String
        
        var entityType: String
        

        enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            comment = try container.decode([String].self, forKey: .comment)
            
            entityId = try container.decode(String.self, forKey: .entityId)
            
            entityType = try container.decode(String.self, forKey: .entityType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
        }
        
    }
    
    /*
        Model: CreateQNARequest
        Used By: Catalog
    */
    struct CreateQNARequest: Codable {
        
        var choices: [String]?
        
        var entityId: String
        
        var entityType: String
        
        var maxLen: Int?
        
        var sortPriority: Int?
        
        var tags: [String]?
        
        var text: String
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case choices = "choices"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case maxLen = "max_len"
            
            case sortPriority = "sort_priority"
            
            case tags = "tags"
            
            case text = "text"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            choices = try? container.decode([String].self, forKey: .choices)
            
            entityId = try container.decode(String.self, forKey: .entityId)
            
            entityType = try container.decode(String.self, forKey: .entityType)
            
            maxLen = try? container.decode(Int.self, forKey: .maxLen)
            
            sortPriority = try? container.decode(Int.self, forKey: .sortPriority)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            text = try container.decode(String.self, forKey: .text)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(choices, forKey: .choices)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(maxLen, forKey: .maxLen)
            
            try? container.encodeIfPresent(sortPriority, forKey: .sortPriority)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: DeviceMeta
        Used By: Catalog
    */
    struct DeviceMeta: Codable {
        
        var appVersion: String?
        
        var platform: String?
        

        enum CodingKeys: String, CodingKey {
            
            case appVersion = "app_version"
            
            case platform = "platform"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appVersion = try? container.decode(String.self, forKey: .appVersion)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appVersion, forKey: .appVersion)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
        }
        
    }
    
    /*
        Model: MediaCloud
        Used By: Catalog
    */
    struct MediaCloud: Codable {
        
        var key: String?
        
        var name: String?
        
        var namespace: String?
        
        var path: String?
        
        var provider: String?
        
        var secret: String?
        

        enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case name = "name"
            
            case namespace = "namespace"
            
            case path = "path"
            
            case provider = "provider"
            
            case secret = "secret"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try? container.decode(String.self, forKey: .key)
            
            name = try? container.decode(String.self, forKey: .name)
            
            namespace = try? container.decode(String.self, forKey: .namespace)
            
            path = try? container.decode(String.self, forKey: .path)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
            secret = try? container.decode(String.self, forKey: .secret)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
        }
        
    }
    
    /*
        Model: MediaMeta
        Used By: Catalog
    */
    struct MediaMeta: Codable {
        
        var cloud: Cloud?
        
        var comment: [String]?
        
        var description: String?
        
        var id: String?
        
        var type: String?
        
        var url: Url?
        

        enum CodingKeys: String, CodingKey {
            
            case cloud = "cloud"
            
            case comment = "comment"
            
            case description = "description"
            
            case id = "id"
            
            case type = "type"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cloud = try? container.decode(Cloud.self, forKey: .cloud)
            
            comment = try? container.decode([String].self, forKey: .comment)
            
            description = try? container.decode(String.self, forKey: .description)
            
            id = try? container.decode(String.self, forKey: .id)
            
            type = try? container.decode(String.self, forKey: .type)
            
            url = try? container.decode(Url.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cloud, forKey: .cloud)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: PageCursor
        Used By: Catalog
    */
    struct PageCursor: Codable {
        
        var hasNext: Bool?
        
        var hasPrevious: Bool?
        
        var itemTotal: Int?
        
        var nextId: String?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case hasNext = "has_next"
            
            case hasPrevious = "has_previous"
            
            case itemTotal = "item_total"
            
            case nextId = "next_id"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            nextId = try? container.decode(String.self, forKey: .nextId)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: PageNumber
        Used By: Catalog
    */
    struct PageNumber: Codable {
        
        var current: Int?
        
        var hasNext: Bool?
        
        var itemTotal: Int?
        
        var size: Int?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
            case size = "size"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ReportAbuseRequest
        Used By: Catalog
    */
    struct ReportAbuseRequest: Codable {
        
        var description: String?
        
        var entityId: String
        
        var entityType: String
        

        enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            entityId = try container.decode(String.self, forKey: .entityId)
            
            entityType = try container.decode(String.self, forKey: .entityType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
        }
        
    }
    
    /*
        Model: SaveAttributeRequest
        Used By: Catalog
    */
    struct SaveAttributeRequest: Codable {
        
        var description: String?
        
        var name: String
        
        var slug: String
        

        enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            name = try container.decode(String.self, forKey: .name)
            
            slug = try container.decode(String.self, forKey: .slug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
        }
        
    }
    
    /*
        Model: TagMeta
        Used By: Catalog
    */
    struct TagMeta: Codable {
        
        var media: [MediaMeta]?
        
        var name: String?
        
        var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case media = "media"
            
            case name = "name"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            media = try? container.decode([MediaMeta].self, forKey: .media)
            
            name = try? container.decode(String.self, forKey: .name)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: UpdateAbuseStatusRequest
        Used By: Catalog
    */
    struct UpdateAbuseStatusRequest: Codable {
        
        var abusive: Bool?
        
        var active: Bool?
        
        var approve: Bool?
        
        var description: String?
        
        var entityId: String?
        
        var entityType: String?
        
        var id: String?
        

        enum CodingKeys: String, CodingKey {
            
            case abusive = "abusive"
            
            case active = "active"
            
            case approve = "approve"
            
            case description = "description"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case id = "id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            abusive = try? container.decode(Bool.self, forKey: .abusive)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            description = try? container.decode(String.self, forKey: .description)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            id = try? container.decode(String.self, forKey: .id)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(abusive, forKey: .abusive)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
        }
        
    }
    
    /*
        Model: UpdateAttributeRequest
        Used By: Catalog
    */
    struct UpdateAttributeRequest: Codable {
        
        var description: String?
        
        var name: String
        
        var slug: String?
        

        enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            name = try container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
        }
        
    }
    
    /*
        Model: UpdateCommentRequest
        Used By: Catalog
    */
    struct UpdateCommentRequest: Codable {
        
        var active: Bool?
        
        var approve: Bool?
        
        var comment: [String]
        
        var id: String
        

        enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case approve = "approve"
            
            case comment = "comment"
            
            case id = "id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            comment = try container.decode([String].self, forKey: .comment)
            
            id = try container.decode(String.self, forKey: .id)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
        }
        
    }
    
    /*
        Model: UpdateMediaListRequest
        Used By: Catalog
    */
    struct UpdateMediaListRequest: Codable {
        
        var approve: Bool?
        
        var archive: Bool?
        
        var entityType: String?
        
        var ids: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case approve = "approve"
            
            case archive = "archive"
            
            case entityType = "entity_type"
            
            case ids = "ids"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            ids = try? container.decode([String].self, forKey: .ids)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(ids, forKey: .ids)
            
        }
        
    }
    
    /*
        Model: UpdateQNARequest
        Used By: Catalog
    */
    struct UpdateQNARequest: Codable {
        
        var active: Bool?
        
        var approve: Bool?
        
        var choices: [String]?
        
        var id: String?
        
        var tags: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case approve = "approve"
            
            case choices = "choices"
            
            case id = "id"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            choices = try? container.decode([String].self, forKey: .choices)
            
            id = try? container.decode(String.self, forKey: .id)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(choices, forKey: .choices)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: UpdateReviewRequest
        Used By: Catalog
    */
    struct UpdateReviewRequest: Codable {
        
        var active: Bool?
        
        var application: String?
        
        var approve: Bool?
        
        var archive: Bool?
        
        var attributesRating: [AttributeObject]?
        
        var description: String?
        
        var deviceMeta: DeviceMeta?
        
        var entityId: String?
        
        var entityType: String?
        
        var mediaResource: [MediaMeta]?
        
        var rating: Double?
        
        var reviewId: String?
        
        var templateId: String?
        
        var title: String?
        

        enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case application = "application"
            
            case approve = "approve"
            
            case archive = "archive"
            
            case attributesRating = "attributes_rating"
            
            case description = "description"
            
            case deviceMeta = "device_meta"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaResource = "media_resource"
            
            case rating = "rating"
            
            case reviewId = "review_id"
            
            case templateId = "template_id"
            
            case title = "title"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            application = try? container.decode(String.self, forKey: .application)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            attributesRating = try? container.decode([AttributeObject].self, forKey: .attributesRating)
            
            description = try? container.decode(String.self, forKey: .description)
            
            deviceMeta = try? container.decode(DeviceMeta.self, forKey: .deviceMeta)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            mediaResource = try? container.decode([MediaMeta].self, forKey: .mediaResource)
            
            rating = try? container.decode(Double.self, forKey: .rating)
            
            reviewId = try? container.decode(String.self, forKey: .reviewId)
            
            templateId = try? container.decode(String.self, forKey: .templateId)
            
            title = try? container.decode(String.self, forKey: .title)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(attributesRating, forKey: .attributesRating)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(deviceMeta, forKey: .deviceMeta)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(mediaResource, forKey: .mediaResource)
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            try? container.encodeIfPresent(reviewId, forKey: .reviewId)
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
        }
        
    }
    
    /*
        Model: UpdateVoteRequest
        Used By: Catalog
    */
    struct UpdateVoteRequest: Codable {
        
        var action: String?
        
        var active: Bool?
        
        var id: String?
        
        var refId: String?
        
        var refType: String?
        

        enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case active = "active"
            
            case id = "id"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(String.self, forKey: .action)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            id = try? container.decode(String.self, forKey: .id)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
        }
        
    }
    
    /*
        Model: Url
        Used By: Catalog
    */
    struct Url: Codable {
        
        var main: String?
        
        var thumbnail: String?
        

        enum CodingKeys: String, CodingKey {
            
            case main = "main"
            
            case thumbnail = "thumbnail"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            main = try? container.decode(String.self, forKey: .main)
            
            thumbnail = try? container.decode(String.self, forKey: .thumbnail)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(main, forKey: .main)
            
            try? container.encodeIfPresent(thumbnail, forKey: .thumbnail)
            
        }
        
    }
    
    /*
        Model: VoteRequest
        Used By: Catalog
    */
    struct VoteRequest: Codable {
        
        var action: String?
        
        var entityId: String?
        
        var entityType: String?
        
        var refId: String?
        
        var refType: String?
        

        enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(String.self, forKey: .action)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
        }
        
    }
    
    /*
        Model: XCursorGetResponse
        Used By: Catalog
    */
    struct XCursorGetResponse: Codable {
        
        var items: [String: Any]?
        
        var page: PageCursor?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([String: Any].self, forKey: .items)
            
            page = try? container.decode(PageCursor.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: XInsertResponse
        Used By: Catalog
    */
    struct XInsertResponse: Codable {
        
        var ids: String?
        

        enum CodingKeys: String, CodingKey {
            
            case ids = "ids"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ids = try? container.decode(String.self, forKey: .ids)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ids, forKey: .ids)
            
        }
        
    }
    
    /*
        Model: XNumberGetResponse
        Used By: Catalog
    */
    struct XNumberGetResponse: Codable {
        
        var items: [String: Any]?
        
        var page: PageNumber?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([String: Any].self, forKey: .items)
            
            page = try? container.decode(PageNumber.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: XUpdateResponse
        Used By: Catalog
    */
    struct XUpdateResponse: Codable {
        
        var id: String?
        

        enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
        }
        
    }
    
    /*
        Model: UpdateCartShipmentItem
        Used By: Catalog
    */
    struct UpdateCartShipmentItem: Codable {
        
        var quantity: Int?
        
        var shipmentType: String
        
        var articleUid: String
        

        enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case shipmentType = "shipment_type"
            
            case articleUid = "article_uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            shipmentType = try container.decode(String.self, forKey: .shipmentType)
            
            articleUid = try container.decode(String.self, forKey: .articleUid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            try? container.encodeIfPresent(articleUid, forKey: .articleUid)
            
        }
        
    }
    
    /*
        Model: UpdateCartShipmentRequest
        Used By: Catalog
    */
    struct UpdateCartShipmentRequest: Codable {
        
        var shipments: [UpdateCartShipmentItem]
        

        enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipments = try container.decode([UpdateCartShipmentItem].self, forKey: .shipments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
        }
        
    }
    
    /*
        Model: CartDeliveryModesResponse
        Used By: Catalog
    */
    struct CartDeliveryModesResponse: Codable {
        
        var availableModes: [String]?
        
        var pickupStores: [Int]?
        

        enum CodingKeys: String, CodingKey {
            
            case availableModes = "available_modes"
            
            case pickupStores = "pickup_stores"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            availableModes = try? container.decode([String].self, forKey: .availableModes)
            
            pickupStores = try? container.decode([Int].self, forKey: .pickupStores)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(availableModes, forKey: .availableModes)
            
            try? container.encodeIfPresent(pickupStores, forKey: .pickupStores)
            
        }
        
    }
    
    /*
        Model: StoreDetailsResponse
        Used By: Catalog
    */
    struct StoreDetailsResponse: Codable {
        
        var items: [StoreDetail]?
        

        enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([StoreDetail].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}