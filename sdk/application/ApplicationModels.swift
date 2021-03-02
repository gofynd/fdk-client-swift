public extension ApplicationClient {
    
    
    /*
        Model: Media
        Used By: Catalog
    */
    struct Media: Codable {
        
        public var url: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var query: [String: Any]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var type: String?
        
        public var page: ProductListingActionPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            page = try? container.decode(ProductListingActionPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ProductBrand
        Used By: Catalog
    */
    struct ProductBrand: Codable {
        
        public var logo: Media?
        
        public var name: String?
        
        public var uid: Int?
        
        public var action: ProductListingAction?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var key: String?
        
        public var value: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try? container.decode(String.self, forKey: .key)
            
            value = try? container.decode(String.self, forKey: .value)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ProductDetailGroupedAttribute
        Used By: Catalog
    */
    struct ProductDetailGroupedAttribute: Codable {
        
        public var details: [ProductDetailAttribute]?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var brand: ProductBrand?
        
        public var type: String?
        
        public var hasVariant: Bool?
        
        public var color: String?
        
        public var medias: [Media]?
        
        public var highlights: [String]?
        
        public var uid: Int?
        
        public var name: String?
        
        public var rating: Double?
        
        public var categories: [ProductBrand]?
        
        public var tryouts: [String]?
        
        public var similars: [String]?
        
        public var ratingCount: Int?
        
        public var teaserTag: [String: Any]?
        
        public var productOnlineDate: String?
        
        public var itemType: String?
        
        public var description: String?
        
        public var shortDescription: String?
        
        public var attributes: [String: Any]?
        
        public var imageNature: String?
        
        public var promoMeta: [String: Any]?
        
        public var groupedAttributes: [ProductDetailGroupedAttribute]?
        
        public var slug: String
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case type = "type"
            
            case hasVariant = "has_variant"
            
            case color = "color"
            
            case medias = "medias"
            
            case highlights = "highlights"
            
            case uid = "uid"
            
            case name = "name"
            
            case rating = "rating"
            
            case categories = "categories"
            
            case tryouts = "tryouts"
            
            case similars = "similars"
            
            case ratingCount = "rating_count"
            
            case teaserTag = "teaser_tag"
            
            case productOnlineDate = "product_online_date"
            
            case itemType = "item_type"
            
            case description = "description"
            
            case shortDescription = "short_description"
            
            case attributes = "attributes"
            
            case imageNature = "image_nature"
            
            case promoMeta = "promo_meta"
            
            case groupedAttributes = "grouped_attributes"
            
            case slug = "slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            brand = try? container.decode(ProductBrand.self, forKey: .brand)
            
            type = try? container.decode(String.self, forKey: .type)
            
            hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
            
            color = try? container.decode(String.self, forKey: .color)
            
            medias = try? container.decode([Media].self, forKey: .medias)
            
            highlights = try? container.decode([String].self, forKey: .highlights)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
            rating = try? container.decode(Double.self, forKey: .rating)
            
            categories = try? container.decode([ProductBrand].self, forKey: .categories)
            
            tryouts = try? container.decode([String].self, forKey: .tryouts)
            
            similars = try? container.decode([String].self, forKey: .similars)
            
            ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
            
            teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
            
            productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
            
            itemType = try? container.decode(String.self, forKey: .itemType)
            
            description = try? container.decode(String.self, forKey: .description)
            
            shortDescription = try? container.decode(String.self, forKey: .shortDescription)
            
            attributes = try? container.decode([String: Any].self, forKey: .attributes)
            
            imageNature = try? container.decode(String.self, forKey: .imageNature)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
            groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
            
            slug = try container.decode(String.self, forKey: .slug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            try? container.encodeIfPresent(imageNature, forKey: .imageNature)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
        }
        
    }
    
    /*
        Model: ErrorResponse
        Used By: Catalog
    */
    struct ErrorResponse: Codable {
        
        public var message: String?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var isAvailable: Bool?
        
        public var value: String?
        
        public var display: String?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isAvailable = "is_available"
            
            case value = "value"
            
            case display = "display"
            
            case quantity = "quantity"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
            
            value = try? container.decode(String.self, forKey: .value)
            
            display = try? container.decode(String.self, forKey: .display)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
        }
        
    }
    
    /*
        Model: Price
        Used By: Catalog
    */
    struct Price: Codable {
        
        public var max: Double?
        
        public var currencyCode: String?
        
        public var min: Double?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case currencyCode = "currency_code"
            
            case min = "min"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            max = try? container.decode(Double.self, forKey: .max)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            min = try? container.decode(Double.self, forKey: .min)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
        }
        
    }
    
    /*
        Model: ProductListingPrice
        Used By: Catalog
    */
    struct ProductListingPrice: Codable {
        
        public var effective: Price?
        
        public var marked: Price?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case marked = "marked"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            effective = try? container.decode(Price.self, forKey: .effective)
            
            marked = try? container.decode(Price.self, forKey: .marked)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
        }
        
    }
    
    /*
        Model: ProductSizeStores
        Used By: Catalog
    */
    struct ProductSizeStores: Codable {
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var discount: String?
        
        public var sizes: [ProductSize]?
        
        public var price: ProductListingPrice?
        
        public var stores: ProductSizeStores?
        
        public var sellable: Bool?
        
        public var sizeChart: [String: Any]?
        
        public var promoMeta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case sizes = "sizes"
            
            case price = "price"
            
            case stores = "stores"
            
            case sellable = "sellable"
            
            case sizeChart = "size_chart"
            
            case promoMeta = "promo_meta"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            sizes = try? container.decode([ProductSize].self, forKey: .sizes)
            
            price = try? container.decode(ProductListingPrice.self, forKey: .price)
            
            stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
            
            sellable = try? container.decode(Bool.self, forKey: .sellable)
            
            sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
        }
        
    }
    
    /*
        Model: Seller
        Used By: Catalog
    */
    struct Seller: Codable {
        
        public var uid: Int?
        
        public var name: String?
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
            case count = "count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
            count = try? container.decode(Int.self, forKey: .count)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
        }
        
    }
    
    /*
        Model: ArticleAssignment
        Used By: Catalog
    */
    struct ArticleAssignment: Codable {
        
        public var strategy: String?
        
        public var level: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: ProductStockPrice
        Used By: Catalog
    */
    struct ProductStockPrice: Codable {
        
        public var currency: String?
        
        public var effective: Double?
        
        public var marked: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case effective = "effective"
            
            case marked = "marked"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currency = try? container.decode(String.self, forKey: .currency)
            
            effective = try? container.decode(Double.self, forKey: .effective)
            
            marked = try? container.decode(Double.self, forKey: .marked)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
        }
        
    }
    
    /*
        Model: Store
        Used By: Catalog
    */
    struct Store: Codable {
        
        public var uid: Int?
        
        public var name: String?
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
            case count = "count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
            count = try? container.decode(Int.self, forKey: .count)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
        }
        
    }
    
    /*
        Model: ProductSizePriceResponse
        Used By: Catalog
    */
    struct ProductSizePriceResponse: Codable {
        
        public var sellerCount: Int?
        
        public var articleId: String?
        
        public var itemType: String?
        
        public var discount: String?
        
        public var seller: Seller?
        
        public var articleAssignment: ArticleAssignment?
        
        public var pincode: Int?
        
        public var longLat: [Double]?
        
        public var strategyWiseListing: [[String: Any]]?
        
        public var pricePerPrice: ProductStockPrice?
        
        public var quantity: Int?
        
        public var price: ProductStockPrice?
        
        public var promoMeta: [String: Any]?
        
        public var specialBadge: String?
        
        public var store: Store?
        
        public var set: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerCount = "seller_count"
            
            case articleId = "article_id"
            
            case itemType = "item_type"
            
            case discount = "discount"
            
            case seller = "seller"
            
            case articleAssignment = "article_assignment"
            
            case pincode = "pincode"
            
            case longLat = "long_lat"
            
            case strategyWiseListing = "strategy_wise_listing"
            
            case pricePerPrice = "price_per_price"
            
            case quantity = "quantity"
            
            case price = "price"
            
            case promoMeta = "promo_meta"
            
            case specialBadge = "special_badge"
            
            case store = "store"
            
            case set = "set"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            itemType = try? container.decode(String.self, forKey: .itemType)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            seller = try? container.decode(Seller.self, forKey: .seller)
            
            articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            longLat = try? container.decode([Double].self, forKey: .longLat)
            
            strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
            
            pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            price = try? container.decode(ProductStockPrice.self, forKey: .price)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
            specialBadge = try? container.decode(String.self, forKey: .specialBadge)
            
            store = try? container.decode(Store.self, forKey: .store)
            
            set = try? container.decode([String: Any].self, forKey: .set)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(longLat, forKey: .longLat)
            
            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
            
            try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(set, forKey: .set)
            
        }
        
    }
    
    /*
        Model: ProductSizeSellerFilter
        Used By: Catalog
    */
    struct ProductSizeSellerFilter: Codable {
        
        public var value: String?
        
        public var name: String?
        
        public var isSelected: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case name = "name"
            
            case isSelected = "is_selected"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try? container.decode(String.self, forKey: .value)
            
            name = try? container.decode(String.self, forKey: .name)
            
            isSelected = try? container.decode(Bool.self, forKey: .isSelected)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
        }
        
    }
    
    /*
        Model: ProductPage
        Used By: Catalog
    */
    struct ProductPage: Codable {
        
        public var current: Int?
        
        public var totalItem: Int?
        
        public var nextId: String?
        
        public var hasPrevious: Bool?
        
        public var hasNext: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case totalItem = "total_item"
            
            case nextId = "next_id"
            
            case hasPrevious = "has_previous"
            
            case hasNext = "has_next"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            totalItem = try? container.decode(Int.self, forKey: .totalItem)
            
            nextId = try? container.decode(String.self, forKey: .nextId)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(totalItem, forKey: .totalItem)
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
        }
        
    }
    
    /*
        Model: ProductSizeSellersResponse
        Used By: Catalog
    */
    struct ProductSizeSellersResponse: Codable {
        
        public var items: [ProductSizePriceResponse]?
        
        public var sortOn: [ProductSizeSellerFilter]?
        
        public var page: ProductPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case sortOn = "sort_on"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductSizePriceResponse].self, forKey: .items)
            
            sortOn = try? container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: AttributeDetail
        Used By: Catalog
    */
    struct AttributeDetail: Codable {
        
        public var description: String?
        
        public var key: String?
        
        public var display: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case key = "key"
            
            case display = "display"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            key = try? container.decode(String.self, forKey: .key)
            
            display = try? container.decode(String.self, forKey: .display)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
        }
        
    }
    
    /*
        Model: ProductsComparisonResponse
        Used By: Catalog
    */
    struct ProductsComparisonResponse: Codable {
        
        public var attributesMetadata: [AttributeDetail]?
        
        public var items: [ProductDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributesMetadata = "attributes_metadata"
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
            
            items = try? container.decode([ProductDetail].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: ProductCompareResponse
        Used By: Catalog
    */
    struct ProductCompareResponse: Codable {
        
        public var attributesMetadata: [AttributeDetail]?
        
        public var subtitle: String?
        
        public var items: [ProductDetail]?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributesMetadata = "attributes_metadata"
            
            case subtitle = "subtitle"
            
            case items = "items"
            
            case title = "title"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
            
            subtitle = try? container.decode(String.self, forKey: .subtitle)
            
            items = try? container.decode([ProductDetail].self, forKey: .items)
            
            title = try? container.decode(String.self, forKey: .title)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
        }
        
    }
    
    /*
        Model: ProductFrequentlyComparedSimilarResponse
        Used By: Catalog
    */
    struct ProductFrequentlyComparedSimilarResponse: Codable {
        
        public var similars: [ProductCompareResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var subtitle: String?
        
        public var items: [ProductDetail]?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case subtitle = "subtitle"
            
            case items = "items"
            
            case title = "title"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            subtitle = try? container.decode(String.self, forKey: .subtitle)
            
            items = try? container.decode([ProductDetail].self, forKey: .items)
            
            title = try? container.decode(String.self, forKey: .title)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
        }
        
    }
    
    /*
        Model: SimilarProductByTypeResponse
        Used By: Catalog
    */
    struct SimilarProductByTypeResponse: Codable {
        
        public var similars: [ProductSimilarItem]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var colorName: String?
        
        public var action: ProductListingAction?
        
        public var name: String?
        
        public var uid: Int?
        
        public var slug: String?
        
        public var isAvailable: Bool?
        
        public var value: String?
        
        public var color: String?
        
        public var medias: [Media]?
        

        public enum CodingKeys: String, CodingKey {
            
            case colorName = "color_name"
            
            case action = "action"
            
            case name = "name"
            
            case uid = "uid"
            
            case slug = "slug"
            
            case isAvailable = "is_available"
            
            case value = "value"
            
            case color = "color"
            
            case medias = "medias"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            colorName = try? container.decode(String.self, forKey: .colorName)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
            
            value = try? container.decode(String.self, forKey: .value)
            
            color = try? container.decode(String.self, forKey: .color)
            
            medias = try? container.decode([Media].self, forKey: .medias)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(colorName, forKey: .colorName)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
        }
        
    }
    
    /*
        Model: ProductVariantResponse
        Used By: Catalog
    */
    struct ProductVariantResponse: Codable {
        
        public var displayType: String?
        
        public var header: String?
        
        public var items: [ProductVariantItemResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayType = "display_type"
            
            case header = "header"
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            displayType = try? container.decode(String.self, forKey: .displayType)
            
            header = try? container.decode(String.self, forKey: .header)
            
            items = try? container.decode([ProductVariantItemResponse].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: ProductVariantsResponse
        Used By: Catalog
    */
    struct ProductVariantsResponse: Codable {
        
        public var variants: [ProductVariantResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: StoreDetail
        Used By: Catalog
    */
    struct StoreDetail: Codable {
        
        public var address: String?
        
        public var country: String?
        
        public var storeCode: String?
        
        public var uid: Int?
        
        public var name: String?
        
        public var email: String?
        
        public var area: String?
        
        public var city: String?
        
        public var state: String?
        
        public var addressType: String?
        
        public var areaCodeSlug: String?
        
        public var phone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case country = "country"
            
            case storeCode = "store_code"
            
            case uid = "uid"
            
            case name = "name"
            
            case email = "email"
            
            case area = "area"
            
            case city = "city"
            
            case state = "state"
            
            case addressType = "address_type"
            
            case areaCodeSlug = "area_code_slug"
            
            case phone = "phone"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address = try? container.decode(String.self, forKey: .address)
            
            country = try? container.decode(String.self, forKey: .country)
            
            storeCode = try? container.decode(String.self, forKey: .storeCode)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
            email = try? container.decode(String.self, forKey: .email)
            
            area = try? container.decode(String.self, forKey: .area)
            
            city = try? container.decode(String.self, forKey: .city)
            
            state = try? container.decode(String.self, forKey: .state)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
        }
        
    }
    
    /*
        Model: CompanyDetail
        Used By: Catalog
    */
    struct CompanyDetail: Codable {
        
        public var name: String?
        
        public var id: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: ProductStockStatusItem
        Used By: Catalog
    */
    struct ProductStockStatusItem: Codable {
        
        public var seller: Seller?
        
        public var itemId: Int?
        
        public var size: String?
        
        public var uid: String?
        
        public var price: ProductStockPrice?
        
        public var quantity: Int?
        
        public var store: StoreDetail?
        
        public var company: CompanyDetail?
        
        public var identifier: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case seller = "seller"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case uid = "uid"
            
            case price = "price"
            
            case quantity = "quantity"
            
            case store = "store"
            
            case company = "company"
            
            case identifier = "identifier"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            seller = try? container.decode(Seller.self, forKey: .seller)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            size = try? container.decode(String.self, forKey: .size)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            price = try? container.decode(ProductStockPrice.self, forKey: .price)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            store = try? container.decode(StoreDetail.self, forKey: .store)
            
            company = try? container.decode(CompanyDetail.self, forKey: .company)
            
            identifier = try? container.decode([String: Any].self, forKey: .identifier)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
        }
        
    }
    
    /*
        Model: ProductStockStatusResponse
        Used By: Catalog
    */
    struct ProductStockStatusResponse: Codable {
        
        public var items: [ProductStockStatusItem]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [ProductStockStatusItem]?
        
        public var page: ProductPage?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var brand: ProductBrand?
        
        public var type: String?
        
        public var sellable: Bool?
        
        public var hasVariant: Bool?
        
        public var color: String?
        
        public var medias: [Media]?
        
        public var highlights: [String]?
        
        public var uid: Int?
        
        public var name: String?
        
        public var rating: Double?
        
        public var price: ProductListingPrice?
        
        public var categories: [ProductBrand]?
        
        public var tryouts: [String]?
        
        public var similars: [String]?
        
        public var ratingCount: Int?
        
        public var teaserTag: [String: Any]?
        
        public var productOnlineDate: String?
        
        public var discount: String?
        
        public var itemType: String?
        
        public var description: String?
        
        public var shortDescription: String?
        
        public var attributes: [String: Any]?
        
        public var imageNature: String?
        
        public var promoMeta: [String: Any]?
        
        public var groupedAttributes: [ProductDetailGroupedAttribute]?
        
        public var slug: String
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case type = "type"
            
            case sellable = "sellable"
            
            case hasVariant = "has_variant"
            
            case color = "color"
            
            case medias = "medias"
            
            case highlights = "highlights"
            
            case uid = "uid"
            
            case name = "name"
            
            case rating = "rating"
            
            case price = "price"
            
            case categories = "categories"
            
            case tryouts = "tryouts"
            
            case similars = "similars"
            
            case ratingCount = "rating_count"
            
            case teaserTag = "teaser_tag"
            
            case productOnlineDate = "product_online_date"
            
            case discount = "discount"
            
            case itemType = "item_type"
            
            case description = "description"
            
            case shortDescription = "short_description"
            
            case attributes = "attributes"
            
            case imageNature = "image_nature"
            
            case promoMeta = "promo_meta"
            
            case groupedAttributes = "grouped_attributes"
            
            case slug = "slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            brand = try? container.decode(ProductBrand.self, forKey: .brand)
            
            type = try? container.decode(String.self, forKey: .type)
            
            sellable = try? container.decode(Bool.self, forKey: .sellable)
            
            hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
            
            color = try? container.decode(String.self, forKey: .color)
            
            medias = try? container.decode([Media].self, forKey: .medias)
            
            highlights = try? container.decode([String].self, forKey: .highlights)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
            rating = try? container.decode(Double.self, forKey: .rating)
            
            price = try? container.decode(ProductListingPrice.self, forKey: .price)
            
            categories = try? container.decode([ProductBrand].self, forKey: .categories)
            
            tryouts = try? container.decode([String].self, forKey: .tryouts)
            
            similars = try? container.decode([String].self, forKey: .similars)
            
            ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
            
            teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
            
            productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            itemType = try? container.decode(String.self, forKey: .itemType)
            
            description = try? container.decode(String.self, forKey: .description)
            
            shortDescription = try? container.decode(String.self, forKey: .shortDescription)
            
            attributes = try? container.decode([String: Any].self, forKey: .attributes)
            
            imageNature = try? container.decode(String.self, forKey: .imageNature)
            
            promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
            
            groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
            
            slug = try container.decode(String.self, forKey: .slug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            try? container.encodeIfPresent(imageNature, forKey: .imageNature)
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
        }
        
    }
    
    /*
        Model: ProductFiltersKey
        Used By: Catalog
    */
    struct ProductFiltersKey: Codable {
        
        public var logo: String?
        
        public var name: String
        
        public var display: String
        
        public var kind: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case name = "name"
            
            case display = "display"
            
            case kind = "kind"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logo = try? container.decode(String.self, forKey: .logo)
            
            name = try container.decode(String.self, forKey: .name)
            
            display = try container.decode(String.self, forKey: .display)
            
            kind = try? container.decode(String.self, forKey: .kind)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
        }
        
    }
    
    /*
        Model: ProductFiltersValue
        Used By: Catalog
    */
    struct ProductFiltersValue: Codable {
        
        public var queryFormat: String?
        
        public var displayFormat: String?
        
        public var currencySymbol: String?
        
        public var isSelected: Bool
        
        public var count: Int?
        
        public var selectedMin: Int?
        
        public var max: Int?
        
        public var currencyCode: String?
        
        public var selectedMax: Int?
        
        public var value: String
        
        public var display: String
        
        public var min: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case queryFormat = "query_format"
            
            case displayFormat = "display_format"
            
            case currencySymbol = "currency_symbol"
            
            case isSelected = "is_selected"
            
            case count = "count"
            
            case selectedMin = "selected_min"
            
            case max = "max"
            
            case currencyCode = "currency_code"
            
            case selectedMax = "selected_max"
            
            case value = "value"
            
            case display = "display"
            
            case min = "min"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            queryFormat = try? container.decode(String.self, forKey: .queryFormat)
            
            displayFormat = try? container.decode(String.self, forKey: .displayFormat)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
            isSelected = try container.decode(Bool.self, forKey: .isSelected)
            
            count = try? container.decode(Int.self, forKey: .count)
            
            selectedMin = try? container.decode(Int.self, forKey: .selectedMin)
            
            max = try? container.decode(Int.self, forKey: .max)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            selectedMax = try? container.decode(Int.self, forKey: .selectedMax)
            
            value = try container.decode(String.self, forKey: .value)
            
            display = try container.decode(String.self, forKey: .display)
            
            min = try? container.decode(Int.self, forKey: .min)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
            
            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(min, forKey: .min)
            
        }
        
    }
    
    /*
        Model: ProductFilters
        Used By: Catalog
    */
    struct ProductFilters: Codable {
        
        public var key: ProductFiltersKey
        
        public var values: [ProductFiltersValue]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case values = "values"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(ProductFiltersKey.self, forKey: .key)
            
            values = try container.decode([ProductFiltersValue].self, forKey: .values)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(values, forKey: .values)
            
        }
        
    }
    
    /*
        Model: ProductSortOn
        Used By: Catalog
    */
    struct ProductSortOn: Codable {
        
        public var isSelected: Bool?
        
        public var name: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [ProductListingDetail]?
        
        public var filter: [ProductFilters]?
        
        public var sortOn: [ProductSortOn]?
        
        public var page: ProductPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case filter = "filter"
            
            case sortOn = "sort_on"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductListingDetail].self, forKey: .items)
            
            filter = try? container.decode([ProductFilters].self, forKey: .filter)
            
            sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ImageUrls
        Used By: Catalog
    */
    struct ImageUrls: Codable {
        
        public var portrait: Media?
        
        public var landscape: Media?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var departments: [String]?
        
        public var discount: String?
        
        public var action: ProductListingAction?
        
        public var uid: Int?
        
        public var name: String?
        
        public var slug: String?
        
        public var logo: Media?
        
        public var banners: ImageUrls?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case discount = "discount"
            
            case action = "action"
            
            case uid = "uid"
            
            case name = "name"
            
            case slug = "slug"
            
            case logo = "logo"
            
            case banners = "banners"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            departments = try? container.decode([String].self, forKey: .departments)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
        }
        
    }
    
    /*
        Model: BrandListingResponse
        Used By: Catalog
    */
    struct BrandListingResponse: Codable {
        
        public var items: [BrandItem]?
        
        public var page: ProductPage?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var logo: Media?
        
        public var banners: ImageUrls?
        
        public var name: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case banners = "banners"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: DepartmentIdentifier
        Used By: Catalog
    */
    struct DepartmentIdentifier: Codable {
        
        public var slug: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var action: ProductListingAction?
        
        public var name: String?
        
        public var uid: Int?
        
        public var slug: String?
        
        public var banners: ImageUrls?
        
        public var childs: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case name = "name"
            
            case uid = "uid"
            
            case slug = "slug"
            
            case banners = "banners"
            
            case childs = "childs"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            childs = try? container.decode([[String: Any]].self, forKey: .childs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(childs, forKey: .childs)
            
        }
        
    }
    
    /*
        Model: DepartmentCategoryTree
        Used By: Catalog
    */
    struct DepartmentCategoryTree: Codable {
        
        public var items: [CategoryItems]?
        
        public var department: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var departments: [DepartmentIdentifier]?
        
        public var data: [DepartmentCategoryTree]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var logo: Media?
        
        public var banners: ImageUrls?
        
        public var name: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case banners = "banners"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: Page
        Used By: Catalog
    */
    struct Page: Codable {
        
        public var pageSize: Int
        
        public var pageNo: Int
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [ProductListingDetail]?
        
        public var message: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case message = "message"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ProductListingDetail].self, forKey: .items)
            
            message = try? container.decode(String.self, forKey: .message)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: Department
        Used By: Catalog
    */
    struct Department: Codable {
        
        public var priorityOrder: Int?
        
        public var uid: Int?
        
        public var name: String?
        
        public var slug: String?
        
        public var logo: Media?
        

        public enum CodingKeys: String, CodingKey {
            
            case priorityOrder = "priority_order"
            
            case uid = "uid"
            
            case name = "name"
            
            case slug = "slug"
            
            case logo = "logo"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
        }
        
    }
    
    /*
        Model: DepartmentResponse
        Used By: Catalog
    */
    struct DepartmentResponse: Codable {
        
        public var items: [Department]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var logo: Media?
        
        public var action: [String: Any]?
        
        public var display: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case action = "action"
            
            case display = "display"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
            display = try? container.decode(String.self, forKey: .display)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: AutoCompleteResponse
        Used By: Catalog
    */
    struct AutoCompleteResponse: Codable {
        
        public var items: [AutocompleteItem]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: SeoDetail
        Used By: Catalog
    */
    struct SeoDetail: Codable {
        
        public var description: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case title = "title"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            title = try? container.decode(String.self, forKey: .title)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
        }
        
    }
    
    /*
        Model: UserInfo
        Used By: Catalog
    */
    struct UserInfo: Codable {
        
        public var userId: String?
        
        public var username: String?
        
        public var email: String?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case username = "username"
            
            case email = "email"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            username = try? container.decode(String.self, forKey: .username)
            
            email = try? container.decode(String.self, forKey: .email)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: CollectionImage
        Used By: Catalog
    */
    struct CollectionImage: Codable {
        
        public var url: String
        
        public var aspectRatio: String
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case aspectRatio = "aspect_ratio"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try container.decode(String.self, forKey: .url)
            
            aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
        }
        
    }
    
    /*
        Model: CollectionBanner
        Used By: Catalog
    */
    struct CollectionBanner: Codable {
        
        public var portrait: CollectionImage
        
        public var landscape: CollectionImage
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: CollectionBadge
        Used By: Catalog
    */
    struct CollectionBadge: Codable {
        
        public var text: String?
        
        public var color: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: Schedule
        Used By: Catalog
    */
    struct Schedule: Codable {
        
        public var cron: String?
        
        public var end: String?
        
        public var start: String?
        
        public var duration: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case cron = "cron"
            
            case end = "end"
            
            case start = "start"
            
            case duration = "duration"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cron = try? container.decode(String.self, forKey: .cron)
            
            end = try? container.decode(String.self, forKey: .end)
            
            start = try? container.decode(String.self, forKey: .start)
            
            duration = try? container.decode(Int.self, forKey: .duration)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
        }
        
    }
    
    /*
        Model: CreateCollection
        Used By: Catalog
    */
    struct CreateCollection: Codable {
        
        public var tags: [String]?
        
        public var type: String
        
        public var appId: String
        
        public var localeLanguage: [String: Any]?
        
        public var seo: SeoDetail?
        
        public var modifiedBy: UserInfo?
        
        public var name: String
        
        public var visibleFacetsKeys: [String]?
        
        public var createdBy: UserInfo?
        
        public var isActive: Bool?
        
        public var allowFacets: Bool?
        
        public var customJson: [String: Any]?
        
        public var logo: CollectionImage
        
        public var banners: CollectionBanner
        
        public var query: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var description: String?
        
        public var badge: CollectionBadge?
        
        public var published: Bool?
        
        public var schedule: Schedule?
        
        public var slug: String
        
        public var allowSort: Bool?
        
        public var sortOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case type = "type"
            
            case appId = "app_id"
            
            case localeLanguage = "_locale_language"
            
            case seo = "seo"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case createdBy = "created_by"
            
            case isActive = "is_active"
            
            case allowFacets = "allow_facets"
            
            case customJson = "_custom_json"
            
            case logo = "logo"
            
            case banners = "banners"
            
            case query = "query"
            
            case meta = "meta"
            
            case description = "description"
            
            case badge = "badge"
            
            case published = "published"
            
            case schedule = "_schedule"
            
            case slug = "slug"
            
            case allowSort = "allow_sort"
            
            case sortOn = "sort_on"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            type = try container.decode(String.self, forKey: .type)
            
            appId = try container.decode(String.self, forKey: .appId)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
            seo = try? container.decode(SeoDetail.self, forKey: .seo)
            
            modifiedBy = try? container.decode(UserInfo.self, forKey: .modifiedBy)
            
            name = try container.decode(String.self, forKey: .name)
            
            visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
            
            createdBy = try? container.decode(UserInfo.self, forKey: .createdBy)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            logo = try container.decode(CollectionImage.self, forKey: .logo)
            
            banners = try container.decode(CollectionBanner.self, forKey: .banners)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            description = try? container.decode(String.self, forKey: .description)
            
            badge = try? container.decode(CollectionBadge.self, forKey: .badge)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            schedule = try? container.decode(Schedule.self, forKey: .schedule)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            allowSort = try? container.decode(Bool.self, forKey: .allowSort)
            
            sortOn = try? container.decode(String.self, forKey: .sortOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
        }
        
    }
    
    /*
        Model: CollectionDetailResponse
        Used By: Catalog
    */
    struct CollectionDetailResponse: Codable {
        
        public var query: [String: Any]?
        
        public var visibleFacetsKeys: [String]?
        
        public var description: String?
        
        public var cron: [String: Any]?
        
        public var schedule: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var tag: [String]?
        
        public var badge: [String: Any]?
        
        public var name: String?
        
        public var isActive: Bool?
        
        public var appId: String?
        
        public var type: String?
        
        public var allowFacets: Bool?
        
        public var slug: String?
        
        public var logo: Media?
        
        public var banners: ImageUrls?
        
        public var seo: SeoDetail?
        
        public var allowSort: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case description = "description"
            
            case cron = "cron"
            
            case schedule = "_schedule"
            
            case meta = "meta"
            
            case tag = "tag"
            
            case badge = "badge"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case appId = "app_id"
            
            case type = "type"
            
            case allowFacets = "allow_facets"
            
            case slug = "slug"
            
            case logo = "logo"
            
            case banners = "banners"
            
            case seo = "seo"
            
            case allowSort = "allow_sort"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
            
            description = try? container.decode(String.self, forKey: .description)
            
            cron = try? container.decode([String: Any].self, forKey: .cron)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            tag = try? container.decode([String].self, forKey: .tag)
            
            badge = try? container.decode([String: Any].self, forKey: .badge)
            
            name = try? container.decode(String.self, forKey: .name)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            type = try? container.decode(String.self, forKey: .type)
            
            allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            seo = try? container.decode(SeoDetail.self, forKey: .seo)
            
            allowSort = try? container.decode(Bool.self, forKey: .allowSort)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
        }
        
    }
    
    /*
        Model: GetCollectionDetailNest
        Used By: Catalog
    */
    struct GetCollectionDetailNest: Codable {
        
        public var action: ProductListingAction?
        
        public var appId: String?
        
        public var type: String?
        
        public var seo: SeoDetail?
        
        public var name: String?
        
        public var uid: String?
        
        public var visibleFacetsKeys: [String]?
        
        public var isActive: Bool?
        
        public var allowFacets: Bool?
        
        public var logo: Media?
        
        public var banners: ImageUrls?
        
        public var query: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var description: String?
        
        public var cron: [String: Any]?
        
        public var tag: [String]?
        
        public var badge: [String: Any]?
        
        public var schedule: [String: Any]?
        
        public var slug: String?
        
        public var allowSort: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case appId = "app_id"
            
            case type = "type"
            
            case seo = "seo"
            
            case name = "name"
            
            case uid = "uid"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case isActive = "is_active"
            
            case allowFacets = "allow_facets"
            
            case logo = "logo"
            
            case banners = "banners"
            
            case query = "query"
            
            case meta = "meta"
            
            case description = "description"
            
            case cron = "cron"
            
            case tag = "tag"
            
            case badge = "badge"
            
            case schedule = "_schedule"
            
            case slug = "slug"
            
            case allowSort = "allow_sort"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(ProductListingAction.self, forKey: .action)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            type = try? container.decode(String.self, forKey: .type)
            
            seo = try? container.decode(SeoDetail.self, forKey: .seo)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
            
            logo = try? container.decode(Media.self, forKey: .logo)
            
            banners = try? container.decode(ImageUrls.self, forKey: .banners)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            description = try? container.decode(String.self, forKey: .description)
            
            cron = try? container.decode([String: Any].self, forKey: .cron)
            
            tag = try? container.decode([String].self, forKey: .tag)
            
            badge = try? container.decode([String: Any].self, forKey: .badge)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            allowSort = try? container.decode(Bool.self, forKey: .allowSort)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(cron, forKey: .cron)
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
        }
        
    }
    
    /*
        Model: CollectionListingFilterTag
        Used By: Catalog
    */
    struct CollectionListingFilterTag: Codable {
        
        public var name: String?
        
        public var display: String?
        
        public var isSelected: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
            case isSelected = "is_selected"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            display = try? container.decode(String.self, forKey: .display)
            
            isSelected = try? container.decode(Bool.self, forKey: .isSelected)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
        }
        
    }
    
    /*
        Model: CollectionListingFilterType
        Used By: Catalog
    */
    struct CollectionListingFilterType: Codable {
        
        public var name: String?
        
        public var display: String?
        
        public var isSelected: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
            case isSelected = "is_selected"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            display = try? container.decode(String.self, forKey: .display)
            
            isSelected = try? container.decode(Bool.self, forKey: .isSelected)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
        }
        
    }
    
    /*
        Model: CollectionListingFilter
        Used By: Catalog
    */
    struct CollectionListingFilter: Codable {
        
        public var tags: [CollectionListingFilterTag]?
        
        public var type: [CollectionListingFilterType]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [GetCollectionDetailNest]?
        
        public var filters: CollectionListingFilter?
        
        public var page: ProductPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case filters = "filters"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([GetCollectionDetailNest].self, forKey: .items)
            
            filters = try? container.decode(CollectionListingFilter.self, forKey: .filters)
            
            page = try? container.decode(ProductPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: CollectionItem
        Used By: Catalog
    */
    struct CollectionItem: Codable {
        
        public var itemId: Int
        
        public var action: String
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case action = "action"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            itemId = try container.decode(Int.self, forKey: .itemId)
            
            action = try container.decode(String.self, forKey: .action)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
        }
        
    }
    
    /*
        Model: CollectionItemsRequest
        Used By: Catalog
    */
    struct CollectionItemsRequest: Codable {
        
        public var query: [String: Any]?
        
        public var pageSize: Int
        
        public var type: String?
        
        public var items: [CollectionItem]?
        
        public var pageNo: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case pageSize = "page_size"
            
            case type = "type"
            
            case items = "items"
            
            case pageNo = "page_no"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
            pageSize = try container.decode(Int.self, forKey: .pageSize)
            
            type = try? container.decode(String.self, forKey: .type)
            
            items = try? container.decode([CollectionItem].self, forKey: .items)
            
            pageNo = try container.decode(Int.self, forKey: .pageNo)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
        }
        
    }
    
    /*
        Model: CollectionItemsResponse
        Used By: Catalog
    */
    struct CollectionItemsResponse: Codable {
        
        public var detail: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: CollectionDetailViewDeleteResponse
        Used By: Catalog
    */
    struct CollectionDetailViewDeleteResponse: Codable {
        
        public var detail: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var data: [CollectionDetailResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: GetFollowListingResponse
        Used By: Catalog
    */
    struct GetFollowListingResponse: Codable {
        
        public var items: [[String: Any]]
        
        public var page: ProductPage
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var id: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var collections: [Int]?
        
        public var products: [Int]?
        
        public var brands: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var data: FollowIdsData?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var coordinates: [Double]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case coordinates = "coordinates"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            coordinates = try? container.decode([Double].self, forKey: .coordinates)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Store1
        Used By: Catalog
    */
    struct Store1: Codable {
        
        public var latLong: LatLong?
        
        public var storeCode: String?
        
        public var storeEmail: String?
        
        public var country: String?
        
        public var city: String?
        
        public var pincode: Int?
        
        public var address: String?
        
        public var state: String?
        
        public var name: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case latLong = "lat_long"
            
            case storeCode = "store_code"
            
            case storeEmail = "store_email"
            
            case country = "country"
            
            case city = "city"
            
            case pincode = "pincode"
            
            case address = "address"
            
            case state = "state"
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            latLong = try? container.decode(LatLong.self, forKey: .latLong)
            
            storeCode = try? container.decode(String.self, forKey: .storeCode)
            
            storeEmail = try? container.decode(String.self, forKey: .storeEmail)
            
            country = try? container.decode(String.self, forKey: .country)
            
            city = try? container.decode(String.self, forKey: .city)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            address = try? container.decode(String.self, forKey: .address)
            
            state = try? container.decode(String.self, forKey: .state)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: StoreListingResponse
        Used By: Catalog
    */
    struct StoreListingResponse: Codable {
        
        public var items: [Store1]?
        
        public var page: ProductPage?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: RawBreakup
        Used By: Catalog
    */
    struct RawBreakup: Codable {
        
        public var deliveryCharge: Double?
        
        public var codCharge: Double?
        
        public var fyndCash: Double?
        
        public var coupon: Double?
        
        public var subtotal: Double?
        
        public var total: Double?
        
        public var youSaved: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryCharge = "delivery_charge"
            
            case codCharge = "cod_charge"
            
            case fyndCash = "fynd_cash"
            
            case coupon = "coupon"
            
            case subtotal = "subtotal"
            
            case total = "total"
            
            case youSaved = "you_saved"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
            
            codCharge = try? container.decode(Double.self, forKey: .codCharge)
            
            fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
            
            coupon = try? container.decode(Double.self, forKey: .coupon)
            
            subtotal = try? container.decode(Double.self, forKey: .subtotal)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            youSaved = try? container.decode(Double.self, forKey: .youSaved)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
        }
        
    }
    
    /*
        Model: LoyaltyPoints
        Used By: Catalog
    */
    struct LoyaltyPoints: Codable {
        
        public var isApplied: Bool?
        
        public var applicable: Double?
        
        public var total: Double?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: DisplayBreakup
        Used By: Catalog
    */
    struct DisplayBreakup: Codable {
        
        public var currencyCode: String?
        
        public var value: Int?
        
        public var display: String?
        
        public var key: String?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case value = "value"
            
            case display = "display"
            
            case key = "key"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            value = try? container.decode(Int.self, forKey: .value)
            
            display = try? container.decode(String.self, forKey: .display)
            
            key = try? container.decode(String.self, forKey: .key)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
        }
        
    }
    
    /*
        Model: CouponBreakup
        Used By: Catalog
    */
    struct CouponBreakup: Codable {
        
        public var uid: Int?
        
        public var value: Double?
        
        public var code: String?
        
        public var type: String?
        
        public var isApplied: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case value = "value"
            
            case code = "code"
            
            case type = "type"
            
            case isApplied = "is_applied"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            value = try? container.decode(Double.self, forKey: .value)
            
            code = try? container.decode(String.self, forKey: .code)
            
            type = try? container.decode(String.self, forKey: .type)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CartBreakup
        Used By: Catalog
    */
    struct CartBreakup: Codable {
        
        public var raw: RawBreakup?
        
        public var loyaltyPoints: LoyaltyPoints?
        
        public var display: DisplayBreakup?
        
        public var coupon: CouponBreakup?
        

        public enum CodingKeys: String, CodingKey {
            
            case raw = "raw"
            
            case loyaltyPoints = "loyalty_points"
            
            case display = "display"
            
            case coupon = "coupon"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            raw = try? container.decode(RawBreakup.self, forKey: .raw)
            
            loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
            display = try? container.decode(DisplayBreakup.self, forKey: .display)
            
            coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
        }
        
    }
    
    /*
        Model: CartCurrency
        Used By: Catalog
    */
    struct CartCurrency: Codable {
        
        public var code: String?
        
        public var symbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: Image
        Used By: Catalog
    */
    struct Image: Codable {
        
        public var url: String?
        
        public var aspectRatio: String?
        
        public var secureUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case aspectRatio = "aspect_ratio"
            
            case secureUrl = "secure_url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try? container.decode(String.self, forKey: .url)
            
            aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
            
            secureUrl = try? container.decode(String.self, forKey: .secureUrl)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
        }
        
    }
    
    /*
        Model: CategoryInfo
        Used By: Catalog
    */
    struct CategoryInfo: Codable {
        
        public var uid: Int?
        
        public var name: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(Int.self, forKey: .name)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
        }
        
    }
    
    /*
        Model: BaseInfo
        Used By: Catalog
    */
    struct BaseInfo: Codable {
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
        }
        
    }
    
    /*
        Model: ActionQuery
        Used By: Catalog
    */
    struct ActionQuery: Codable {
        
        public var productSlug: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var url: String?
        
        public var type: String?
        
        public var query: ActionQuery?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case type = "type"
            
            case query = "query"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try? container.decode(String.self, forKey: .url)
            
            type = try? container.decode(String.self, forKey: .type)
            
            query = try? container.decode(ActionQuery.self, forKey: .query)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
        }
        
    }
    
    /*
        Model: Product
        Used By: Catalog
    */
    struct Product: Codable {
        
        public var uid: Int?
        
        public var slug: String?
        
        public var name: String?
        
        public var type: String?
        
        public var categories: [CategoryInfo]?
        
        public var images: [Image]?
        
        public var brand: BaseInfo?
        
        public var action: Action?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case slug = "slug"
            
            case name = "name"
            
            case type = "type"
            
            case categories = "categories"
            
            case images = "images"
            
            case brand = "brand"
            
            case action = "action"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            name = try? container.decode(String.self, forKey: .name)
            
            type = try? container.decode(String.self, forKey: .type)
            
            categories = try? container.decode([CategoryInfo].self, forKey: .categories)
            
            images = try? container.decode([Image].self, forKey: .images)
            
            brand = try? container.decode(BaseInfo.self, forKey: .brand)
            
            action = try? container.decode(Action.self, forKey: .action)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
        }
        
    }
    
    /*
        Model: ProductPrice
        Used By: Catalog
    */
    struct ProductPrice: Codable {
        
        public var currencyCode: String?
        
        public var selling: Double?
        
        public var marked: Double?
        
        public var effective: Double?
        
        public var addOn: Double?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case selling = "selling"
            
            case marked = "marked"
            
            case effective = "effective"
            
            case addOn = "add_on"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            selling = try? container.decode(Double.self, forKey: .selling)
            
            marked = try? container.decode(Double.self, forKey: .marked)
            
            effective = try? container.decode(Double.self, forKey: .effective)
            
            addOn = try? container.decode(Double.self, forKey: .addOn)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(addOn, forKey: .addOn)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
        }
        
    }
    
    /*
        Model: ProductPriceInfo
        Used By: Catalog
    */
    struct ProductPriceInfo: Codable {
        
        public var converted: ProductPrice?
        
        public var base: ProductPrice?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: ProductAvailability
        Used By: Catalog
    */
    struct ProductAvailability: Codable {
        
        public var outOfStock: Bool?
        
        public var sizes: [String]?
        
        public var otherStoreQuantity: Int?
        
        public var deliverable: Bool?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case outOfStock = "out_of_stock"
            
            case sizes = "sizes"
            
            case otherStoreQuantity = "other_store_quantity"
            
            case deliverable = "deliverable"
            
            case isValid = "is_valid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
            
            sizes = try? container.decode([String].self, forKey: .sizes)
            
            otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
            
            deliverable = try? container.decode(Bool.self, forKey: .deliverable)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
            
            try? container.encodeIfPresent(deliverable, forKey: .deliverable)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
        }
        
    }
    
    /*
        Model: CartProductInfo
        Used By: Catalog
    */
    struct CartProductInfo: Codable {
        
        public var availability: ProductAvailability?
        
        public var bulkOffer: String?
        
        public var discount: String?
        
        public var price: ProductPriceInfo?
        
        public var product: Product?
        
        public var quantity: Int?
        
        public var couponMessage: String?
        
        public var key: String?
        
        public var article: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case availability = "availability"
            
            case bulkOffer = "bulk_offer"
            
            case discount = "discount"
            
            case price = "price"
            
            case product = "product"
            
            case quantity = "quantity"
            
            case couponMessage = "coupon_message"
            
            case key = "key"
            
            case article = "article"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            availability = try? container.decode(ProductAvailability.self, forKey: .availability)
            
            bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            price = try? container.decode(ProductPriceInfo.self, forKey: .price)
            
            product = try? container.decode(Product.self, forKey: .product)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            couponMessage = try? container.decode(String.self, forKey: .couponMessage)
            
            key = try? container.decode(String.self, forKey: .key)
            
            article = try? container.decode(String.self, forKey: .article)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: PaymentOption
        Used By: Catalog
    */
    struct PaymentOption: Codable {
        
        public var list: [[String: Any]]?
        
        public var name: String?
        
        public var paymentModeId: Int?
        
        public var displayPriority: Int?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case list = "list"
            
            case name = "name"
            
            case paymentModeId = "payment_mode_id"
            
            case displayPriority = "display_priority"
            
            case displayName = "display_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            list = try? container.decode([[String: Any]].self, forKey: .list)
            
            name = try? container.decode(String.self, forKey: .name)
            
            paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
            
            displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
            
            displayName = try? container.decode(String.self, forKey: .displayName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
        }
        
    }
    
    /*
        Model: PaymentFlow
        Used By: Catalog
    */
    struct PaymentFlow: Codable {
        
        public var paymentFlow: String?
        
        public var apiLink: String?
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentFlow = "payment_flow"
            
            case apiLink = "api_link"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentFlow = try? container.decode(String.self, forKey: .paymentFlow)
            
            apiLink = try? container.decode(String.self, forKey: .apiLink)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
            
            try? container.encodeIfPresent(apiLink, forKey: .apiLink)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: PaymentFlows
        Used By: Catalog
    */
    struct PaymentFlows: Codable {
        
        public var simpl: PaymentFlow?
        
        public var upiRazorpay: PaymentFlow?
        
        public var razorpay: PaymentFlow?
        
        public var fynd: PaymentFlow?
        
        public var juspay: PaymentFlow?
        

        public enum CodingKeys: String, CodingKey {
            
            case simpl = "Simpl"
            
            case upiRazorpay = "UPI_Razorpay"
            
            case razorpay = "Razorpay"
            
            case fynd = "Fynd"
            
            case juspay = "Juspay"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
            
            upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
            
            razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
            
            fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
            
            juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
        }
        
    }
    
    /*
        Model: PaymentOptions
        Used By: Catalog
    */
    struct PaymentOptions: Codable {
        
        public var paymentFlows: PaymentFlows?
        
        public var paymentOption: [PaymentOption]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var restrictCheckout: Bool?
        
        public var uid: String?
        
        public var currency: CartCurrency?
        
        public var gstin: String?
        
        public var checkoutMode: String?
        
        public var breakupValues: CartBreakup?
        
        public var lastModified: String?
        
        public var deliveryChargeInfo: [String]?
        
        public var couponText: String?
        
        public var paymentOptions: PaymentOptions?
        
        public var items: [CartProductInfo]?
        
        public var isValid: Bool?
        
        public var cartId: Int?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case restrictCheckout = "restrict_checkout"
            
            case uid = "uid"
            
            case currency = "currency"
            
            case gstin = "gstin"
            
            case checkoutMode = "checkout_mode"
            
            case breakupValues = "breakup_values"
            
            case lastModified = "last_modified"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case couponText = "coupon_text"
            
            case paymentOptions = "payment_options"
            
            case items = "items"
            
            case isValid = "is_valid"
            
            case cartId = "cart_id"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: AddProductCart
        Used By: Catalog
    */
    struct AddProductCart: Codable {
        
        public var itemSize: String?
        
        public var itemId: Int?
        
        public var articleAssignment: [String: Any]?
        
        public var pos: Bool?
        
        public var sellerId: Int?
        
        public var quantity: Int?
        
        public var display: String?
        
        public var articleId: String?
        
        public var storeId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemSize = "item_size"
            
            case itemId = "item_id"
            
            case articleAssignment = "article_assignment"
            
            case pos = "pos"
            
            case sellerId = "seller_id"
            
            case quantity = "quantity"
            
            case display = "display"
            
            case articleId = "article_id"
            
            case storeId = "store_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            itemSize = try? container.decode(String.self, forKey: .itemSize)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
            
            pos = try? container.decode(Bool.self, forKey: .pos)
            
            sellerId = try? container.decode(Int.self, forKey: .sellerId)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            display = try? container.decode(String.self, forKey: .display)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            storeId = try? container.decode(Int.self, forKey: .storeId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            try? container.encodeIfPresent(pos, forKey: .pos)
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
        }
        
    }
    
    /*
        Model: AddCartRequest
        Used By: Catalog
    */
    struct AddCartRequest: Codable {
        
        public var items: [AddProductCart]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var success: String?
        
        public var partial: Bool?
        
        public var cart: CartResponse?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case partial = "partial"
            
            case cart = "cart"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(String.self, forKey: .success)
            
            partial = try? container.decode(Bool.self, forKey: .partial)
            
            cart = try? container.decode(CartResponse.self, forKey: .cart)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(partial, forKey: .partial)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: UpdateProductCart
        Used By: Catalog
    */
    struct UpdateProductCart: Codable {
        
        public var itemSize: Int?
        
        public var itemId: Int?
        
        public var itemIndex: Int?
        
        public var articleId: String?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemSize = "item_size"
            
            case itemId = "item_id"
            
            case itemIndex = "item_index"
            
            case articleId = "article_id"
            
            case quantity = "quantity"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            itemSize = try? container.decode(Int.self, forKey: .itemSize)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
        }
        
    }
    
    /*
        Model: UpdateCartRequest
        Used By: Catalog
    */
    struct UpdateCartRequest: Codable {
        
        public var items: [UpdateProductCart]?
        
        public var operation: String
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case operation = "operation"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([UpdateProductCart].self, forKey: .items)
            
            operation = try container.decode(String.self, forKey: .operation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
        }
        
    }
    
    /*
        Model: UpdateCartResponse
        Used By: Catalog
    */
    struct UpdateCartResponse: Codable {
        
        public var success: String?
        
        public var cart: CartResponse?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case cart = "cart"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(String.self, forKey: .success)
            
            cart = try? container.decode(CartResponse.self, forKey: .cart)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CartItemCountResponse
        Used By: Catalog
    */
    struct CartItemCountResponse: Codable {
        
        public var userCartItemsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var current: Int?
        
        public var total: Int?
        
        public var hasPrevious: Bool?
        
        public var hasNext: Bool?
        
        public var totalItemCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case total = "total"
            
            case hasPrevious = "has_previous"
            
            case hasNext = "has_next"
            
            case totalItemCount = "total_item_count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
            
        }
        
    }
    
    /*
        Model: Coupon
        Used By: Catalog
    */
    struct Coupon: Codable {
        
        public var couponValue: Double?
        
        public var minimumCartValue: Double?
        
        public var uid: Int?
        
        public var isApplicable: Bool?
        
        public var title: String?
        
        public var subTitle: String?
        
        public var maxDiscountValue: Double?
        
        public var isApplied: Bool?
        
        public var couponCode: String?
        
        public var expiresOn: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponValue = "coupon_value"
            
            case minimumCartValue = "minimum_cart_value"
            
            case uid = "uid"
            
            case isApplicable = "is_applicable"
            
            case title = "title"
            
            case subTitle = "sub_title"
            
            case maxDiscountValue = "max_discount_value"
            
            case isApplied = "is_applied"
            
            case couponCode = "coupon_code"
            
            case expiresOn = "expires_on"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponValue = try? container.decode(Double.self, forKey: .couponValue)
            
            minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
            
            title = try? container.decode(String.self, forKey: .title)
            
            subTitle = try? container.decode(String.self, forKey: .subTitle)
            
            maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            couponCode = try? container.decode(String.self, forKey: .couponCode)
            
            expiresOn = try? container.decode(String.self, forKey: .expiresOn)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: GetCouponResponse
        Used By: Catalog
    */
    struct GetCouponResponse: Codable {
        
        public var page: PageCoupon?
        
        public var availableCouponList: [Coupon]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var couponCode: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: RawCartCoupon
        Used By: Catalog
    */
    struct RawCartCoupon: Codable {
        
        public var deliveryCharge: Double?
        
        public var mrpTotal: Double?
        
        public var codCharge: Double?
        
        public var discount: Double?
        
        public var fyndCash: Double?
        
        public var coupon: Double?
        
        public var convenienceFee: Double?
        
        public var subtotal: Double?
        
        public var total: Double?
        
        public var gstCharges: Double?
        
        public var youSaved: Double?
        
        public var vog: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryCharge = "delivery_charge"
            
            case mrpTotal = "mrp_total"
            
            case codCharge = "cod_charge"
            
            case discount = "discount"
            
            case fyndCash = "fynd_cash"
            
            case coupon = "coupon"
            
            case convenienceFee = "convenience_fee"
            
            case subtotal = "subtotal"
            
            case total = "total"
            
            case gstCharges = "gst_charges"
            
            case youSaved = "you_saved"
            
            case vog = "vog"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
            
            mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
            
            codCharge = try? container.decode(Double.self, forKey: .codCharge)
            
            discount = try? container.decode(Double.self, forKey: .discount)
            
            fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
            
            coupon = try? container.decode(Double.self, forKey: .coupon)
            
            convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
            
            subtotal = try? container.decode(Double.self, forKey: .subtotal)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
            
            youSaved = try? container.decode(Double.self, forKey: .youSaved)
            
            vog = try? container.decode(Double.self, forKey: .vog)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
        }
        
    }
    
    /*
        Model: CartCoupon
        Used By: Catalog
    */
    struct CartCoupon: Codable {
        
        public var uid: Int?
        
        public var value: Int?
        
        public var code: String?
        
        public var type: String?
        
        public var isApplied: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case value = "value"
            
            case code = "code"
            
            case type = "type"
            
            case isApplied = "is_applied"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            value = try? container.decode(Int.self, forKey: .value)
            
            code = try? container.decode(String.self, forKey: .code)
            
            type = try? container.decode(String.self, forKey: .type)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: SaveCoupon
        Used By: Catalog
    */
    struct SaveCoupon: Codable {
        
        public var loyaltyPoints: LoyaltyPoints?
        
        public var raw: RawCartCoupon?
        
        public var display: [String]?
        
        public var coupon: CartCoupon?
        

        public enum CodingKeys: String, CodingKey {
            
            case loyaltyPoints = "loyalty_points"
            
            case raw = "raw"
            
            case display = "display"
            
            case coupon = "coupon"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
            raw = try? container.decode(RawCartCoupon.self, forKey: .raw)
            
            display = try? container.decode([String].self, forKey: .display)
            
            coupon = try? container.decode(CartCoupon.self, forKey: .coupon)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
        }
        
    }
    
    /*
        Model: SaveCouponResponse
        Used By: Catalog
    */
    struct SaveCouponResponse: Codable {
        
        public var restrictCheckout: Bool?
        
        public var uid: Int?
        
        public var gstin: String?
        
        public var checkoutMode: String?
        
        public var breakupValues: SaveCoupon?
        
        public var lastModified: String?
        
        public var deliveryChargeInfo: String?
        
        public var couponText: String?
        
        public var items: [String]?
        
        public var isValid: Bool?
        
        public var cartId: Int?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case restrictCheckout = "restrict_checkout"
            
            case uid = "uid"
            
            case gstin = "gstin"
            
            case checkoutMode = "checkout_mode"
            
            case breakupValues = "breakup_values"
            
            case lastModified = "last_modified"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case couponText = "coupon_text"
            
            case items = "items"
            
            case isValid = "is_valid"
            
            case cartId = "cart_id"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            items = try? container.decode([String].self, forKey: .items)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: OfferSeller
        Used By: Catalog
    */
    struct OfferSeller: Codable {
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            name = try? container.decode(String.self, forKey: .name)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
        }
        
    }
    
    /*
        Model: OfferPrice
        Used By: Catalog
    */
    struct OfferPrice: Codable {
        
        public var currencyCode: String?
        
        public var marked: Int?
        
        public var bulkEffective: Double?
        
        public var effective: Int?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case marked = "marked"
            
            case bulkEffective = "bulk_effective"
            
            case effective = "effective"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            marked = try? container.decode(Int.self, forKey: .marked)
            
            bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
            
            effective = try? container.decode(Int.self, forKey: .effective)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
        }
        
    }
    
    /*
        Model: OfferItem
        Used By: Catalog
    */
    struct OfferItem: Codable {
        
        public var margin: Int?
        
        public var price: OfferPrice?
        
        public var type: String?
        
        public var quantity: Int?
        
        public var total: Double?
        
        public var best: Bool?
        
        public var autoApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case margin = "margin"
            
            case price = "price"
            
            case type = "type"
            
            case quantity = "quantity"
            
            case total = "total"
            
            case best = "best"
            
            case autoApplied = "auto_applied"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            margin = try? container.decode(Int.self, forKey: .margin)
            
            price = try? container.decode(OfferPrice.self, forKey: .price)
            
            type = try? container.decode(String.self, forKey: .type)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            best = try? container.decode(Bool.self, forKey: .best)
            
            autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(margin, forKey: .margin)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(best, forKey: .best)
            
            try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
            
        }
        
    }
    
    /*
        Model: BulkPriceOffer
        Used By: Catalog
    */
    struct BulkPriceOffer: Codable {
        
        public var seller: OfferSeller?
        
        public var offers: [OfferItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case seller = "seller"
            
            case offers = "offers"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            seller = try? container.decode(OfferSeller.self, forKey: .seller)
            
            offers = try? container.decode([OfferItem].self, forKey: .offers)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            try? container.encodeIfPresent(offers, forKey: .offers)
            
        }
        
    }
    
    /*
        Model: BulkPriceResponse
        Used By: Catalog
    */
    struct BulkPriceResponse: Codable {
        
        public var data: [BulkPriceOffer]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var longitude: Double?
        
        public var latitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var uid: Int?
        
        public var area: String?
        
        public var geoLocation: GeoLocation?
        
        public var meta: [String: Any]?
        
        public var checkoutMode: String?
        
        public var countryCode: String?
        
        public var areaCodeSlug: String?
        
        public var address: String?
        
        public var areaCode: String?
        
        public var addressId: Int?
        
        public var name: String?
        
        public var email: String?
        
        public var isDefaultAddress: Bool?
        
        public var country: String?
        
        public var isActive: Bool?
        
        public var state: String?
        
        public var addressType: String?
        
        public var userId: String?
        
        public var city: String?
        
        public var phone: Int?
        
        public var landmark: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case area = "area"
            
            case geoLocation = "geo_location"
            
            case meta = "meta"
            
            case checkoutMode = "checkout_mode"
            
            case countryCode = "country_code"
            
            case areaCodeSlug = "area_code_slug"
            
            case address = "address"
            
            case areaCode = "area_code"
            
            case addressId = "address_id"
            
            case name = "name"
            
            case email = "email"
            
            case isDefaultAddress = "is_default_address"
            
            case country = "country"
            
            case isActive = "is_active"
            
            case state = "state"
            
            case addressType = "address_type"
            
            case userId = "user_id"
            
            case city = "city"
            
            case phone = "phone"
            
            case landmark = "landmark"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            area = try? container.decode(String.self, forKey: .area)
            
            geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
            
            address = try? container.decode(String.self, forKey: .address)
            
            areaCode = try? container.decode(String.self, forKey: .areaCode)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            name = try? container.decode(String.self, forKey: .name)
            
            email = try? container.decode(String.self, forKey: .email)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            country = try? container.decode(String.self, forKey: .country)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            state = try? container.decode(String.self, forKey: .state)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            city = try? container.decode(String.self, forKey: .city)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
        }
        
    }
    
    /*
        Model: GetAddressResponse
        Used By: Catalog
    */
    struct GetAddressResponse: Codable {
        
        public var address: [Address]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var address: String?
        
        public var name: String?
        
        public var pincode: Int?
        
        public var email: String?
        
        public var area: String?
        
        public var addressType: String?
        
        public var isDefaultAddress: Bool?
        
        public var phone: Int?
        
        public var landmark: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case name = "name"
            
            case pincode = "pincode"
            
            case email = "email"
            
            case area = "area"
            
            case addressType = "address_type"
            
            case isDefaultAddress = "is_default_address"
            
            case phone = "phone"
            
            case landmark = "landmark"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address = try? container.decode(String.self, forKey: .address)
            
            name = try? container.decode(String.self, forKey: .name)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            email = try? container.decode(String.self, forKey: .email)
            
            area = try? container.decode(String.self, forKey: .area)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
        }
        
    }
    
    /*
        Model: SaveAddressResponse
        Used By: Catalog
    */
    struct SaveAddressResponse: Codable {
        
        public var isDefaultAddress: Bool?
        
        public var addressId: Int?
        
        public var success: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var address: String?
        
        public var name: String?
        
        public var pincode: Int?
        
        public var email: String?
        
        public var area: String?
        
        public var addressType: String?
        
        public var isDefaultAddress: Bool?
        
        public var phone: Int?
        
        public var landmark: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case name = "name"
            
            case pincode = "pincode"
            
            case email = "email"
            
            case area = "area"
            
            case addressType = "address_type"
            
            case isDefaultAddress = "is_default_address"
            
            case phone = "phone"
            
            case landmark = "landmark"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address = try? container.decode(String.self, forKey: .address)
            
            name = try? container.decode(String.self, forKey: .name)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            email = try? container.decode(String.self, forKey: .email)
            
            area = try? container.decode(String.self, forKey: .area)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
        }
        
    }
    
    /*
        Model: UpdateAddressResponse
        Used By: Catalog
    */
    struct UpdateAddressResponse: Codable {
        
        public var isUpdated: Bool?
        
        public var addressId: Int?
        
        public var success: Bool?
        
        public var isDefaultAddress: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isUpdated = "is_updated"
            
            case addressId = "address_id"
            
            case success = "success"
            
            case isDefaultAddress = "is_default_address"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
        }
        
    }
    
    /*
        Model: DeleteAddressResponse
        Used By: Catalog
    */
    struct DeleteAddressResponse: Codable {
        
        public var addressId: Int?
        
        public var isDeleted: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var uid: String?
        
        public var addressId: String?
        
        public var billingAddressId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var paymentMode: String?
        
        public var uid: Int?
        
        public var addressId: Int?
        
        public var merchantCode: String?
        
        public var aggregatorName: String?
        
        public var paymentIdentifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMode = "payment_mode"
            
            case uid = "uid"
            
            case addressId = "address_id"
            
            case merchantCode = "merchant_code"
            
            case aggregatorName = "aggregator_name"
            
            case paymentIdentifier = "payment_identifier"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentMode = try? container.decode(String.self, forKey: .paymentMode)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            merchantCode = try? container.decode(String.self, forKey: .merchantCode)
            
            aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
            
            paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
        }
        
    }
    
    /*
        Model: ShipmentResponse
        Used By: Catalog
    */
    struct ShipmentResponse: Codable {
        
        public var dpOptions: [String: Any]?
        
        public var shipmentType: String?
        
        public var boxType: String?
        
        public var fulfillmentId: Int?
        
        public var promise: String?
        
        public var items: [CartProductInfo]?
        
        public var shipments: Int?
        
        public var dpId: Int?
        
        public var fulfillmentType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpOptions = "dp_options"
            
            case shipmentType = "shipment_type"
            
            case boxType = "box_type"
            
            case fulfillmentId = "fulfillment_id"
            
            case promise = "promise"
            
            case items = "items"
            
            case shipments = "shipments"
            
            case dpId = "dp_id"
            
            case fulfillmentType = "fulfillment_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
            
            shipmentType = try? container.decode(String.self, forKey: .shipmentType)
            
            boxType = try? container.decode(String.self, forKey: .boxType)
            
            fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
            
            promise = try? container.decode(String.self, forKey: .promise)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            shipments = try? container.decode(Int.self, forKey: .shipments)
            
            dpId = try? container.decode(Int.self, forKey: .dpId)
            
            fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
        }
        
    }
    
    /*
        Model: CartShipmentsResponse
        Used By: Catalog
    */
    struct CartShipmentsResponse: Codable {
        
        public var restrictCheckout: Bool?
        
        public var uid: String?
        
        public var currency: CartCurrency?
        
        public var gstin: String?
        
        public var checkoutMode: String?
        
        public var breakupValues: CartBreakup?
        
        public var lastModified: String?
        
        public var deliveryChargeInfo: [String]?
        
        public var couponText: String?
        
        public var shipments: [ShipmentResponse]?
        
        public var paymentOptions: PaymentOptions?
        
        public var isValid: Bool?
        
        public var cartId: Int?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case restrictCheckout = "restrict_checkout"
            
            case uid = "uid"
            
            case currency = "currency"
            
            case gstin = "gstin"
            
            case checkoutMode = "checkout_mode"
            
            case breakupValues = "breakup_values"
            
            case lastModified = "last_modified"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case couponText = "coupon_text"
            
            case shipments = "shipments"
            
            case paymentOptions = "payment_options"
            
            case isValid = "is_valid"
            
            case cartId = "cart_id"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CartCheckoutRequest
        Used By: Catalog
    */
    struct CartCheckoutRequest: Codable {
        
        public var staff: [String: Any]?
        
        public var paymentMode: String
        
        public var billingAddress: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var addressId: Int?
        
        public var paymentParams: [String: Any]?
        
        public var billingAddressId: Int?
        
        public var orderingStore: Int?
        
        public var extraMeta: [String: Any]?
        
        public var aggregator: String?
        
        public var fyndstoreEmpId: String?
        
        public var merchantCode: String?
        
        public var callbackUrl: String?
        
        public var paymentAutoConfirm: Bool?
        
        public var paymentIdentifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case staff = "staff"
            
            case paymentMode = "payment_mode"
            
            case billingAddress = "billing_address"
            
            case meta = "meta"
            
            case addressId = "address_id"
            
            case paymentParams = "payment_params"
            
            case billingAddressId = "billing_address_id"
            
            case orderingStore = "ordering_store"
            
            case extraMeta = "extra_meta"
            
            case aggregator = "aggregator"
            
            case fyndstoreEmpId = "fyndstore_emp_id"
            
            case merchantCode = "merchant_code"
            
            case callbackUrl = "callback_url"
            
            case paymentAutoConfirm = "payment_auto_confirm"
            
            case paymentIdentifier = "payment_identifier"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            staff = try? container.decode([String: Any].self, forKey: .staff)
            
            paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
            
            billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
            
            orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
            
            extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
            
            aggregator = try? container.decode(String.self, forKey: .aggregator)
            
            fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
            
            merchantCode = try? container.decode(String.self, forKey: .merchantCode)
            
            callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
            
            paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
            
            paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(staff, forKey: .staff)
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
        }
        
    }
    
    /*
        Model: CheckCart
        Used By: Catalog
    */
    struct CheckCart: Codable {
        
        public var restrictCheckout: Bool?
        
        public var uid: String?
        
        public var storeCode: String?
        
        public var breakupValues: CartBreakup?
        
        public var deliveryChargeInfo: [String]?
        
        public var codAvailable: Bool?
        
        public var currency: CartCurrency?
        
        public var checkoutMode: String?
        
        public var lastModified: String?
        
        public var paymentOptions: PaymentOptions?
        
        public var items: [CartProductInfo]?
        
        public var codCharges: Int?
        
        public var deliveryCharges: Int?
        
        public var cartId: Int?
        
        public var message: String?
        
        public var orderId: String?
        
        public var deliveryChargeOrderValue: Int?
        
        public var couponText: String?
        
        public var isValid: Bool?
        
        public var codMessage: String?
        
        public var storeEmps: [[String: Any]]?
        
        public var userType: String?
        
        public var gstin: String?
        
        public var errorMessage: String?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case restrictCheckout = "restrict_checkout"
            
            case uid = "uid"
            
            case storeCode = "store_code"
            
            case breakupValues = "breakup_values"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case codAvailable = "cod_available"
            
            case currency = "currency"
            
            case checkoutMode = "checkout_mode"
            
            case lastModified = "last_modified"
            
            case paymentOptions = "payment_options"
            
            case items = "items"
            
            case codCharges = "cod_charges"
            
            case deliveryCharges = "delivery_charges"
            
            case cartId = "cart_id"
            
            case message = "message"
            
            case orderId = "order_id"
            
            case deliveryChargeOrderValue = "delivery_charge_order_value"
            
            case couponText = "coupon_text"
            
            case isValid = "is_valid"
            
            case codMessage = "cod_message"
            
            case storeEmps = "store_emps"
            
            case userType = "user_type"
            
            case gstin = "gstin"
            
            case errorMessage = "error_message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            storeCode = try? container.decode(String.self, forKey: .storeCode)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            codCharges = try? container.decode(Int.self, forKey: .codCharges)
            
            deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
            deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            codMessage = try? container.decode(String.self, forKey: .codMessage)
            
            storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
            
            userType = try? container.decode(String.self, forKey: .userType)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            errorMessage = try? container.decode(String.self, forKey: .errorMessage)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(codMessage, forKey: .codMessage)
            
            try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: OrderData
        Used By: Catalog
    */
    struct OrderData: Codable {
        
        public var orderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var cart: CheckCart?
        
        public var orderId: String?
        
        public var appInterceptUrl: String?
        
        public var success: Bool?
        
        public var callbackUrl: String?
        
        public var data: OrderData?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cart = "cart"
            
            case orderId = "order_id"
            
            case appInterceptUrl = "app_intercept_url"
            
            case success = "success"
            
            case callbackUrl = "callback_url"
            
            case data = "data"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cart = try? container.decode(CheckCart.self, forKey: .cart)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
            appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
            
            data = try? container.decode(OrderData.self, forKey: .data)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CartMetaRequest
        Used By: Catalog
    */
    struct CartMetaRequest: Codable {
        
        public var gstin: String?
        
        public var checkoutMode: String?
        
        public var comment: String?
        
        public var pickUpCustomerDetails: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstin = "gstin"
            
            case checkoutMode = "checkout_mode"
            
            case comment = "comment"
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            comment = try? container.decode(String.self, forKey: .comment)
            
            pickUpCustomerDetails = try? container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
        }
        
    }
    
    /*
        Model: CartMetaResponse
        Used By: Catalog
    */
    struct CartMetaResponse: Codable {
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var errors: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var uid: Int
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var shareUrl: String?
        
        public var token: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var token: String?
        
        public var createdOn: String?
        
        public var meta: [String: Any]?
        
        public var user: [String: Any]?
        
        public var source: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case createdOn = "created_on"
            
            case meta = "meta"
            
            case user = "user"
            
            case source = "source"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            token = try? container.decode(String.self, forKey: .token)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
            source = try? container.decode([String: Any].self, forKey: .source)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
        }
        
    }
    
    /*
        Model: SharedCart
        Used By: Catalog
    */
    struct SharedCart: Codable {
        
        public var restrictCheckout: Bool?
        
        public var uid: String?
        
        public var currency: CartCurrency?
        
        public var gstin: String?
        
        public var checkoutMode: String?
        
        public var breakupValues: CartBreakup?
        
        public var lastModified: String?
        
        public var deliveryChargeInfo: [String]?
        
        public var couponText: String?
        
        public var paymentOptions: PaymentOptions?
        
        public var items: [CartProductInfo]?
        
        public var isValid: Bool?
        
        public var cartId: Int?
        
        public var sharedCartDetails: SharedCartDetails?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case restrictCheckout = "restrict_checkout"
            
            case uid = "uid"
            
            case currency = "currency"
            
            case gstin = "gstin"
            
            case checkoutMode = "checkout_mode"
            
            case breakupValues = "breakup_values"
            
            case lastModified = "last_modified"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case couponText = "coupon_text"
            
            case paymentOptions = "payment_options"
            
            case items = "items"
            
            case isValid = "is_valid"
            
            case cartId = "cart_id"
            
            case sharedCartDetails = "shared_cart_details"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: SharedCartResponse
        Used By: Catalog
    */
    struct SharedCartResponse: Codable {
        
        public var cart: SharedCart?
        
        public var error: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cart = "cart"
            
            case error = "error"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cart = try? container.decode(SharedCart.self, forKey: .cart)
            
            error = try? container.decode(String.self, forKey: .error)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
        }
        
    }
    
    /*
        Model: TicketList
        Used By: Catalog
    */
    struct TicketList: Codable {
        
        public var docs: [Ticket]?
        
        public var filters: Filter?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var docs: [TicketHistory]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var docs: [CustomForm]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var slug: String
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var loginRequired: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var content: TicketContent?
        
        public var category: String?
        
        public var source: String?
        
        public var status: String?
        
        public var priority: String?
        
        public var assignedTo: AgentChangePayload?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
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
        
        public var agentId: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var uniqueName: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: CloseVideoRoomResponse
        Used By: Catalog
    */
    struct CloseVideoRoomResponse: Codable {
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomPayload
        Used By: Catalog
    */
    struct CreateVideoRoomPayload: Codable {
        
        public var uniqueName: String
        
        public var notify: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var priorities: Priority
        
        public var categories: Category?
        
        public var statuses: Status
        
        public var assignees: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var value: [String: Any]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var response: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var accessToken: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var participants: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var ticket: Ticket
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var applicationId: String?
        
        public var companyId: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var userAgent: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var aspectRatio: String?
        
        public var id: String?
        
        public var secureUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: TicketContent
        Used By: Catalog
    */
    struct TicketContent: Codable {
        
        public var title: String
        
        public var description: String?
        
        public var attachments: [Asset]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var code: Double?
        
        public var error: [String: Any]?
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var status: String
        
        public var priority: String
        
        public var category: String
        
        public var content: TicketContent
        

        public enum CodingKeys: String, CodingKey {
            
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
            
            content = try container.decode(TicketContent.self, forKey: .content)
            
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
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var key: String
        
        public var display: String
        
        public var form: CustomForm?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var title: String
        
        public var titleColor: String
        
        public var backgroundColor: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var duration: Double
        
        public var message: String
        
        public var successMessage: String
        
        public var failureMessage: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var applicationId: String
        
        public var slug: String
        
        public var headerImage: String?
        
        public var title: String
        
        public var description: String?
        
        public var loginRequired: Bool
        
        public var shouldNotify: Bool
        
        public var successMessage: String?
        
        public var submitButton: SubmitButton?
        
        public var inputs: [[String: Any]]
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var pollForAssignment: PollForAssignment?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var type: String
        
        public var value: [String: Any]
        
        public var ticketId: String
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var context: TicketContext?
        
        public var createdOn: CreatedOn?
        
        public var responseId: String?
        
        public var content: TicketContent?
        
        public var ticketId: String
        
        public var category: Category
        
        public var source: String
        
        public var status: Status
        
        public var priority: Priority
        
        public var createdBy: [String: Any]?
        
        public var assignedTo: [String: Any]?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
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
        
        public var size: Int?
        
        public var itemTotal: Int?
        
        public var hasNext: Bool?
        
        public var type: String?
        
        public var current: Int?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [ThemesSchema]?
        
        public var page: PaginationSchema?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var themeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var parentTheme: String?
        
        public var appliedTheme: String?
        
        public var upgrade: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [[String: Any]]?
        
        public var kind: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case kind = "kind"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            kind = try? container.decode(String.self, forKey: .kind)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
        }
        
    }
    
    /*
        Model: ThemesSchema
        Used By: Catalog
    */
    struct ThemesSchema: Codable {
        
        public var application: String?
        
        public var applied: Bool?
        
        public var customized: Bool?
        
        public var published: Bool?
        
        public var archived: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var version: String?
        
        public var parentThemeVersion: String?
        
        public var parentTheme: String?
        
        public var information: [String: Any]?
        
        public var tags: [String]?
        
        public var src: [String: Any]?
        
        public var assets: [String: Any]?
        
        public var availablePages: [[String: Any]]?
        
        public var pages: [String: Any]?
        
        public var availableSections: [availableSectionSchema]?
        
        public var sections: [sectionSchema]?
        
        public var constants: [String: Any]?
        
        public var styles: [String: Any]?
        
        public var config: [String: Any]?
        
        public var settings: [String: Any]?
        
        public var font: [String: Any]?
        
        public var id: String?
        
        public var v: Int?
        
        public var colors: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var text: String?
        
        public var path: String?
        
        public var type: String?
        
        public var value: String?
        
        public var sections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var blocks: [[String: Any]]?
        
        public var name: String?
        
        public var label: String?
        
        public var props: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var pageKey: String?
        
        public var pageSections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var verified: Bool?
        
        public var active: Bool?
        
        public var countryCode: String?
        
        public var phone: String?
        
        public var primary: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var countryCode: String?
        
        public var phone: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        
        public var gender: String?
        
        public var dob: String?
        
        public var profilePicUrl: String?
        
        public var androidHash: String?
        
        public var sender: String?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var email: String?
        
        public var action: String?
        
        public var token: String?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var requestId: String?
        
        public var registerToken: String?
        
        public var otp: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var mobile: String?
        
        public var countryCode: String?
        
        public var action: String?
        
        public var token: String?
        
        public var androidHash: String?
        
        public var force: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var oldPassword: String?
        
        public var newPassword: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var gender: String?
        
        public var email: String?
        
        public var password: String?
        
        public var phone: [String: Any]?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var token: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var code: String?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var email: String?
        
        public var gRecaptchaResponse: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var gRecaptchaResponse: String?
        
        public var password: String?
        
        public var username: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var countryCode: String?
        
        public var gRecaptchaResponse: String?
        
        public var mobile: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var isSignedIn: Bool?
        
        public var oauth2: [String: Any]?
        
        public var profile: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var registerToken: String?
        
        public var userExists: Bool?
        
        public var user: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var user: UserSchema?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var user: UserSchema?
        
        public var userExists: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var result: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var logout: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var resendToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var sessions: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var user: UserSchema?
        
        public var verifyMobileLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var user: UserSchema?
        
        public var verifyEmailLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var verifyMobileLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var verifyEmailLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [UserSchema]?
        
        public var page: PaginationSchema?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var display: String?
        
        public var lookAndFeel: [String: Any]?
        
        public var updatedAt: String?
        
        public var active: Bool?
        
        public var forgotPassword: Bool?
        
        public var login: [String: Any]?
        
        public var skipCaptcha: Bool?
        
        public var name: String?
        
        public var meta: [String: Any]?
        
        public var id: String?
        
        public var social: [String: Any]?
        
        public var requiredFields: [String: Any]?
        
        public var registerRequiredFields: [String: Any]?
        
        public var skipLogin: Bool?
        
        public var flashCard: [String: Any]?
        
        public var subtext: String?
        
        public var socialTokens: [String: Any]?
        
        public var createdAt: String?
        
        public var register: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var phoneNumbers: [[String: Any]]?
        
        public var emails: [[String: Any]]?
        
        public var gender: String?
        
        public var active: Bool?
        
        public var profilePicUrl: String?
        
        public var username: String?
        
        public var accountType: String?
        
        public var uid: String?
        
        public var debug: [String: Any]?
        
        public var hasOldPasswordHash: Bool?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        Model: ApplicationLegal
        Used By: Catalog
    */
    struct ApplicationLegal: Codable {
        
        public var application: String?
        
        public var tnc: String?
        
        public var policy: String?
        
        public var faq: [[String: Any]]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case tnc = "tnc"
            
            case policy = "policy"
            
            case faq = "faq"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
            case v = "__v"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            tnc = try? container.decode(String.self, forKey: .tnc)
            
            policy = try? container.decode(String.self, forKey: .policy)
            
            faq = try? container.decode([[String: Any]].self, forKey: .faq)
            
            id = try? container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            v = try? container.decode(Double.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(tnc, forKey: .tnc)
            
            try? container.encodeIfPresent(policy, forKey: .policy)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: Seo
        Used By: Catalog
    */
    struct Seo: Codable {
        
        public var app: String
        
        public var robotsTxt: String?
        
        public var sitemapEnabled: Bool?
        
        public var customMetaTags: [[String: Any]]?
        
        public var details: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case robotsTxt = "robots_txt"
            
            case sitemapEnabled = "sitemap_enabled"
            
            case customMetaTags = "custom_meta_tags"
            
            case details = "details"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            app = try container.decode(String.self, forKey: .app)
            
            robotsTxt = try? container.decode(String.self, forKey: .robotsTxt)
            
            sitemapEnabled = try? container.decode(Bool.self, forKey: .sitemapEnabled)
            
            customMetaTags = try? container.decode([[String: Any]].self, forKey: .customMetaTags)
            
            details = try? container.decode([String: Any].self, forKey: .details)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            try? container.encodeIfPresent(robotsTxt, forKey: .robotsTxt)
            
            try? container.encodeIfPresent(sitemapEnabled, forKey: .sitemapEnabled)
            
            try? container.encodeIfPresent(customMetaTags, forKey: .customMetaTags)
            
            try? container.encodeIfPresent(details, forKey: .details)
            
        }
        
    }
    
    /*
        Model: StorefrontAnnouncement
        Used By: Catalog
    */
    struct StorefrontAnnouncement: Codable {
        
        public var announcements: [String: Any]?
        
        public var refreshRate: Int?
        
        public var refreshPages: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
            case refreshRate = "refresh_rate"
            
            case refreshPages = "refresh_pages"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            announcements = try? container.decode([String: Any].self, forKey: .announcements)
            
            refreshRate = try? container.decode(Int.self, forKey: .refreshRate)
            
            refreshPages = try? container.decode([String].self, forKey: .refreshPages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
            try? container.encodeIfPresent(refreshRate, forKey: .refreshRate)
            
            try? container.encodeIfPresent(refreshPages, forKey: .refreshPages)
            
        }
        
    }
    
    /*
        Model: AdminAnnouncementSchema
        Used By: Catalog
    */
    struct AdminAnnouncementSchema: Codable {
        
        public var id: String?
        
        public var platform: [String]?
        
        public var title: String?
        
        public var announcement: String?
        
        public var pages: [[String: Any]]?
        
        public var editorMeta: [String: Any]?
        
        public var author: [String: Any]?
        
        public var createdAt: String?
        
        public var app: String?
        
        public var modifiedAt: String?
        
        public var schedule: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case platform = "platform"
            
            case title = "title"
            
            case announcement = "announcement"
            
            case pages = "pages"
            
            case editorMeta = "editor_meta"
            
            case author = "author"
            
            case createdAt = "created_at"
            
            case app = "app"
            
            case modifiedAt = "modified_at"
            
            case schedule = "_schedule"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            platform = try? container.decode([String].self, forKey: .platform)
            
            title = try? container.decode(String.self, forKey: .title)
            
            announcement = try? container.decode(String.self, forKey: .announcement)
            
            pages = try? container.decode([[String: Any]].self, forKey: .pages)
            
            editorMeta = try? container.decode([String: Any].self, forKey: .editorMeta)
            
            author = try? container.decode([String: Any].self, forKey: .author)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            app = try? container.decode(String.self, forKey: .app)
            
            modifiedAt = try? container.decode(String.self, forKey: .modifiedAt)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(announcement, forKey: .announcement)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
        }
        
    }
    
    /*
        Model: ScheduleSchema
        Used By: Catalog
    */
    struct ScheduleSchema: Codable {
        
        public var schedule: [String: Any]?
        
        public var published: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
            case published = "published"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
        }
        
    }
    
    /*
        Model: GetAnnouncementListSchema
        Used By: Catalog
    */
    struct GetAnnouncementListSchema: Codable {
        
        public var items: [AdminAnnouncementSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([AdminAnnouncementSchema].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: CreateAnnouncementSchema
        Used By: Catalog
    */
    struct CreateAnnouncementSchema: Codable {
        
        public var message: String?
        
        public var data: AdminAnnouncementSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            data = try? container.decode(AdminAnnouncementSchema.self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CreateFaqResponseSchema
        Used By: Catalog
    */
    struct CreateFaqResponseSchema: Codable {
        
        public var faq: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faq = "faq"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faq = try? container.decode([String: Any].self, forKey: .faq)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
        }
        
    }
    
    /*
        Model: CreateFaqSchema
        Used By: Catalog
    */
    struct CreateFaqSchema: Codable {
        
        public var faq: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faq = "faq"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faq = try? container.decode([String: Any].self, forKey: .faq)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
        }
        
    }
    
    /*
        Model: GetFaqSchema
        Used By: Catalog
    */
    struct GetFaqSchema: Codable {
        
        public var faqs: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faqs = "faqs"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faqs = try? container.decode([[String: Any]].self, forKey: .faqs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faqs, forKey: .faqs)
            
        }
        
    }
    
    /*
        Model: UpdateFaqCategoryRequestSchema
        Used By: Catalog
    */
    struct UpdateFaqCategoryRequestSchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: CreateFaqCategoryRequestSchema
        Used By: Catalog
    */
    struct CreateFaqCategoryRequestSchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: CreateFaqCategorySchema
        Used By: Catalog
    */
    struct CreateFaqCategorySchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: GetFaqCategoriesSchema
        Used By: Catalog
    */
    struct GetFaqCategoriesSchema: Codable {
        
        public var categories: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case categories = "categories"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            categories = try? container.decode([[String: Any]].self, forKey: .categories)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
        }
        
    }
    
    /*
        Model: GetFaqCategoryByIdOrSlugSchema
        Used By: Catalog
    */
    struct GetFaqCategoryByIdOrSlugSchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: Navigation
        Used By: Catalog
    */
    struct Navigation: Codable {
        
        public var name: String?
        
        public var slug: String?
        
        public var orientation: String?
        
        public var createdBy: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var id: String?
        
        public var position: String?
        
        public var application: String?
        
        public var platform: String?
        
        public var navigation: NavigationRef?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case orientation = "orientation"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case id = "_id"
            
            case position = "position"
            
            case application = "application"
            
            case platform = "platform"
            
            case navigation = "navigation"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            orientation = try? container.decode(String.self, forKey: .orientation)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            position = try? container.decode(String.self, forKey: .position)
            
            application = try? container.decode(String.self, forKey: .application)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            navigation = try? container.decode(NavigationRef.self, forKey: .navigation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(navigation, forKey: .navigation)
            
        }
        
    }
    
    /*
        Model: NavigationRef
        Used By: Catalog
    */
    struct NavigationRef: Codable {
        
        public var acl: [[String: Any]]?
        
        public var localeLanguage: [String: Any]?
        
        public var image: String?
        
        public var type: String?
        
        public var action: [String: Any]?
        
        public var active: Bool?
        
        public var display: String?
        
        public var sortOrder: Int?
        
        public var subNavigation: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case acl = "acl"
            
            case localeLanguage = "_locale_language"
            
            case image = "image"
            
            case type = "type"
            
            case action = "action"
            
            case active = "active"
            
            case display = "display"
            
            case sortOrder = "sort_order"
            
            case subNavigation = "sub_navigation"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            acl = try? container.decode([[String: Any]].self, forKey: .acl)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
            image = try? container.decode(String.self, forKey: .image)
            
            type = try? container.decode(String.self, forKey: .type)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            display = try? container.decode(String.self, forKey: .display)
            
            sortOrder = try? container.decode(Int.self, forKey: .sortOrder)
            
            subNavigation = try? container.decode([String: Any].self, forKey: .subNavigation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(acl, forKey: .acl)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(sortOrder, forKey: .sortOrder)
            
            try? container.encodeIfPresent(subNavigation, forKey: .subNavigation)
            
        }
        
    }
    
    /*
        Model: LandingPage
        Used By: Catalog
    */
    struct LandingPage: Codable {
        
        public var slug: String?
        
        public var action: [String: Any]?
        
        public var platform: [[String: Any]]?
        
        public var createdBy: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var id: String?
        
        public var application: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case action = "action"
            
            case platform = "platform"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case id = "_id"
            
            case application = "application"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
            platform = try? container.decode([[String: Any]].self, forKey: .platform)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            application = try? container.decode(String.self, forKey: .application)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
        }
        
    }
    
    /*
        Model: Slideshow
        Used By: Catalog
    */
    struct Slideshow: Codable {
        
        public var id: String?
        
        public var slug: String?
        
        public var dateMeta: [String: Any]?
        
        public var application: String?
        
        public var name: String?
        
        public var platform: String?
        
        public var configuration: [String: Any]?
        
        public var media: [[String: Any]]?
        
        public var active: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case slug = "slug"
            
            case dateMeta = "date_meta"
            
            case application = "application"
            
            case name = "name"
            
            case platform = "platform"
            
            case configuration = "configuration"
            
            case media = "media"
            
            case active = "active"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            application = try? container.decode(String.self, forKey: .application)
            
            name = try? container.decode(String.self, forKey: .name)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            configuration = try? container.decode([String: Any].self, forKey: .configuration)
            
            media = try? container.decode([[String: Any]].self, forKey: .media)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
        }
        
    }
    
    /*
        Model: AnnouncementsResponseSchema
        Used By: Catalog
    */
    struct AnnouncementsResponseSchema: Codable {
        
        public var announcements: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            announcements = try? container.decode([[String: Any]].self, forKey: .announcements)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
        }
        
    }
    
    /*
        Model: FaqResponseSchema
        Used By: Catalog
    */
    struct FaqResponseSchema: Codable {
        
        public var faqs: [Faq]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faqs = "faqs"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faqs = try? container.decode([Faq].self, forKey: .faqs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faqs, forKey: .faqs)
            
        }
        
    }
    
    /*
        Model: UpdateHandpickedSchema
        Used By: Catalog
    */
    struct UpdateHandpickedSchema: Codable {
        
        public var tag: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tag = "tag"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tag = try? container.decode([String: Any].self, forKey: .tag)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
        }
        
    }
    
    /*
        Model: RemoveHandpickedSchema
        Used By: Catalog
    */
    struct RemoveHandpickedSchema: Codable {
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: TagsSchema
        Used By: Catalog
    */
    struct TagsSchema: Codable {
        
        public var application: String?
        
        public var id: String?
        
        public var tags: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case id = "_id"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            id = try? container.decode(String.self, forKey: .id)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: CreateTagRequestSchema
        Used By: Catalog
    */
    struct CreateTagRequestSchema: Codable {
        
        public var tags: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: Faq
        Used By: Catalog
    */
    struct Faq: Codable {
        
        public var id: String?
        
        public var question: String?
        
        public var answer: String?
        
        public var slug: String?
        
        public var application: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case question = "question"
            
            case answer = "answer"
            
            case slug = "slug"
            
            case application = "application"
            
            case v = "__v"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            question = try? container.decode(String.self, forKey: .question)
            
            answer = try? container.decode(String.self, forKey: .answer)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            application = try? container.decode(String.self, forKey: .application)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(question, forKey: .question)
            
            try? container.encodeIfPresent(answer, forKey: .answer)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: CustomPage
        Used By: Catalog
    */
    struct CustomPage: Codable {
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CustomBlog
        Used By: Catalog
    */
    struct CustomBlog: Codable {
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: Support
        Used By: Catalog
    */
    struct Support: Codable {
        
        public var created: Bool?
        
        public var id: String?
        
        public var configType: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var contact: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case created = "created"
            
            case id = "_id"
            
            case configType = "config_type"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case contact = "contact"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            created = try? container.decode(Bool.self, forKey: .created)
            
            id = try? container.decode(String.self, forKey: .id)
            
            configType = try? container.decode(String.self, forKey: .configType)
            
            application = try? container.decode(String.self, forKey: .application)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            contact = try? container.decode([String: Any].self, forKey: .contact)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    /*
        Model: CommunicationConsentReq
        Used By: Catalog
    */
    struct CommunicationConsentReq: Codable {
        
        public var response: String?
        
        public var action: String?
        
        public var channel: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var appId: String?
        
        public var userId: String?
        
        public var channels: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var appId: String?
        
        public var userId: String?
        
        public var channels: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var action: String?
        
        public var bundleIdentifier: String?
        
        public var pushToken: String?
        
        public var uniqueDeviceId: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var id: String?
        
        public var bundleIdentifier: String?
        
        public var pushToken: String?
        
        public var uniqueDeviceId: String?
        
        public var type: String?
        
        public var platform: String?
        
        public var applicationId: String?
        
        public var userId: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var expiredAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var link: String?
        
        public var svg: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var link: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var ios: RedirectDevice?
        
        public var android: RedirectDevice?
        
        public var web: [String: Any]?
        
        public var forceWeb: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var title: String
        
        public var url: String
        
        public var hash: String?
        
        public var active: String?
        
        public var type: String?
        
        public var expireAt: String?
        
        public var enableTracking: Bool?
        
        public var redirects: Redirects?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var title: String?
        
        public var url: [String: Any]?
        
        public var createdBy: String?
        
        public var personalized: String?
        
        public var appRedirect: String?
        
        public var fallback: String?
        
        public var active: Bool?
        
        public var id: String?
        
        public var enableTracking: Bool?
        
        public var expireAt: Bool?
        
        public var application: String?
        
        public var userId: Bool?
        
        public var createdAt: Bool?
        
        public var updatedAt: Bool?
        
        public var redirects: Redirects?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var url: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var expiry: Int
        
        public var url: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var fileName: String
        
        public var filePath: String
        
        public var contentType: String
        
        public var method: String
        
        public var namespace: String
        
        public var operation: String
        
        public var size: Int
        
        public var upload: Upload
        
        public var cdn: CDN
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var fileName: String
        
        public var contentType: String
        
        public var size: Int
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var id: String
        
        public var fileName: String
        
        public var filePath: String
        
        public var contentType: String
        
        public var method: String
        
        public var namespace: String
        
        public var operation: String
        
        public var size: Int
        
        public var upload: Upload
        
        public var cdn: CDN
        
        public var success: String
        
        public var tags: [String]?
        
        public var createdOn: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var key: String
        
        public var configType: String
        
        public var api: String?
        
        public var sdk: Bool?
        
        public var merchantKey: String?
        
        public var pin: String?
        
        public var userId: String?
        
        public var merchantId: String?
        
        public var verifyApi: String?
        
        public var secret: String
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case configType = "config_type"
            
            case api = "api"
            
            case sdk = "sdk"
            
            case merchantKey = "merchant_key"
            
            case pin = "pin"
            
            case userId = "user_id"
            
            case merchantId = "merchant_id"
            
            case verifyApi = "verify_api"
            
            case secret = "secret"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            configType = try container.decode(String.self, forKey: .configType)
            
            api = try? container.decode(String.self, forKey: .api)
            
            sdk = try? container.decode(Bool.self, forKey: .sdk)
            
            merchantKey = try? container.decode(String.self, forKey: .merchantKey)
            
            pin = try? container.decode(String.self, forKey: .pin)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            merchantId = try? container.decode(String.self, forKey: .merchantId)
            
            verifyApi = try? container.decode(String.self, forKey: .verifyApi)
            
            secret = try container.decode(String.self, forKey: .secret)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            try? container.encodeIfPresent(api, forKey: .api)
            
            try? container.encodeIfPresent(sdk, forKey: .sdk)
            
            try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
            
            try? container.encodeIfPresent(pin, forKey: .pin)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(merchantId, forKey: .merchantId)
            
            try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
        }
        
    }
    
    /*
        Model: AggregatorsConfigDetailResponse
        Used By: Catalog
    */
    struct AggregatorsConfigDetailResponse: Codable {
        
        public var razorpay: AggregatorConfigDetail?
        
        public var juspay: AggregatorConfigDetail?
        
        public var rupifi: AggregatorConfigDetail?
        
        public var env: String
        
        public var mswipe: AggregatorConfigDetail?
        
        public var success: Bool
        
        public var stripe: AggregatorConfigDetail?
        
        public var payumoney: AggregatorConfigDetail?
        
        public var simpl: AggregatorConfigDetail?
        
        public var ccavenue: AggregatorConfigDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpay = "razorpay"
            
            case juspay = "juspay"
            
            case rupifi = "rupifi"
            
            case env = "env"
            
            case mswipe = "mswipe"
            
            case success = "success"
            
            case stripe = "stripe"
            
            case payumoney = "payumoney"
            
            case simpl = "simpl"
            
            case ccavenue = "ccavenue"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
            
            juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
            
            rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
            
            env = try container.decode(String.self, forKey: .env)
            
            mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
            
            payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
            
            simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
            
            ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            try? container.encodeIfPresent(rupifi, forKey: .rupifi)
            
            try? container.encodeIfPresent(env, forKey: .env)
            
            try? container.encodeIfPresent(mswipe, forKey: .mswipe)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            try? container.encodeIfPresent(payumoney, forKey: .payumoney)
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
        }
        
    }
    
    /*
        Model: ErrorCodeAndDescription
        Used By: Catalog
    */
    struct ErrorCodeAndDescription: Codable {
        
        public var code: String
        
        public var description: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var error: ErrorCodeAndDescription
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: AttachCardRequest
        Used By: Catalog
    */
    struct AttachCardRequest: Codable {
        
        public var cardId: String
        
        public var refresh: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cardId = "card_id"
            
            case refresh = "refresh"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cardId = try container.decode(String.self, forKey: .cardId)
            
            refresh = try? container.decode(Bool.self, forKey: .refresh)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            try? container.encodeIfPresent(refresh, forKey: .refresh)
            
        }
        
    }
    
    /*
        Model: AttachCardsResponse
        Used By: Catalog
    */
    struct AttachCardsResponse: Codable {
        
        public var data: [String: Any]
        
        public var message: String?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try container.decode([String: Any].self, forKey: .data)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: CardPaymentGateway
        Used By: Catalog
    */
    struct CardPaymentGateway: Codable {
        
        public var api: String?
        
        public var aggregator: String
        
        public var customerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var cards: CardPaymentGateway
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var data: [[String: Any]]?
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([[String: Any]].self, forKey: .data)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: DeletehCardRequest
        Used By: Catalog
    */
    struct DeletehCardRequest: Codable {
        
        public var cardId: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var message: String?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var merchantParams: [String: Any]
        
        public var phoneNumber: String
        
        public var aggregator: String
        
        public var payload: String
        
        public var transactionAmountInPaise: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantParams = "merchant_params"
            
            case phoneNumber = "phone_number"
            
            case aggregator = "aggregator"
            
            case payload = "payload"
            
            case transactionAmountInPaise = "transaction_amount_in_paise"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
            
            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            payload = try container.decode(String.self, forKey: .payload)
            
            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
            
        }
        
    }
    
    /*
        Model: ValidateCustomerResponse
        Used By: Catalog
    */
    struct ValidateCustomerResponse: Codable {
        
        public var data: [String: Any]
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try container.decode([String: Any].self, forKey: .data)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ChargeCustomerRequest
        Used By: Catalog
    */
    struct ChargeCustomerRequest: Codable {
        
        public var amount: Int
        
        public var transactionToken: String?
        
        public var orderId: String
        
        public var verified: Bool?
        
        public var aggregator: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case transactionToken = "transaction_token"
            
            case orderId = "order_id"
            
            case verified = "verified"
            
            case aggregator = "aggregator"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            transactionToken = try? container.decode(String.self, forKey: .transactionToken)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: ChargeCustomerResponse
        Used By: Catalog
    */
    struct ChargeCustomerResponse: Codable {
        
        public var deliveryAddressId: String?
        
        public var status: String
        
        public var message: String
        
        public var success: Bool
        
        public var orderId: String
        
        public var aggregator: String
        
        public var cartId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryAddressId = "delivery_address_id"
            
            case status = "status"
            
            case message = "message"
            
            case success = "success"
            
            case orderId = "order_id"
            
            case aggregator = "aggregator"
            
            case cartId = "cart_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
            
            status = try container.decode(String.self, forKey: .status)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            cartId = try? container.decode(String.self, forKey: .cartId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
        }
        
    }
    
    /*
        Model: PaymentInitializationRequest
        Used By: Catalog
    */
    struct PaymentInitializationRequest: Codable {
        
        public var timeout: Int
        
        public var customerId: String
        
        public var razorpayPaymentId: String
        
        public var virtualId: String?
        
        public var aggregatorOrderId: String
        
        public var merchantOrderId: String
        
        public var aggregator: String
        
        public var pollingUrl: String
        
        public var method: String
        

        public enum CodingKeys: String, CodingKey {
            
            case timeout = "timeout"
            
            case customerId = "customer_id"
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case virtualId = "virtual_id"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case merchantOrderId = "merchant_order_id"
            
            case aggregator = "aggregator"
            
            case pollingUrl = "polling_url"
            
            case method = "method"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timeout = try container.decode(Int.self, forKey: .timeout)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
            
            virtualId = try? container.decode(String.self, forKey: .virtualId)
            
            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
            
            method = try container.decode(String.self, forKey: .method)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            try? container.encodeIfPresent(virtualId, forKey: .virtualId)
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
        }
        
    }
    
    /*
        Model: PaymentInitializationResponse
        Used By: Catalog
    */
    struct PaymentInitializationResponse: Codable {
        
        public var status: String
        
        public var amount: Int
        
        public var message: String?
        
        public var customerId: String
        
        public var contact: String
        
        public var success: Bool
        
        public var vpa: String
        
        public var email: String
        
        public var orderId: String
        
        public var merchantOrderId: String
        
        public var aggregator: String
        
        public var method: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case amount = "amount"
            
            case message = "message"
            
            case customerId = "customer_id"
            
            case contact = "contact"
            
            case success = "success"
            
            case vpa = "vpa"
            
            case email = "email"
            
            case orderId = "order_id"
            
            case merchantOrderId = "merchant_order_id"
            
            case aggregator = "aggregator"
            
            case method = "method"
            
            case currency = "currency"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try container.decode(String.self, forKey: .status)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            message = try? container.decode(String.self, forKey: .message)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            contact = try container.decode(String.self, forKey: .contact)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            vpa = try container.decode(String.self, forKey: .vpa)
            
            email = try container.decode(String.self, forKey: .email)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            method = try container.decode(String.self, forKey: .method)
            
            currency = try container.decode(String.self, forKey: .currency)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
        }
        
    }
    
    /*
        Model: PaymentStatusUpdateRequest
        Used By: Catalog
    */
    struct PaymentStatusUpdateRequest: Codable {
        
        public var status: String
        
        public var amount: Int
        
        public var customerId: String
        
        public var contact: String
        
        public var vpa: String
        
        public var email: String
        
        public var orderId: String
        
        public var merchantOrderId: String
        
        public var aggregator: String
        
        public var method: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case amount = "amount"
            
            case customerId = "customer_id"
            
            case contact = "contact"
            
            case vpa = "vpa"
            
            case email = "email"
            
            case orderId = "order_id"
            
            case merchantOrderId = "merchant_order_id"
            
            case aggregator = "aggregator"
            
            case method = "method"
            
            case currency = "currency"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try container.decode(String.self, forKey: .status)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            contact = try container.decode(String.self, forKey: .contact)
            
            vpa = try container.decode(String.self, forKey: .vpa)
            
            email = try container.decode(String.self, forKey: .email)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            method = try container.decode(String.self, forKey: .method)
            
            currency = try container.decode(String.self, forKey: .currency)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
        }
        
    }
    
    /*
        Model: PaymentStatusUpdateResponse
        Used By: Catalog
    */
    struct PaymentStatusUpdateResponse: Codable {
        
        public var aggregatorName: String
        
        public var retry: Bool
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregatorName = "aggregator_name"
            
            case retry = "retry"
            
            case status = "status"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
            
            retry = try container.decode(Bool.self, forKey: .retry)
            
            status = try container.decode(String.self, forKey: .status)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(retry, forKey: .retry)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
        }
        
    }
    
    /*
        Model: PaymentOptionsDetails
        Used By: Catalog
    */
    struct PaymentOptionsDetails: Codable {
        
        public var paymentOption: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var paymentOptions: PaymentOptionsDetails
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentOptions = try container.decode(PaymentOptionsDetails.self, forKey: .paymentOptions)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryDetails
        Used By: Catalog
    */
    struct OrderBeneficiaryDetails: Codable {
        
        public var title: String
        
        public var id: Int
        
        public var comment: Bool?
        
        public var mobile: Bool?
        
        public var displayName: String
        
        public var accountHolder: String
        
        public var accountNo: String
        
        public var transferMode: String
        
        public var bankName: String
        
        public var ifscCode: String
        
        public var email: String
        
        public var branchName: Bool?
        
        public var createdOn: String
        
        public var subtitle: String
        
        public var isActive: Bool
        
        public var beneficiaryId: String
        
        public var modifiedOn: String
        
        public var address: String
        
        public var delightsUserName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case id = "id"
            
            case comment = "comment"
            
            case mobile = "mobile"
            
            case displayName = "display_name"
            
            case accountHolder = "account_holder"
            
            case accountNo = "account_no"
            
            case transferMode = "transfer_mode"
            
            case bankName = "bank_name"
            
            case ifscCode = "ifsc_code"
            
            case email = "email"
            
            case branchName = "branch_name"
            
            case createdOn = "created_on"
            
            case subtitle = "subtitle"
            
            case isActive = "is_active"
            
            case beneficiaryId = "beneficiary_id"
            
            case modifiedOn = "modified_on"
            
            case address = "address"
            
            case delightsUserName = "delights_user_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            id = try container.decode(Int.self, forKey: .id)
            
            comment = try? container.decode(Bool.self, forKey: .comment)
            
            mobile = try? container.decode(Bool.self, forKey: .mobile)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            email = try container.decode(String.self, forKey: .email)
            
            branchName = try? container.decode(Bool.self, forKey: .branchName)
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            subtitle = try container.decode(String.self, forKey: .subtitle)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            address = try container.decode(String.self, forKey: .address)
            
            delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryResponse
        Used By: Catalog
    */
    struct OrderBeneficiaryResponse: Codable {
        
        public var beneficiaries: [OrderBeneficiaryDetails]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var code: String
        
        public var description: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var bankName: String
        
        public var branchName: String
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case bankName = "bank_name"
            
            case branchName = "branch_name"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
        Used By: Catalog
    */
    struct ErrorCodeDescription: Codable {
        
        public var code: String
        
        public var description: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var requestId: String
        
        public var otp: String
        
        public var hashKey: String
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case otp = "otp"
            
            case hashKey = "hash_key"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            otp = try container.decode(String.self, forKey: .otp)
            
            hashKey = try container.decode(String.self, forKey: .hashKey)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryViaOtpVerificationResponse
        Used By: Catalog
    */
    struct AddBeneficiaryViaOtpVerificationResponse: Codable {
        
        public var requestId: String
        
        public var otp: String
        
        public var hashKey: String
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case otp = "otp"
            
            case hashKey = "hash_key"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            otp = try container.decode(String.self, forKey: .otp)
            
            hashKey = try container.decode(String.self, forKey: .hashKey)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
        }
        
    }
    
    /*
        Model: WrongOtpError
        Used By: Catalog
    */
    struct WrongOtpError: Codable {
        
        public var description: String
        
        public var success: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var mobile: String
        
        public var accountHolder: String
        
        public var accountNo: String
        
        public var bankName: String
        
        public var email: String
        
        public var ifscCode: String
        
        public var branchName: String
        
        public var address: String
        
        public var comment: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobile = "mobile"
            
            case accountHolder = "account_holder"
            
            case accountNo = "account_no"
            
            case bankName = "bank_name"
            
            case email = "email"
            
            case ifscCode = "ifsc_code"
            
            case branchName = "branch_name"
            
            case address = "address"
            
            case comment = "comment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mobile = try container.decode(String.self, forKey: .mobile)
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            email = try container.decode(String.self, forKey: .email)
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            address = try container.decode(String.self, forKey: .address)
            
            comment = try? container.decode(String.self, forKey: .comment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Catalog
    */
    struct AddBeneficiaryDetailsRequest: Codable {
        
        public var transferMode: String
        
        public var orderId: String
        
        public var shipmentId: String
        
        public var delights: Bool
        
        public var details: BankDetails
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case orderId = "order_id"
            
            case shipmentId = "shipment_id"
            
            case delights = "delights"
            
            case details = "details"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            delights = try container.decode(Bool.self, forKey: .delights)
            
            details = try container.decode(BankDetails.self, forKey: .details)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            try? container.encodeIfPresent(details, forKey: .details)
            
        }
        
    }
    
    /*
        Model: RefundAccountResponse
        Used By: Catalog
    */
    struct RefundAccountResponse: Codable {
        
        public var data: [String: Any]?
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: WalletOtpRequest
        Used By: Catalog
    */
    struct WalletOtpRequest: Codable {
        
        public var countryCode: String
        
        public var mobile: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case mobile = "mobile"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try container.decode(String.self, forKey: .countryCode)
            
            mobile = try container.decode(Bool.self, forKey: .mobile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
        }
        
    }
    
    /*
        Model: WalletOtpResponse
        Used By: Catalog
    */
    struct WalletOtpResponse: Codable {
        
        public var requestId: String
        
        public var isVerifiedFlag: String
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case isVerifiedFlag = "is_verified_flag"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: SetDefaultBeneficiaryRequest
        Used By: Catalog
    */
    struct SetDefaultBeneficiaryRequest: Codable {
        
        public var orderId: String
        
        public var beneficiaryId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case beneficiaryId = "beneficiary_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
        }
        
    }
    
    /*
        Model: SetDefaultBeneficiaryResponse
        Used By: Catalog
    */
    struct SetDefaultBeneficiaryResponse: Codable {
        
        public var isBeneficiarySet: Bool
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var order: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var orders: [[String: Any]]
        
        public var page: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var shipment: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var reasons: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var shipments: [String: Any]
        
        public var forceTransition: Bool
        
        public var task: Bool
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var shipments: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var results: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var id: String?
        
        public var points: Double?
        
        public var price: Double?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var articles: [Article]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var articles: [Article]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var hasNext: Bool?
        
        public var hasPrevious: Bool?
        
        public var itemTotal: Int?
        
        public var nextId: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var absolute: Double?
        
        public var currency: String?
        
        public var displayAbsolute: String?
        
        public var displayPercent: String?
        
        public var percent: Double?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var code: Int?
        
        public var exception: String?
        
        public var info: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var schedule: String?
        
        public var active: Bool?
        
        public var applicationId: String?
        
        public var bannerImage: Asset?
        
        public var createdAt: String?
        
        public var infoAction: Action?
        
        public var name: String?
        
        public var rule: [String: Any]?
        
        public var share: ShareMessages?
        
        public var subText: String?
        
        public var text: String?
        
        public var type: String?
        
        public var updatedAt: String?
        
        public var updatedBy: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var currency: String?
        
        public var orderAmount: Double
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var appliedRuleBucket: OrderDiscountRuleBucket?
        
        public var baseDiscount: Discount?
        
        public var discount: Discount?
        
        public var orderAmount: Double?
        
        public var points: Double?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var high: Double?
        
        public var low: Double?
        
        public var max: Double?
        
        public var value: Double?
        
        public var valueType: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var id: String?
        
        public var applicationId: String?
        
        public var claimed: Bool?
        
        public var createdAt: String?
        
        public var expiresOn: String?
        
        public var meta: String?
        
        public var points: Double?
        
        public var remainingPoints: Double?
        
        public var text1: String?
        
        public var text2: String?
        
        public var text3: String?
        
        public var txnName: String?
        
        public var updatedAt: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var history: [PointsHistory]?
        
        public var page: CursorPage?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var points: Double?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var deviceId: String
        
        public var referralCode: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var message: String?
        
        public var points: Double?
        
        public var redeemed: Bool?
        
        public var referrerId: String?
        
        public var referrerInfo: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var referral: Offer?
        
        public var referrerInfo: String?
        
        public var share: ShareMessages?
        
        public var user: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var email: String?
        
        public var facebook: String?
        
        public var fallback: String?
        
        public var message: String?
        
        public var messenger: String?
        
        public var sms: String?
        
        public var text: String?
        
        public var twitter: String?
        
        public var whatsapp: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var answer: Bool?
        
        public var askQuestion: Bool?
        
        public var comment: Bool?
        
        public var rnr: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaList: [AddMediaRequest]?
        
        public var refId: String?
        
        public var refType: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var cloudId: String?
        
        public var cloudName: String?
        
        public var cloudProvider: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaUrl: String?
        
        public var refId: String?
        
        public var refType: String?
        
        public var tags: [String]?
        
        public var thumbnailUrl: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var createdOn: String?
        
        public var description: String?
        
        public var id: String?
        
        public var modifiedOn: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var tags: [TagMeta]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var description: String?
        
        public var name: String
        
        public var slug: String?
        
        public var title: String?
        
        public var type: String
        
        public var value: Double
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var access: Access?
        
        public var mediaCloud: MediaCloud?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var id: String?
        
        public var name: String?
        
        public var provider: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var comment: [String]
        
        public var entityId: String
        
        public var entityType: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var choices: [String]?
        
        public var entityId: String
        
        public var entityType: String
        
        public var maxLen: Int?
        
        public var sortPriority: Int?
        
        public var tags: [String]?
        
        public var text: String
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var appVersion: String?
        
        public var platform: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var key: String?
        
        public var name: String?
        
        public var namespace: String?
        
        public var path: String?
        
        public var provider: String?
        
        public var secret: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var cloud: Cloud?
        
        public var comment: [String]?
        
        public var description: String?
        
        public var id: String?
        
        public var type: String?
        
        public var url: Url?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var hasNext: Bool?
        
        public var hasPrevious: Bool?
        
        public var itemTotal: Int?
        
        public var nextId: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var itemTotal: Int?
        
        public var size: Int?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var description: String?
        
        public var entityId: String
        
        public var entityType: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var description: String?
        
        public var name: String
        
        public var slug: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var media: [MediaMeta]?
        
        public var name: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var abusive: Bool?
        
        public var active: Bool?
        
        public var approve: Bool?
        
        public var description: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var description: String?
        
        public var name: String
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var active: Bool?
        
        public var approve: Bool?
        
        public var comment: [String]
        
        public var id: String
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var approve: Bool?
        
        public var archive: Bool?
        
        public var entityType: String?
        
        public var ids: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var active: Bool?
        
        public var approve: Bool?
        
        public var choices: [String]?
        
        public var id: String?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var active: Bool?
        
        public var application: String?
        
        public var approve: Bool?
        
        public var archive: Bool?
        
        public var attributesRating: [AttributeObject]?
        
        public var description: String?
        
        public var deviceMeta: DeviceMeta?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaResource: [MediaMeta]?
        
        public var rating: Double?
        
        public var reviewId: String?
        
        public var templateId: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var action: String?
        
        public var active: Bool?
        
        public var id: String?
        
        public var refId: String?
        
        public var refType: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var main: String?
        
        public var thumbnail: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var action: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var refId: String?
        
        public var refType: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [String: Any]?
        
        public var page: PageCursor?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var ids: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [String: Any]?
        
        public var page: PageNumber?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var articleUid: String
        
        public var quantity: Int?
        
        public var shipmentType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case articleUid = "article_uid"
            
            case quantity = "quantity"
            
            case shipmentType = "shipment_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articleUid = try container.decode(String.self, forKey: .articleUid)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            shipmentType = try container.decode(String.self, forKey: .shipmentType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articleUid, forKey: .articleUid)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
        }
        
    }
    
    /*
        Model: UpdateCartShipmentRequest
        Used By: Catalog
    */
    struct UpdateCartShipmentRequest: Codable {
        
        public var shipments: [UpdateCartShipmentItem]
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var availableModes: [String]?
        
        public var pickupStores: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
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
        
        public var items: [StoreDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
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