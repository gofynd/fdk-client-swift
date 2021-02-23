

/*
    Model: ProductListingActionPage,
    Service: Catalog
*/

public struct ProductListingActionPage: Codable {
    
    public var query: [String: Any]?
    
    public var type: String?
    

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
    Model: ProductListingAction,
    Service: Catalog
*/

public struct ProductListingAction: Codable {
    
    public var type: String?
    
    public var page: ProductListingActionPage?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: Media,
    Service: Catalog
*/

public struct Media: Codable {
    
    public var type: String?
    
    public var url: String?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case url = "url"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        url = try? container.decode(String.self, forKey: .url)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(url, forKey: .url)
        
    }
}

/*
    Model: ProductBrand,
    Service: Catalog
*/

public struct ProductBrand: Codable {
    
    public var name: String?
    
    public var action: ProductListingAction?
    
    public var logo: Media?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case action = "action"
        
        case logo = "logo"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: ProductDetailAttribute,
    Service: Catalog
*/

public struct ProductDetailAttribute: Codable {
    
    public var type: String?
    
    public var value: String?
    
    public var key: String?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case value = "value"
        
        case key = "key"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode(String.self, forKey: .value)
        
        key = try? container.decode(String.self, forKey: .key)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
    }
}

/*
    Model: ProductDetailGroupedAttribute,
    Service: Catalog
*/

public struct ProductDetailGroupedAttribute: Codable {
    
    public var details: [ProductDetailAttribute]?
    
    public var title: String?
    

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
    Model: ProductDetail,
    Service: Catalog
*/

public struct ProductDetail: Codable {
    
    public var promoMeta: [String: Any]?
    
    public var productOnlineDate: String?
    
    public var slug: String?
    
    public var attributes: [String: Any]?
    
    public var shortDescription: String?
    
    public var highlights: [String]?
    
    public var teaserTag: [String: Any]?
    
    public var brand: ProductBrand?
    
    public var color: String?
    
    public var description: String?
    
    public var itemType: String?
    
    public var categories: [ProductBrand]?
    
    public var medias: [Media]?
    
    public var groupedAttributes: [ProductDetailGroupedAttribute]?
    
    public var imageNature: String?
    
    public var rating: Double?
    
    public var name: String?
    
    public var similars: [String]?
    
    public var uid: Int?
    
    public var tryouts: [String]?
    
    public var hasVariant: Bool?
    
    public var type: String?
    
    public var ratingCount: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case promoMeta = "promo_meta"
        
        case productOnlineDate = "product_online_date"
        
        case slug = "slug"
        
        case attributes = "attributes"
        
        case shortDescription = "short_description"
        
        case highlights = "highlights"
        
        case teaserTag = "teaser_tag"
        
        case brand = "brand"
        
        case color = "color"
        
        case description = "description"
        
        case itemType = "item_type"
        
        case categories = "categories"
        
        case medias = "medias"
        
        case groupedAttributes = "grouped_attributes"
        
        case imageNature = "image_nature"
        
        case rating = "rating"
        
        case name = "name"
        
        case similars = "similars"
        
        case uid = "uid"
        
        case tryouts = "tryouts"
        
        case hasVariant = "has_variant"
        
        case type = "type"
        
        case ratingCount = "rating_count"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        attributes = try? container.decode([String: Any].self, forKey: .attributes)
        
        shortDescription = try? container.decode(String.self, forKey: .shortDescription)
        
        highlights = try? container.decode([String].self, forKey: .highlights)
        
        teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
        
        brand = try? container.decode(ProductBrand.self, forKey: .brand)
        
        color = try? container.decode(String.self, forKey: .color)
        
        description = try? container.decode(String.self, forKey: .description)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        categories = try? container.decode([ProductBrand].self, forKey: .categories)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
        
        imageNature = try? container.decode(String.self, forKey: .imageNature)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        name = try? container.decode(String.self, forKey: .name)
        
        similars = try? container.decode([String].self, forKey: .similars)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        tryouts = try? container.decode([String].self, forKey: .tryouts)
        
        hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
        
        type = try? container.decode(String.self, forKey: .type)
        
        ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(attributes, forKey: .attributes)
        
        try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        
        try? container.encodeIfPresent(highlights, forKey: .highlights)
        
        try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        
        try? container.encodeIfPresent(imageNature, forKey: .imageNature)
        
        try? container.encodeIfPresent(rating, forKey: .rating)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(similars, forKey: .similars)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        
        try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        
    }
}

/*
    Model: ErrorResponse,
    Service: Catalog
*/

public struct ErrorResponse: Codable {
    
    public var error: String?
    

    enum CodingKeys: String, CodingKey {
        
        case error = "error"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        error = try? container.decode(String.self, forKey: .error)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(error, forKey: .error)
        
    }
}

/*
    Model: ProductSizeStores,
    Service: Catalog
*/

public struct ProductSizeStores: Codable {
    
    public var count: Int?
    

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
    Model: Price,
    Service: Catalog
*/

public struct Price: Codable {
    
    public var max: Double?
    
    public var currencyCode: String?
    
    public var min: Double?
    
    public var currencySymbol: String?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: ProductListingPrice,
    Service: Catalog
*/

public struct ProductListingPrice: Codable {
    
    public var effective: Price?
    
    public var marked: Price?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: ProductSize,
    Service: Catalog
*/

public struct ProductSize: Codable {
    
    public var isAvailable: Bool?
    
    public var quantity: Int?
    
    public var value: String?
    
    public var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isAvailable = "is_available"
        
        case quantity = "quantity"
        
        case value = "value"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        value = try? container.decode(String.self, forKey: .value)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: ProductSizes,
    Service: Catalog
*/

public struct ProductSizes: Codable {
    
    public var stores: ProductSizeStores?
    
    public var discount: String?
    
    public var price: ProductListingPrice?
    
    public var sizeChart: [String: Any]?
    
    public var promoMeta: [String: Any]?
    
    public var sizes: [ProductSize]?
    
    public var sellable: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case stores = "stores"
        
        case discount = "discount"
        
        case price = "price"
        
        case sizeChart = "size_chart"
        
        case promoMeta = "promo_meta"
        
        case sizes = "sizes"
        
        case sellable = "sellable"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        price = try? container.decode(ProductListingPrice.self, forKey: .price)
        
        sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        sizes = try? container.decode([ProductSize].self, forKey: .sizes)
        
        sellable = try? container.decode(Bool.self, forKey: .sellable)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(stores, forKey: .stores)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(sizes, forKey: .sizes)
        
        try? container.encodeIfPresent(sellable, forKey: .sellable)
        
    }
}

/*
    Model: ProductStockPrice,
    Service: Catalog
*/

public struct ProductStockPrice: Codable {
    
    public var currency: String?
    
    public var effective: Double?
    
    public var marked: Double?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: ArticleAssignment,
    Service: Catalog
*/

public struct ArticleAssignment: Codable {
    
    public var level: String?
    
    public var strategy: String?
    

    enum CodingKeys: String, CodingKey {
        
        case level = "level"
        
        case strategy = "strategy"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        level = try? container.decode(String.self, forKey: .level)
        
        strategy = try? container.decode(String.self, forKey: .strategy)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(level, forKey: .level)
        
        try? container.encodeIfPresent(strategy, forKey: .strategy)
        
    }
}

/*
    Model: Seller,
    Service: Catalog
*/

public struct Seller: Codable {
    
    public var name: String?
    
    public var count: Int?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case count = "count"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: Store,
    Service: Catalog
*/

public struct Store: Codable {
    
    public var name: String?
    
    public var count: Int?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case count = "count"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: ProductSizePriceResponse,
    Service: Catalog
*/

public struct ProductSizePriceResponse: Codable {
    
    public var specialBadge: String?
    
    public var pricePerPrice: ProductStockPrice?
    
    public var itemType: String?
    
    public var discount: String?
    
    public var price: ProductStockPrice?
    
    public var strategyWiseListing: [[String: Any]]?
    
    public var promoMeta: [String: Any]?
    
    public var pincode: Int?
    
    public var articleAssignment: ArticleAssignment?
    
    public var sellerCount: Int?
    
    public var quantity: Int?
    
    public var articleId: String?
    
    public var set: [String: Any]?
    
    public var seller: Seller?
    
    public var longLat: [Double]?
    
    public var store: Store?
    

    enum CodingKeys: String, CodingKey {
        
        case specialBadge = "special_badge"
        
        case pricePerPrice = "price_per_price"
        
        case itemType = "item_type"
        
        case discount = "discount"
        
        case price = "price"
        
        case strategyWiseListing = "strategy_wise_listing"
        
        case promoMeta = "promo_meta"
        
        case pincode = "pincode"
        
        case articleAssignment = "article_assignment"
        
        case sellerCount = "seller_count"
        
        case quantity = "quantity"
        
        case articleId = "article_id"
        
        case set = "set"
        
        case seller = "seller"
        
        case longLat = "long_lat"
        
        case store = "store"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        specialBadge = try? container.decode(String.self, forKey: .specialBadge)
        
        pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
        
        sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        set = try? container.decode([String: Any].self, forKey: .set)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        longLat = try? container.decode([Double].self, forKey: .longLat)
        
        store = try? container.decode(Store.self, forKey: .store)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
        
        try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
        try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(set, forKey: .set)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(longLat, forKey: .longLat)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
    }
}

/*
    Model: ProductPage,
    Service: Catalog
*/

public struct ProductPage: Codable {
    
    public var nextId: String?
    
    public var hasNext: Bool?
    
    public var current: Int?
    
    public var hasPrevious: Bool?
    
    public var totalItem: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case nextId = "next_id"
        
        case hasNext = "has_next"
        
        case current = "current"
        
        case hasPrevious = "has_previous"
        
        case totalItem = "total_item"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        nextId = try? container.decode(String.self, forKey: .nextId)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        totalItem = try? container.decode(Int.self, forKey: .totalItem)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(nextId, forKey: .nextId)
        
        try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        
        try? container.encodeIfPresent(current, forKey: .current)
        
        try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        
        try? container.encodeIfPresent(totalItem, forKey: .totalItem)
        
    }
}

/*
    Model: ProductSizeSellerFilter,
    Service: Catalog
*/

public struct ProductSizeSellerFilter: Codable {
    
    public var name: String?
    
    public var isSelected: Bool?
    
    public var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case isSelected = "is_selected"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
    }
}

/*
    Model: ProductSizeSellersResponse,
    Service: Catalog
*/

public struct ProductSizeSellersResponse: Codable {
    
    public var page: ProductPage?
    
    public var sortOn: [ProductSizeSellerFilter]?
    
    public var items: [ProductSizePriceResponse]?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case sortOn = "sort_on"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        sortOn = try? container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)
        
        items = try? container.decode([ProductSizePriceResponse].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: AttributeDetail,
    Service: Catalog
*/

public struct AttributeDetail: Codable {
    
    public var display: String?
    
    public var description: String?
    
    public var key: String?
    

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
    Model: ProductsComparisonResponse,
    Service: Catalog
*/

public struct ProductsComparisonResponse: Codable {
    
    public var attributesMetadata: [AttributeDetail]?
    
    public var items: [ProductDetail]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: ProductCompareResponse,
    Service: Catalog
*/

public struct ProductCompareResponse: Codable {
    
    public var subtitle: String?
    
    public var items: [ProductDetail]?
    
    public var attributesMetadata: [AttributeDetail]?
    
    public var title: String?
    

    enum CodingKeys: String, CodingKey {
        
        case subtitle = "subtitle"
        
        case items = "items"
        
        case attributesMetadata = "attributes_metadata"
        
        case title = "title"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
        attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
        
        title = try? container.decode(String.self, forKey: .title)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
    }
}

/*
    Model: ProductFrequentlyComparedSimilarResponse,
    Service: Catalog
*/

public struct ProductFrequentlyComparedSimilarResponse: Codable {
    
    public var similars: [ProductCompareResponse]?
    

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
    Model: ProductSimilarItem,
    Service: Catalog
*/

public struct ProductSimilarItem: Codable {
    
    public var subtitle: String?
    
    public var items: [ProductDetail]?
    
    public var title: String?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: SimilarProductByTypeResponse,
    Service: Catalog
*/

public struct SimilarProductByTypeResponse: Codable {
    
    public var similars: [ProductSimilarItem]?
    

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
    Model: ProductVariantItemResponse,
    Service: Catalog
*/

public struct ProductVariantItemResponse: Codable {
    
    public var color: String?
    
    public var medias: [Media]?
    
    public var action: ProductListingAction?
    
    public var isAvailable: Bool?
    
    public var name: String?
    
    public var colorName: String?
    
    public var value: String?
    
    public var uid: Int?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case color = "color"
        
        case medias = "medias"
        
        case action = "action"
        
        case isAvailable = "is_available"
        
        case name = "name"
        
        case colorName = "color_name"
        
        case value = "value"
        
        case uid = "uid"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        color = try? container.decode(String.self, forKey: .color)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        name = try? container.decode(String.self, forKey: .name)
        
        colorName = try? container.decode(String.self, forKey: .colorName)
        
        value = try? container.decode(String.self, forKey: .value)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(colorName, forKey: .colorName)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: ProductVariantResponse,
    Service: Catalog
*/

public struct ProductVariantResponse: Codable {
    
    public var header: String?
    
    public var displayType: String?
    
    public var items: [ProductVariantItemResponse]?
    

    enum CodingKeys: String, CodingKey {
        
        case header = "header"
        
        case displayType = "display_type"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        header = try? container.decode(String.self, forKey: .header)
        
        displayType = try? container.decode(String.self, forKey: .displayType)
        
        items = try? container.decode([ProductVariantItemResponse].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(header, forKey: .header)
        
        try? container.encodeIfPresent(displayType, forKey: .displayType)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: ProductVariantsResponse,
    Service: Catalog
*/

public struct ProductVariantsResponse: Codable {
    
    public var variants: [ProductVariantResponse]?
    

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
    Model: CompanyDetail,
    Service: Catalog
*/

public struct CompanyDetail: Codable {
    
    public var name: String?
    
    public var id: Int?
    

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
    Model: StoreDetail,
    Service: Catalog
*/

public struct StoreDetail: Codable {
    
    public var name: String?
    
    public var code: String?
    
    public var city: String?
    
    public var id: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case code = "code"
        
        case city = "city"
        
        case id = "id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        code = try? container.decode(String.self, forKey: .code)
        
        city = try? container.decode(String.self, forKey: .city)
        
        id = try? container.decode(Int.self, forKey: .id)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
    }
}

/*
    Model: ProductStockStatusItem,
    Service: Catalog
*/

public struct ProductStockStatusItem: Codable {
    
    public var price: ProductStockPrice?
    
    public var size: String?
    
    public var quantity: Int?
    
    public var identifier: [String: Any]?
    
    public var itemId: Int?
    
    public var seller: Seller?
    
    public var company: CompanyDetail?
    
    public var store: StoreDetail?
    
    public var uid: String?
    

    enum CodingKeys: String, CodingKey {
        
        case price = "price"
        
        case size = "size"
        
        case quantity = "quantity"
        
        case identifier = "identifier"
        
        case itemId = "item_id"
        
        case seller = "seller"
        
        case company = "company"
        
        case store = "store"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        size = try? container.decode(String.self, forKey: .size)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        identifier = try? container.decode([String: Any].self, forKey: .identifier)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        company = try? container.decode(CompanyDetail.self, forKey: .company)
        
        store = try? container.decode(StoreDetail.self, forKey: .store)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(size, forKey: .size)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(identifier, forKey: .identifier)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(company, forKey: .company)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: ProductStockStatusResponse,
    Service: Catalog
*/

public struct ProductStockStatusResponse: Codable {
    
    public var items: [ProductStockStatusItem]?
    

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
    Model: ProductStockPolling,
    Service: Catalog
*/

public struct ProductStockPolling: Codable {
    
    public var page: ProductPage?
    
    public var items: [ProductStockStatusItem]?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        items = try? container.decode([ProductStockStatusItem].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: ProductFiltersValue,
    Service: Catalog
*/

public struct ProductFiltersValue: Codable {
    
    public var currencySymbol: String?
    
    public var currencyCode: String?
    
    public var isSelected: Bool
    
    public var max: Int?
    
    public var min: Int?
    
    public var selectedMax: Int?
    
    public var queryFormat: String?
    
    public var selectedMin: Int?
    
    public var displayFormat: String?
    
    public var count: Int?
    
    public var value: String
    
    public var display: String
    

    enum CodingKeys: String, CodingKey {
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
        case isSelected = "is_selected"
        
        case max = "max"
        
        case min = "min"
        
        case selectedMax = "selected_max"
        
        case queryFormat = "query_format"
        
        case selectedMin = "selected_min"
        
        case displayFormat = "display_format"
        
        case count = "count"
        
        case value = "value"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        isSelected = try container.decode(Bool.self, forKey: .isSelected)
        
        max = try? container.decode(Int.self, forKey: .max)
        
        min = try? container.decode(Int.self, forKey: .min)
        
        selectedMax = try? container.decode(Int.self, forKey: .selectedMax)
        
        queryFormat = try? container.decode(String.self, forKey: .queryFormat)
        
        selectedMin = try? container.decode(Int.self, forKey: .selectedMin)
        
        displayFormat = try? container.decode(String.self, forKey: .displayFormat)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        value = try container.decode(String.self, forKey: .value)
        
        display = try container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(max, forKey: .max)
        
        try? container.encodeIfPresent(min, forKey: .min)
        
        try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
        
        try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
        
        try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
        
        try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: ProductFiltersKey,
    Service: Catalog
*/

public struct ProductFiltersKey: Codable {
    
    public var name: String
    
    public var display: String
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try container.decode(String.self, forKey: .name)
        
        display = try container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: ProductFilters,
    Service: Catalog
*/

public struct ProductFilters: Codable {
    
    public var values: [ProductFiltersValue]
    
    public var key: ProductFiltersKey
    

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
    Model: ProductSortOn,
    Service: Catalog
*/

public struct ProductSortOn: Codable {
    
    public var name: String?
    
    public var isSelected: Bool?
    
    public var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case isSelected = "is_selected"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
    }
}

/*
    Model: ProductListingDetail,
    Service: Catalog
*/

public struct ProductListingDetail: Codable {
    
    public var promoMeta: [String: Any]?
    
    public var productOnlineDate: String?
    
    public var slug: String?
    
    public var attributes: [String: Any]?
    
    public var shortDescription: String?
    
    public var discount: String?
    
    public var price: ProductListingPrice?
    
    public var highlights: [String]?
    
    public var teaserTag: [String: Any]?
    
    public var brand: ProductBrand?
    
    public var color: String?
    
    public var description: String?
    
    public var itemType: String?
    
    public var categories: [ProductBrand]?
    
    public var medias: [Media]?
    
    public var groupedAttributes: [ProductDetailGroupedAttribute]?
    
    public var imageNature: String?
    
    public var rating: Double?
    
    public var name: String?
    
    public var similars: [String]?
    
    public var uid: Int?
    
    public var tryouts: [String]?
    
    public var hasVariant: Bool?
    
    public var type: String?
    
    public var ratingCount: Int?
    
    public var sellable: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case promoMeta = "promo_meta"
        
        case productOnlineDate = "product_online_date"
        
        case slug = "slug"
        
        case attributes = "attributes"
        
        case shortDescription = "short_description"
        
        case discount = "discount"
        
        case price = "price"
        
        case highlights = "highlights"
        
        case teaserTag = "teaser_tag"
        
        case brand = "brand"
        
        case color = "color"
        
        case description = "description"
        
        case itemType = "item_type"
        
        case categories = "categories"
        
        case medias = "medias"
        
        case groupedAttributes = "grouped_attributes"
        
        case imageNature = "image_nature"
        
        case rating = "rating"
        
        case name = "name"
        
        case similars = "similars"
        
        case uid = "uid"
        
        case tryouts = "tryouts"
        
        case hasVariant = "has_variant"
        
        case type = "type"
        
        case ratingCount = "rating_count"
        
        case sellable = "sellable"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        attributes = try? container.decode([String: Any].self, forKey: .attributes)
        
        shortDescription = try? container.decode(String.self, forKey: .shortDescription)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        price = try? container.decode(ProductListingPrice.self, forKey: .price)
        
        highlights = try? container.decode([String].self, forKey: .highlights)
        
        teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
        
        brand = try? container.decode(ProductBrand.self, forKey: .brand)
        
        color = try? container.decode(String.self, forKey: .color)
        
        description = try? container.decode(String.self, forKey: .description)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        categories = try? container.decode([ProductBrand].self, forKey: .categories)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
        
        imageNature = try? container.decode(String.self, forKey: .imageNature)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        name = try? container.decode(String.self, forKey: .name)
        
        similars = try? container.decode([String].self, forKey: .similars)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        tryouts = try? container.decode([String].self, forKey: .tryouts)
        
        hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
        
        type = try? container.decode(String.self, forKey: .type)
        
        ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
        
        sellable = try? container.decode(Bool.self, forKey: .sellable)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(attributes, forKey: .attributes)
        
        try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(highlights, forKey: .highlights)
        
        try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        
        try? container.encodeIfPresent(imageNature, forKey: .imageNature)
        
        try? container.encodeIfPresent(rating, forKey: .rating)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(similars, forKey: .similars)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        
        try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        
        try? container.encodeIfPresent(sellable, forKey: .sellable)
        
    }
}

/*
    Model: ProductListingResponse,
    Service: Catalog
*/

public struct ProductListingResponse: Codable {
    
    public var filter: [ProductFilters]?
    
    public var page: ProductPage?
    
    public var sortOn: [ProductSortOn]?
    
    public var items: [ProductListingDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case filter = "filter"
        
        case page = "page"
        
        case sortOn = "sort_on"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        filter = try? container.decode([ProductFilters].self, forKey: .filter)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
        
        items = try? container.decode([ProductListingDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(filter, forKey: .filter)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: ImageUrls,
    Service: Catalog
*/

public struct ImageUrls: Codable {
    
    public var portrait: Media?
    
    public var landscape: Media?
    

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
    Model: BrandItem,
    Service: Catalog
*/

public struct BrandItem: Codable {
    
    public var departments: [String]?
    
    public var banners: ImageUrls?
    
    public var discount: String?
    
    public var action: ProductListingAction?
    
    public var logo: Media?
    
    public var name: String?
    
    public var uid: Int?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case departments = "departments"
        
        case banners = "banners"
        
        case discount = "discount"
        
        case action = "action"
        
        case logo = "logo"
        
        case name = "name"
        
        case uid = "uid"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        departments = try? container.decode([String].self, forKey: .departments)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(departments, forKey: .departments)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: BrandListingResponse,
    Service: Catalog
*/

public struct BrandListingResponse: Codable {
    
    public var page: ProductPage?
    
    public var items: [BrandItem]?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        items = try? container.decode([BrandItem].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: BrandDetailResponse,
    Service: Catalog
*/

public struct BrandDetailResponse: Codable {
    
    public var name: String?
    
    public var logo: Media?
    
    public var banners: ImageUrls?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case logo = "logo"
        
        case banners = "banners"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: DepartmentIdentifier,
    Service: Catalog
*/

public struct DepartmentIdentifier: Codable {
    
    public var uid: Int?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: CategoryItems,
    Service: Catalog
*/

public struct CategoryItems: Codable {
    
    public var banners: ImageUrls?
    
    public var childs: [[String: Any]]?
    
    public var action: ProductListingAction?
    
    public var name: String?
    
    public var uid: Int?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case banners = "banners"
        
        case childs = "childs"
        
        case action = "action"
        
        case name = "name"
        
        case uid = "uid"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        childs = try? container.decode([[String: Any]].self, forKey: .childs)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(childs, forKey: .childs)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: DepartmentCategoryTree,
    Service: Catalog
*/

public struct DepartmentCategoryTree: Codable {
    
    public var department: String?
    
    public var items: [CategoryItems]?
    

    enum CodingKeys: String, CodingKey {
        
        case department = "department"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        department = try? container.decode(String.self, forKey: .department)
        
        items = try? container.decode([CategoryItems].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(department, forKey: .department)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: CategoryListingResponse,
    Service: Catalog
*/

public struct CategoryListingResponse: Codable {
    
    public var departments: [DepartmentIdentifier]?
    
    public var data: [DepartmentCategoryTree]?
    

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
    Model: CategoryMetaResponse,
    Service: Catalog
*/

public struct CategoryMetaResponse: Codable {
    
    public var name: String?
    
    public var logo: Media?
    
    public var banners: ImageUrls?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case logo = "logo"
        
        case banners = "banners"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: Page,
    Service: Catalog
*/

public struct Page: Codable {
    
    public var pageNo: Int
    
    public var pageSize: Int
    

    enum CodingKeys: String, CodingKey {
        
        case pageNo = "page_no"
        
        case pageSize = "page_size"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pageNo = try container.decode(Int.self, forKey: .pageNo)
        
        pageSize = try container.decode(Int.self, forKey: .pageSize)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pageNo, forKey: .pageNo)
        
        try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        
    }
}

/*
    Model: HomeListingResponse,
    Service: Catalog
*/

public struct HomeListingResponse: Codable {
    
    public var message: String?
    
    public var page: Page?
    
    public var items: [ProductListingDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        page = try? container.decode(Page.self, forKey: .page)
        
        items = try? container.decode([ProductListingDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: Department,
    Service: Catalog
*/

public struct Department: Codable {
    
    public var priorityOrder: Int?
    
    public var logo: Media?
    
    public var name: String?
    
    public var uid: Int?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case priorityOrder = "priority_order"
        
        case logo = "logo"
        
        case name = "name"
        
        case uid = "uid"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: DepartmentResponse,
    Service: Catalog
*/

public struct DepartmentResponse: Codable {
    
    public var items: [Department]?
    

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
    Model: AutocompleteItem,
    Service: Catalog
*/

public struct AutocompleteItem: Codable {
    
    public var action: [String: Any]?
    
    public var type: String?
    
    public var logo: Media?
    
    public var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case action = "action"
        
        case type = "type"
        
        case logo = "logo"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode([String: Any].self, forKey: .action)
        
        type = try? container.decode(String.self, forKey: .type)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: AutoCompleteResponse,
    Service: Catalog
*/

public struct AutoCompleteResponse: Codable {
    
    public var items: [AutocompleteItem]?
    

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
    Model: CollectionBadge,
    Service: Catalog
*/

public struct CollectionBadge: Codable {
    
    public var color: String?
    
    public var text: String?
    

    enum CodingKeys: String, CodingKey {
        
        case color = "color"
        
        case text = "text"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        color = try? container.decode(String.self, forKey: .color)
        
        text = try? container.decode(String.self, forKey: .text)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(text, forKey: .text)
        
    }
}

/*
    Model: Schedule,
    Service: Catalog
*/

public struct Schedule: Codable {
    
    public var end: String?
    
    public var duration: Int?
    
    public var start: String?
    
    public var cron: String?
    

    enum CodingKeys: String, CodingKey {
        
        case end = "end"
        
        case duration = "duration"
        
        case start = "start"
        
        case cron = "cron"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        end = try? container.decode(String.self, forKey: .end)
        
        duration = try? container.decode(Int.self, forKey: .duration)
        
        start = try? container.decode(String.self, forKey: .start)
        
        cron = try? container.decode(String.self, forKey: .cron)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(end, forKey: .end)
        
        try? container.encodeIfPresent(duration, forKey: .duration)
        
        try? container.encodeIfPresent(start, forKey: .start)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
    }
}

/*
    Model: UserInfo,
    Service: Catalog
*/

public struct UserInfo: Codable {
    
    public var email: String?
    
    public var username: String?
    
    public var userId: String?
    
    public var uid: String?
    

    enum CodingKeys: String, CodingKey {
        
        case email = "email"
        
        case username = "username"
        
        case userId = "user_id"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        email = try? container.decode(String.self, forKey: .email)
        
        username = try? container.decode(String.self, forKey: .username)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(username, forKey: .username)
        
        try? container.encodeIfPresent(userId, forKey: .userId)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: CollectionImage,
    Service: Catalog
*/

public struct CollectionImage: Codable {
    
    public var aspectRatio: String
    
    public var url: String
    

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
    Model: CollectionBanner,
    Service: Catalog
*/

public struct CollectionBanner: Codable {
    
    public var portrait: CollectionImage
    
    public var landscape: CollectionImage
    

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
    Model: SeoDetail,
    Service: Catalog
*/

public struct SeoDetail: Codable {
    
    public var description: String?
    
    public var title: String?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CreateCollection,
    Service: Catalog
*/

public struct CreateCollection: Codable {
    
    public var appId: String
    
    public var badge: CollectionBadge?
    
    public var visibleFacetsKeys: [String]?
    
    public var tags: [String]?
    
    public var slug: String
    
    public var localeLanguage: [String: Any]?
    
    public var schedule: Schedule?
    
    public var modifiedBy: UserInfo?
    
    public var sortOn: String?
    
    public var banners: CollectionBanner
    
    public var query: [String: Any]?
    
    public var allowSort: Bool?
    
    public var customJson: [String: Any]?
    
    public var isActive: Bool?
    
    public var description: String?
    
    public var meta: [String: Any]?
    
    public var logo: CollectionImage
    
    public var allowFacets: Bool?
    
    public var name: String
    
    public var createdBy: UserInfo?
    
    public var published: Bool?
    
    public var seo: SeoDetail?
    
    public var type: String
    

    enum CodingKeys: String, CodingKey {
        
        case appId = "app_id"
        
        case badge = "badge"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case tags = "tags"
        
        case slug = "slug"
        
        case localeLanguage = "_locale_language"
        
        case schedule = "_schedule"
        
        case modifiedBy = "modified_by"
        
        case sortOn = "sort_on"
        
        case banners = "banners"
        
        case query = "query"
        
        case allowSort = "allow_sort"
        
        case customJson = "_custom_json"
        
        case isActive = "is_active"
        
        case description = "description"
        
        case meta = "meta"
        
        case logo = "logo"
        
        case allowFacets = "allow_facets"
        
        case name = "name"
        
        case createdBy = "created_by"
        
        case published = "published"
        
        case seo = "seo"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appId = try container.decode(String.self, forKey: .appId)
        
        badge = try? container.decode(CollectionBadge.self, forKey: .badge)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        tags = try? container.decode([String].self, forKey: .tags)
        
        slug = try container.decode(String.self, forKey: .slug)
        
        localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
        
        schedule = try? container.decode(Schedule.self, forKey: .schedule)
        
        modifiedBy = try? container.decode(UserInfo.self, forKey: .modifiedBy)
        
        sortOn = try? container.decode(String.self, forKey: .sortOn)
        
        banners = try container.decode(CollectionBanner.self, forKey: .banners)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        customJson = try? container.decode([String: Any].self, forKey: .customJson)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        description = try? container.decode(String.self, forKey: .description)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        logo = try container.decode(CollectionImage.self, forKey: .logo)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        name = try container.decode(String.self, forKey: .name)
        
        createdBy = try? container.decode(UserInfo.self, forKey: .createdBy)
        
        published = try? container.decode(Bool.self, forKey: .published)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        type = try container.decode(String.self, forKey: .type)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(tags, forKey: .tags)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(customJson, forKey: .customJson)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        
        try? container.encodeIfPresent(published, forKey: .published)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
    }
}

/*
    Model: CollectionDetailResponse,
    Service: Catalog
*/

public struct CollectionDetailResponse: Codable {
    
    public var tag: [String]?
    
    public var schedule: [String: Any]?
    
    public var description: String?
    
    public var banners: ImageUrls?
    
    public var seo: SeoDetail?
    
    public var query: [String: Any]?
    
    public var type: String?
    
    public var appId: String?
    
    public var isActive: Bool?
    
    public var allowSort: Bool?
    
    public var cron: [String: Any]?
    
    public var meta: [String: Any]?
    
    public var badge: [String: Any]?
    
    public var logo: Media?
    
    public var allowFacets: Bool?
    
    public var name: String?
    
    public var visibleFacetsKeys: [String]?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case tag = "tag"
        
        case schedule = "_schedule"
        
        case description = "description"
        
        case banners = "banners"
        
        case seo = "seo"
        
        case query = "query"
        
        case type = "type"
        
        case appId = "app_id"
        
        case isActive = "is_active"
        
        case allowSort = "allow_sort"
        
        case cron = "cron"
        
        case meta = "meta"
        
        case badge = "badge"
        
        case logo = "logo"
        
        case allowFacets = "allow_facets"
        
        case name = "name"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        description = try? container.decode(String.self, forKey: .description)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        type = try? container.decode(String.self, forKey: .type)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        name = try? container.decode(String.self, forKey: .name)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: CollectionListingFilterType,
    Service: Catalog
*/

public struct CollectionListingFilterType: Codable {
    
    public var name: String?
    
    public var isSelected: Bool?
    
    public var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case isSelected = "is_selected"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: CollectionListingFilterTag,
    Service: Catalog
*/

public struct CollectionListingFilterTag: Codable {
    
    public var name: String?
    
    public var isSelected: Bool?
    
    public var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case isSelected = "is_selected"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: CollectionListingFilter,
    Service: Catalog
*/

public struct CollectionListingFilter: Codable {
    
    public var type: [CollectionListingFilterType]?
    
    public var tags: [CollectionListingFilterTag]?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case tags = "tags"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode([CollectionListingFilterType].self, forKey: .type)
        
        tags = try? container.decode([CollectionListingFilterTag].self, forKey: .tags)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(tags, forKey: .tags)
        
    }
}

/*
    Model: GetCollectionDetailNest,
    Service: Catalog
*/

public struct GetCollectionDetailNest: Codable {
    
    public var appId: String?
    
    public var badge: [String: Any]?
    
    public var visibleFacetsKeys: [String]?
    
    public var slug: String?
    
    public var schedule: [String: Any]?
    
    public var banners: ImageUrls?
    
    public var query: [String: Any]?
    
    public var allowSort: Bool?
    
    public var isActive: Bool?
    
    public var action: ProductListingAction?
    
    public var tag: [String]?
    
    public var description: String?
    
    public var cron: [String: Any]?
    
    public var meta: [String: Any]?
    
    public var logo: Media?
    
    public var allowFacets: Bool?
    
    public var name: String?
    
    public var uid: String?
    
    public var seo: SeoDetail?
    
    public var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case appId = "app_id"
        
        case badge = "badge"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case slug = "slug"
        
        case schedule = "_schedule"
        
        case banners = "banners"
        
        case query = "query"
        
        case allowSort = "allow_sort"
        
        case isActive = "is_active"
        
        case action = "action"
        
        case tag = "tag"
        
        case description = "description"
        
        case cron = "cron"
        
        case meta = "meta"
        
        case logo = "logo"
        
        case allowFacets = "allow_facets"
        
        case name = "name"
        
        case uid = "uid"
        
        case seo = "seo"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        description = try? container.decode(String.self, forKey: .description)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
    }
}

/*
    Model: GetCollectionListingResponse,
    Service: Catalog
*/

public struct GetCollectionListingResponse: Codable {
    
    public var filters: CollectionListingFilter?
    
    public var page: ProductPage?
    
    public var items: [GetCollectionDetailNest]?
    

    enum CodingKeys: String, CodingKey {
        
        case filters = "filters"
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        filters = try? container.decode(CollectionListingFilter.self, forKey: .filters)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        items = try? container.decode([GetCollectionDetailNest].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(filters, forKey: .filters)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: CollectionItem,
    Service: Catalog
*/

public struct CollectionItem: Codable {
    
    public var action: String
    
    public var itemId: Int
    

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
    Model: CollectionItemsRequest,
    Service: Catalog
*/

public struct CollectionItemsRequest: Codable {
    
    public var query: [String: Any]?
    
    public var type: String?
    
    public var items: [CollectionItem]?
    
    public var pageSize: Int
    
    public var pageNo: Int
    

    enum CodingKeys: String, CodingKey {
        
        case query = "query"
        
        case type = "type"
        
        case items = "items"
        
        case pageSize = "page_size"
        
        case pageNo = "page_no"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        type = try? container.decode(String.self, forKey: .type)
        
        items = try? container.decode([CollectionItem].self, forKey: .items)
        
        pageSize = try container.decode(Int.self, forKey: .pageSize)
        
        pageNo = try container.decode(Int.self, forKey: .pageNo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        
        try? container.encodeIfPresent(pageNo, forKey: .pageNo)
        
    }
}

/*
    Model: CollectionItemsResponse,
    Service: Catalog
*/

public struct CollectionItemsResponse: Codable {
    
    public var detail: String?
    

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
    Model: CollectionsUpdateDetailResponse,
    Service: Catalog
*/

public struct CollectionsUpdateDetailResponse: Codable {
    
    public var data: [CollectionDetailResponse]?
    

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
    Model: CollectionDetailViewDeleteResponse,
    Service: Catalog
*/

public struct CollectionDetailViewDeleteResponse: Codable {
    
    public var detail: String?
    

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
    Model: GetFollowListingResponse,
    Service: Catalog
*/

public struct GetFollowListingResponse: Codable {
    
    public var page: ProductPage
    
    public var items: [[String: Any]]
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try container.decode(ProductPage.self, forKey: .page)
        
        items = try container.decode([[String: Any]].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: FollowPostResponse,
    Service: Catalog
*/

public struct FollowPostResponse: Codable {
    
    public var message: String
    
    public var id: String
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case id = "id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try container.decode(String.self, forKey: .message)
        
        id = try container.decode(String.self, forKey: .id)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
    }
}

/*
    Model: FollowerCountResponse,
    Service: Catalog
*/

public struct FollowerCountResponse: Codable {
    
    public var count: Int?
    

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
    Model: FollowIdsData,
    Service: Catalog
*/

public struct FollowIdsData: Codable {
    
    public var products: [Int]?
    
    public var brands: [Int]?
    
    public var collections: [Int]?
    

    enum CodingKeys: String, CodingKey {
        
        case products = "products"
        
        case brands = "brands"
        
        case collections = "collections"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        products = try? container.decode([Int].self, forKey: .products)
        
        brands = try? container.decode([Int].self, forKey: .brands)
        
        collections = try? container.decode([Int].self, forKey: .collections)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(products, forKey: .products)
        
        try? container.encodeIfPresent(brands, forKey: .brands)
        
        try? container.encodeIfPresent(collections, forKey: .collections)
        
    }
}

/*
    Model: FollowIdsResponse,
    Service: Catalog
*/

public struct FollowIdsResponse: Codable {
    
    public var data: FollowIdsData?
    

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
    Model: LatLong,
    Service: Catalog
*/

public struct LatLong: Codable {
    
    public var type: String?
    
    public var coordinates: [Double]?
    

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
    Model: Store1,
    Service: Catalog
*/

public struct Store1: Codable {
    
    public var name: String?
    
    public var country: String?
    
    public var pincode: Int?
    
    public var city: String?
    
    public var latLong: LatLong?
    
    public var address: String?
    
    public var storeEmail: String?
    
    public var storeCode: String?
    
    public var state: String?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case country = "country"
        
        case pincode = "pincode"
        
        case city = "city"
        
        case latLong = "lat_long"
        
        case address = "address"
        
        case storeEmail = "store_email"
        
        case storeCode = "store_code"
        
        case state = "state"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        country = try? container.decode(String.self, forKey: .country)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        city = try? container.decode(String.self, forKey: .city)
        
        latLong = try? container.decode(LatLong.self, forKey: .latLong)
        
        address = try? container.decode(String.self, forKey: .address)
        
        storeEmail = try? container.decode(String.self, forKey: .storeEmail)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        state = try? container.decode(String.self, forKey: .state)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(country, forKey: .country)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(latLong, forKey: .latLong)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
        
        try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        
        try? container.encodeIfPresent(state, forKey: .state)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: StoreListingResponse,
    Service: Catalog
*/

public struct StoreListingResponse: Codable {
    
    public var page: ProductPage?
    
    public var items: [Store1]?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        items = try? container.decode([Store1].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}



/*
    Model: TicketList,
    Service: Lead
*/

public struct TicketList: Codable {
    
    public var docs: [Ticket]?
    
    public var filters: Filter?
    
    public var limit: Int?
    
    public var page: Int?
    
    public var pages: Int?
    
    public var total: Int?
    

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
    Model: Filter,
    Service: Lead
*/

public struct Filter: Codable {
    
    public var priorities: Priority
    
    public var categories: Category?
    
    public var statuses: Status
    
    public var assignees: [[String: Any]]
    

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
    Model: TicketHistoryPayload,
    Service: Lead
*/

public struct TicketHistoryPayload: Codable {
    
    public var value: [String: Any]?
    
    public var type: String?
    

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
    Model: CustomFormSubmissionPayload,
    Service: Lead
*/

public struct CustomFormSubmissionPayload: Codable {
    
    public var response: [[String: Any]]
    

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
    Model: GetTokenForVideoRoomResponse,
    Service: Lead
*/

public struct GetTokenForVideoRoomResponse: Codable {
    
    public var accessToken: String
    

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
    Model: GetParticipantsInsideVideoRoomResponse,
    Service: Lead
*/

public struct GetParticipantsInsideVideoRoomResponse: Codable {
    
    public var participants: [[String: Any]]
    

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
    Model: SubmitCustomFormResponse,
    Service: Lead
*/

public struct SubmitCustomFormResponse: Codable {
    
    public var ticket: Ticket
    

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
    Model: Context,
    Service: Lead
*/

public struct Context: Codable {
    
    public var applicationId: String?
    
    public var companyId: String
    

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
    Model: CreatedOn,
    Service: Lead
*/

public struct CreatedOn: Codable {
    
    public var userAgent: String
    

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
    Model: Asset,
    Service: Lead
*/

public struct Asset: Codable {
    
    public var display: String?
    
    public var value: String
    
    public var type: String
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case value = "value"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try? container.decode(String.self, forKey: .display)
        
        value = try container.decode(String.self, forKey: .value)
        
        type = try container.decode(String.self, forKey: .type)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
    }
}

/*
    Model: Content,
    Service: Lead
*/

public struct Content: Codable {
    
    public var title: String
    
    public var description: String?
    
    public var attachments: [Asset]?
    

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
    Model: APIError,
    Service: Lead
*/

public struct APIError: Codable {
    
    public var code: Double?
    
    public var error: [String: Any]?
    
    public var message: String
    

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
    Model: AddTicketPayload,
    Service: Lead
*/

public struct AddTicketPayload: Codable {
    
    public var status: String
    
    public var priority: String
    
    public var category: String
    
    public var content: Content
    

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
    Model: Priority,
    Service: Lead
*/

public struct Priority: Codable {
    
    public var key: String
    
    public var display: String
    
    public var color: String
    

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
    Model: Status,
    Service: Lead
*/

public struct Status: Codable {
    
    public var key: String
    
    public var display: String
    
    public var color: String
    

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
    Model: Category,
    Service: Lead
*/

public struct Category: Codable {
    
    public var key: String
    
    public var display: String
    
    public var form: CustomForm?
    

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
    Model: SubmitButton,
    Service: Lead
*/

public struct SubmitButton: Codable {
    
    public var title: String
    
    public var titleColor: String
    
    public var backgroundColor: String
    

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
    Model: PollForAssignment,
    Service: Lead
*/

public struct PollForAssignment: Codable {
    
    public var duration: Double
    
    public var message: String
    
    public var successMessage: String
    
    public var failureMessage: String
    

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
    Model: CustomForm,
    Service: Lead
*/

public struct CustomForm: Codable {
    
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
    Model: TicketHistory,
    Service: Lead
*/

public struct TicketHistory: Codable {
    
    public var type: String
    
    public var value: [String: Any]
    
    public var ticketId: String
    
    public var createdOn: CreatedOn?
    
    public var createdBy: [String: Any]?
    
    public var id: String
    
    public var updatedAt: String?
    
    public var createdAt: String?
    

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
    Model: Ticket,
    Service: Lead
*/

public struct Ticket: Codable {
    
    public var context: Context?
    
    public var createdOn: CreatedOn?
    
    public var responseId: String?
    
    public var content: Content?
    
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
        
        context = try? container.decode(Context.self, forKey: .context)
        
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
    Model: ApefaceApiError,
    Service: Order
*/

public struct ApefaceApiError: Codable {
    
    public var message: String?
    

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
    Model: OrderById,
    Service: Order
*/

public struct OrderById: Codable {
    
    public var order: [String: Any]
    

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
    Model: OrderList,
    Service: Order
*/

public struct OrderList: Codable {
    
    public var orders: [[String: Any]]
    
    public var page: [String: Any]
    

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
    Model: ShipmentById,
    Service: Order
*/

public struct ShipmentById: Codable {
    
    public var shipment: [String: Any]
    

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
    Model: ShipmentReasons,
    Service: Order
*/

public struct ShipmentReasons: Codable {
    
    public var reasons: [[String: Any]]
    

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
    Model: ShipmentStatusUpdateBody,
    Service: Order
*/

public struct ShipmentStatusUpdateBody: Codable {
    
    public var shipments: [String: Any]
    
    public var forceTransition: Bool
    
    public var task: Bool
    

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
    Model: ShipmentStatusUpdate,
    Service: Order
*/

public struct ShipmentStatusUpdate: Codable {
    
    public var shipments: [String: Any]
    

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
    Model: ShipmentTrack,
    Service: Order
*/

public struct ShipmentTrack: Codable {
    
    public var results: [[String: Any]]
    

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
    Model: GetCartResponse,
    Service: PosCart
*/

public struct GetCartResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var lastModified: String?
    
    public var codAvailable: Bool?
    
    public var breakupValuesAnalytics: String?
    
    public var breakupValues: [String: Any]?
    
    public var cartId: Int?
    
    public var creditDetails: String?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var couponText: String?
    
    public var checkoutMode: String?
    
    public var items: [[String: Any]]?
    
    public var restrictCheckout: Bool?
    
    public var couponDetails: String?
    
    public var gstin: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case lastModified = "last_modified"
        
        case codAvailable = "cod_available"
        
        case breakupValuesAnalytics = "breakup_values_analytics"
        
        case breakupValues = "breakup_values"
        
        case cartId = "cart_id"
        
        case creditDetails = "credit_details"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case items = "items"
        
        case restrictCheckout = "restrict_checkout"
        
        case couponDetails = "coupon_details"
        
        case gstin = "gstin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        breakupValuesAnalytics = try? container.decode(String.self, forKey: .breakupValuesAnalytics)
        
        breakupValues = try? container.decode([String: Any].self, forKey: .breakupValues)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        creditDetails = try? container.decode(String.self, forKey: .creditDetails)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        items = try? container.decode([[String: Any]].self, forKey: .items)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        couponDetails = try? container.decode(String.self, forKey: .couponDetails)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
        
        try? container.encodeIfPresent(breakupValuesAnalytics, forKey: .breakupValuesAnalytics)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(creditDetails, forKey: .creditDetails)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(couponDetails, forKey: .couponDetails)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
    }
}

/*
    Model: AddProductCart,
    Service: PosCart
*/

public struct AddProductCart: Codable {
    
    public var pos: Bool?
    
    public var articleAssignment: [String: Any]?
    
    public var itemId: Int?
    
    public var display: String?
    
    public var itemSize: Int?
    
    public var storeId: Int?
    
    public var quantity: Int?
    
    public var articleId: String?
    
    public var sellerId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case pos = "pos"
        
        case articleAssignment = "article_assignment"
        
        case itemId = "item_id"
        
        case display = "display"
        
        case itemSize = "item_size"
        
        case storeId = "store_id"
        
        case quantity = "quantity"
        
        case articleId = "article_id"
        
        case sellerId = "seller_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pos = try? container.decode(Bool.self, forKey: .pos)
        
        articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        display = try? container.decode(String.self, forKey: .display)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
        storeId = try? container.decode(Int.self, forKey: .storeId)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        sellerId = try? container.decode(Int.self, forKey: .sellerId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pos, forKey: .pos)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        
        try? container.encodeIfPresent(storeId, forKey: .storeId)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(sellerId, forKey: .sellerId)
        
    }
}

/*
    Model: AddCartRequest,
    Service: PosCart
*/

public struct AddCartRequest: Codable {
    
    public var items: [AddProductCart]?
    

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
    Model: CartCurrency,
    Service: PosCart
*/

public struct CartCurrency: Codable {
    
    public var code: String?
    
    public var symbol: String?
    

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
    Model: RawBreakup,
    Service: PosCart
*/

public struct RawBreakup: Codable {
    
    public var codCharge: Int?
    
    public var youSaved: Int?
    
    public var coupon: Int?
    
    public var total: Int?
    
    public var subtotal: Int?
    
    public var fyndCash: Int?
    
    public var deliveryCharge: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case codCharge = "cod_charge"
        
        case youSaved = "you_saved"
        
        case coupon = "coupon"
        
        case total = "total"
        
        case subtotal = "subtotal"
        
        case fyndCash = "fynd_cash"
        
        case deliveryCharge = "delivery_charge"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        codCharge = try? container.decode(Int.self, forKey: .codCharge)
        
        youSaved = try? container.decode(Int.self, forKey: .youSaved)
        
        coupon = try? container.decode(Int.self, forKey: .coupon)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        subtotal = try? container.decode(Int.self, forKey: .subtotal)
        
        fyndCash = try? container.decode(Int.self, forKey: .fyndCash)
        
        deliveryCharge = try? container.decode(Int.self, forKey: .deliveryCharge)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(codCharge, forKey: .codCharge)
        
        try? container.encodeIfPresent(youSaved, forKey: .youSaved)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(subtotal, forKey: .subtotal)
        
        try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
        
        try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        
    }
}

/*
    Model: BaseLoyaltyPoints,
    Service: PosCart
*/

public struct BaseLoyaltyPoints: Codable {
    
    public var isApplied: Bool?
    
    public var applicable: Int?
    
    public var description: String?
    
    public var total: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case isApplied = "is_applied"
        
        case applicable = "applicable"
        
        case description = "description"
        
        case total = "total"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        applicable = try? container.decode(Int.self, forKey: .applicable)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Double.self, forKey: .total)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(applicable, forKey: .applicable)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
    }
}

/*
    Model: CouponBreakup,
    Service: PosCart
*/

public struct CouponBreakup: Codable {
    
    public var uid: Int?
    
    public var code: String?
    
    public var isApplied: Bool?
    
    public var message: String?
    
    public var type: String?
    
    public var value: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case code = "code"
        
        case isApplied = "is_applied"
        
        case message = "message"
        
        case type = "type"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        code = try? container.decode(String.self, forKey: .code)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        message = try? container.decode(String.self, forKey: .message)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode(Int.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
    }
}

/*
    Model: DisplayBreakup,
    Service: PosCart
*/

public struct DisplayBreakup: Codable {
    
    public var key: String?
    
    public var display: String?
    
    public var currencySymbol: String?
    
    public var currencyCode: String?
    
    public var value: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        value = try? container.decode(Int.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
    }
}

/*
    Model: BaseCartBreakup,
    Service: PosCart
*/

public struct BaseCartBreakup: Codable {
    
    public var raw: RawBreakup?
    
    public var loyaltyPoints: BaseLoyaltyPoints?
    
    public var coupon: CouponBreakup?
    
    public var display: DisplayBreakup?
    

    enum CodingKeys: String, CodingKey {
        
        case raw = "raw"
        
        case loyaltyPoints = "loyalty_points"
        
        case coupon = "coupon"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        raw = try? container.decode(RawBreakup.self, forKey: .raw)
        
        loyaltyPoints = try? container.decode(BaseLoyaltyPoints.self, forKey: .loyaltyPoints)
        
        coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
        
        display = try? container.decode(DisplayBreakup.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(raw, forKey: .raw)
        
        try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: ProductPrice,
    Service: PosCart
*/

public struct ProductPrice: Codable {
    
    public var effective: Double?
    
    public var marked: Double?
    
    public var currencySymbol: String?
    
    public var addOn: Double?
    
    public var currencyCode: String?
    
    public var selling: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case marked = "marked"
        
        case currencySymbol = "currency_symbol"
        
        case addOn = "add_on"
        
        case currencyCode = "currency_code"
        
        case selling = "selling"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        addOn = try? container.decode(Double.self, forKey: .addOn)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        selling = try? container.decode(Double.self, forKey: .selling)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(addOn, forKey: .addOn)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(selling, forKey: .selling)
        
    }
}

/*
    Model: ProductPriceInfo,
    Service: PosCart
*/

public struct ProductPriceInfo: Codable {
    
    public var base: ProductPrice?
    
    public var converted: ProductPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case base = "base"
        
        case converted = "converted"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        base = try? container.decode(ProductPrice.self, forKey: .base)
        
        converted = try? container.decode(ProductPrice.self, forKey: .converted)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(base, forKey: .base)
        
        try? container.encodeIfPresent(converted, forKey: .converted)
        
    }
}

/*
    Model: ProductAvailability,
    Service: PosCart
*/

public struct ProductAvailability: Codable {
    
    public var otherStoreQuantity: Int?
    
    public var outOfStock: Bool?
    
    public var isValid: Bool?
    
    public var sizes: [String]?
    
    public var deliverable: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case otherStoreQuantity = "other_store_quantity"
        
        case outOfStock = "out_of_stock"
        
        case isValid = "is_valid"
        
        case sizes = "sizes"
        
        case deliverable = "deliverable"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
        
        outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        sizes = try? container.decode([String].self, forKey: .sizes)
        
        deliverable = try? container.decode(Bool.self, forKey: .deliverable)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
        
        try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(sizes, forKey: .sizes)
        
        try? container.encodeIfPresent(deliverable, forKey: .deliverable)
        
    }
}

/*
    Model: ActionQuery,
    Service: PosCart
*/

public struct ActionQuery: Codable {
    
    public var productSlug: [String]?
    

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
    Model: Action,
    Service: PosCart
*/

public struct Action: Codable {
    
    public var url: String?
    
    public var type: String?
    
    public var query: ActionQuery?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CategoryInfo,
    Service: PosCart
*/

public struct CategoryInfo: Codable {
    
    public var name: Int?
    
    public var uid: Int?
    

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
    Model: BaseInfo,
    Service: PosCart
*/

public struct BaseInfo: Codable {
    
    public var name: String?
    
    public var uid: Int?
    

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
    Model: Image,
    Service: PosCart
*/

public struct Image: Codable {
    
    public var url: String?
    
    public var aspectRatio: String?
    
    public var secureUrl: String?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: Product,
    Service: PosCart
*/

public struct Product: Codable {
    
    public var uid: Int?
    
    public var slug: String?
    
    public var name: String?
    
    public var action: Action?
    
    public var type: String?
    
    public var categories: [CategoryInfo]?
    
    public var brand: BaseInfo?
    
    public var images: [Image]?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case slug = "slug"
        
        case name = "name"
        
        case action = "action"
        
        case type = "type"
        
        case categories = "categories"
        
        case brand = "brand"
        
        case images = "images"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        name = try? container.decode(String.self, forKey: .name)
        
        action = try? container.decode(Action.self, forKey: .action)
        
        type = try? container.decode(String.self, forKey: .type)
        
        categories = try? container.decode([CategoryInfo].self, forKey: .categories)
        
        brand = try? container.decode(BaseInfo.self, forKey: .brand)
        
        images = try? container.decode([Image].self, forKey: .images)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(images, forKey: .images)
        
    }
}

/*
    Model: CartProductInfo,
    Service: PosCart
*/

public struct CartProductInfo: Codable {
    
    public var price: ProductPriceInfo?
    
    public var availability: ProductAvailability?
    
    public var couponMessage: String?
    
    public var key: String?
    
    public var message: String?
    
    public var quantity: Int?
    
    public var discount: String?
    
    public var bulkOffer: String?
    
    public var product: Product?
    
    public var article: String?
    

    enum CodingKeys: String, CodingKey {
        
        case price = "price"
        
        case availability = "availability"
        
        case couponMessage = "coupon_message"
        
        case key = "key"
        
        case message = "message"
        
        case quantity = "quantity"
        
        case discount = "discount"
        
        case bulkOffer = "bulk_offer"
        
        case product = "product"
        
        case article = "article"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        price = try? container.decode(ProductPriceInfo.self, forKey: .price)
        
        availability = try? container.decode(ProductAvailability.self, forKey: .availability)
        
        couponMessage = try? container.decode(String.self, forKey: .couponMessage)
        
        key = try? container.decode(String.self, forKey: .key)
        
        message = try? container.decode(String.self, forKey: .message)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
        
        product = try? container.decode(Product.self, forKey: .product)
        
        article = try? container.decode(String.self, forKey: .article)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(availability, forKey: .availability)
        
        try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
        
        try? container.encodeIfPresent(product, forKey: .product)
        
        try? container.encodeIfPresent(article, forKey: .article)
        
    }
}

/*
    Model: PaymentFlow,
    Service: PosCart
*/

public struct PaymentFlow: Codable {
    
    public var apiLink: String?
    
    public var paymentFlow: String?
    
    public var data: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case apiLink = "api_link"
        
        case paymentFlow = "payment_flow"
        
        case data = "data"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        apiLink = try? container.decode(String.self, forKey: .apiLink)
        
        paymentFlow = try? container.decode(String.self, forKey: .paymentFlow)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(apiLink, forKey: .apiLink)
        
        try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
        
        try? container.encodeIfPresent(data, forKey: .data)
        
    }
}

/*
    Model: PaymentFlows,
    Service: PosCart
*/

public struct PaymentFlows: Codable {
    
    public var juspay: PaymentFlow?
    
    public var upiRazorpay: PaymentFlow?
    
    public var fynd: PaymentFlow?
    
    public var razorpay: PaymentFlow?
    
    public var simpl: PaymentFlow?
    

    enum CodingKeys: String, CodingKey {
        
        case juspay = "Juspay"
        
        case upiRazorpay = "UPI_Razorpay"
        
        case fynd = "Fynd"
        
        case razorpay = "Razorpay"
        
        case simpl = "Simpl"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
        
        upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
        
        fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
        
        razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
        
        simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(juspay, forKey: .juspay)
        
        try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
        
        try? container.encodeIfPresent(fynd, forKey: .fynd)
        
        try? container.encodeIfPresent(razorpay, forKey: .razorpay)
        
        try? container.encodeIfPresent(simpl, forKey: .simpl)
        
    }
}

/*
    Model: PaymentOption,
    Service: PosCart
*/

public struct PaymentOption: Codable {
    
    public var list: [[String: Any]]?
    
    public var displayName: String?
    
    public var name: String?
    
    public var paymentModeId: Int?
    
    public var displayPriority: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case list = "list"
        
        case displayName = "display_name"
        
        case name = "name"
        
        case paymentModeId = "payment_mode_id"
        
        case displayPriority = "display_priority"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        list = try? container.decode([[String: Any]].self, forKey: .list)
        
        displayName = try? container.decode(String.self, forKey: .displayName)
        
        name = try? container.decode(String.self, forKey: .name)
        
        paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
        
        displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(list, forKey: .list)
        
        try? container.encodeIfPresent(displayName, forKey: .displayName)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
        
        try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
        
    }
}

/*
    Model: PaymentOptions,
    Service: PosCart
*/

public struct PaymentOptions: Codable {
    
    public var paymentFlows: PaymentFlows?
    
    public var paymentOption: [PaymentOption]?
    

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
    Model: CartResponse,
    Service: PosCart
*/

public struct CartResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var uid: String?
    
    public var lastModified: String?
    
    public var currency: CartCurrency?
    
    public var breakupValues: BaseCartBreakup?
    
    public var cartId: Int?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var couponText: String?
    
    public var checkoutMode: String?
    
    public var items: [CartProductInfo]?
    
    public var paymentOptions: PaymentOptions?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case uid = "uid"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case breakupValues = "breakup_values"
        
        case cartId = "cart_id"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case items = "items"
        
        case paymentOptions = "payment_options"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
    }
}

/*
    Model: UpdateProductCart,
    Service: PosCart
*/

public struct UpdateProductCart: Codable {
    
    public var itemId: Int?
    
    public var itemSize: Int?
    
    public var quantity: Int?
    
    public var articleId: String?
    
    public var itemIndex: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case itemId = "item_id"
        
        case itemSize = "item_size"
        
        case quantity = "quantity"
        
        case articleId = "article_id"
        
        case itemIndex = "item_index"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
        
    }
}

/*
    Model: UpdateCartRequest,
    Service: PosCart
*/

public struct UpdateCartRequest: Codable {
    
    public var items: [UpdateProductCart]?
    
    public var operation: String
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CartItemCountResponse,
    Service: PosCart
*/

public struct CartItemCountResponse: Codable {
    
    public var userCartItemsCount: Int?
    

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
    Model: Coupon,
    Service: PosCart
*/

public struct Coupon: Codable {
    
    public var uid: Int?
    
    public var isApplicable: Bool?
    
    public var couponCode: String?
    
    public var title: String?
    
    public var isApplied: Bool?
    
    public var couponValue: Double?
    
    public var message: String?
    
    public var minimumCartValue: Double?
    
    public var expiresOn: String?
    
    public var subTitle: String?
    
    public var maxDiscountValue: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case isApplicable = "is_applicable"
        
        case couponCode = "coupon_code"
        
        case title = "title"
        
        case isApplied = "is_applied"
        
        case couponValue = "coupon_value"
        
        case message = "message"
        
        case minimumCartValue = "minimum_cart_value"
        
        case expiresOn = "expires_on"
        
        case subTitle = "sub_title"
        
        case maxDiscountValue = "max_discount_value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
        
        couponCode = try? container.decode(String.self, forKey: .couponCode)
        
        title = try? container.decode(String.self, forKey: .title)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        couponValue = try? container.decode(Double.self, forKey: .couponValue)
        
        message = try? container.decode(String.self, forKey: .message)
        
        minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
        
        expiresOn = try? container.decode(String.self, forKey: .expiresOn)
        
        subTitle = try? container.decode(String.self, forKey: .subTitle)
        
        maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
        
        try? container.encodeIfPresent(couponCode, forKey: .couponCode)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(couponValue, forKey: .couponValue)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
        
        try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
        
        try? container.encodeIfPresent(subTitle, forKey: .subTitle)
        
        try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
        
    }
}

/*
    Model: PageCoupon,
    Service: PosCart
*/

public struct PageCoupon: Codable {
    
    public var hasPrevious: Bool?
    
    public var totalItemCount: Int?
    
    public var current: Int?
    
    public var total: Int?
    
    public var hasNext: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case hasPrevious = "has_previous"
        
        case totalItemCount = "total_item_count"
        
        case current = "current"
        
        case total = "total"
        
        case hasNext = "has_next"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        
        try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
        
        try? container.encodeIfPresent(current, forKey: .current)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        
    }
}

/*
    Model: GetCouponResponse,
    Service: PosCart
*/

public struct GetCouponResponse: Codable {
    
    public var availableCouponList: [Coupon]?
    
    public var page: PageCoupon?
    

    enum CodingKeys: String, CodingKey {
        
        case availableCouponList = "available_coupon_list"
        
        case page = "page"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        availableCouponList = try? container.decode([Coupon].self, forKey: .availableCouponList)
        
        page = try? container.decode(PageCoupon.self, forKey: .page)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(availableCouponList, forKey: .availableCouponList)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
    }
}

/*
    Model: ApplyCouponRequest,
    Service: PosCart
*/

public struct ApplyCouponRequest: Codable {
    
    public var couponCode: String
    

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
    Model: RawCartCoupon,
    Service: PosCart
*/

public struct RawCartCoupon: Codable {
    
    public var codCharge: Double?
    
    public var vog: Double?
    
    public var convenienceFee: Double?
    
    public var youSaved: Double?
    
    public var coupon: Double?
    
    public var discount: Double?
    
    public var gstCharges: Double?
    
    public var subtotal: Double?
    
    public var total: Double?
    
    public var fyndCash: Double?
    
    public var mrpTotal: Double?
    
    public var deliveryCharge: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case codCharge = "cod_charge"
        
        case vog = "vog"
        
        case convenienceFee = "convenience_fee"
        
        case youSaved = "you_saved"
        
        case coupon = "coupon"
        
        case discount = "discount"
        
        case gstCharges = "gst_charges"
        
        case subtotal = "subtotal"
        
        case total = "total"
        
        case fyndCash = "fynd_cash"
        
        case mrpTotal = "mrp_total"
        
        case deliveryCharge = "delivery_charge"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        codCharge = try? container.decode(Double.self, forKey: .codCharge)
        
        vog = try? container.decode(Double.self, forKey: .vog)
        
        convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
        
        youSaved = try? container.decode(Double.self, forKey: .youSaved)
        
        coupon = try? container.decode(Double.self, forKey: .coupon)
        
        discount = try? container.decode(Double.self, forKey: .discount)
        
        gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
        
        subtotal = try? container.decode(Double.self, forKey: .subtotal)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
        
        mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
        
        deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(codCharge, forKey: .codCharge)
        
        try? container.encodeIfPresent(vog, forKey: .vog)
        
        try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
        
        try? container.encodeIfPresent(youSaved, forKey: .youSaved)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
        
        try? container.encodeIfPresent(subtotal, forKey: .subtotal)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
        
        try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
        
        try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        
    }
}

/*
    Model: LoyaltyPoints,
    Service: PosCart
*/

public struct LoyaltyPoints: Codable {
    
    public var isApplied: Bool?
    
    public var applicable: String?
    
    public var description: String?
    
    public var total: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isApplied = "is_applied"
        
        case applicable = "applicable"
        
        case description = "description"
        
        case total = "total"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        applicable = try? container.decode(String.self, forKey: .applicable)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Int.self, forKey: .total)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(applicable, forKey: .applicable)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
    }
}

/*
    Model: CartCoupon,
    Service: PosCart
*/

public struct CartCoupon: Codable {
    
    public var uid: Int?
    
    public var code: String?
    
    public var isApplied: Bool?
    
    public var message: String?
    
    public var type: String?
    
    public var value: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case code = "code"
        
        case isApplied = "is_applied"
        
        case message = "message"
        
        case type = "type"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        code = try? container.decode(String.self, forKey: .code)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        message = try? container.decode(String.self, forKey: .message)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode(Int.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
    }
}

/*
    Model: SaveCoupon,
    Service: PosCart
*/

public struct SaveCoupon: Codable {
    
    public var raw: RawCartCoupon?
    
    public var loyaltyPoints: LoyaltyPoints?
    
    public var display: [String]?
    
    public var coupon: CartCoupon?
    

    enum CodingKeys: String, CodingKey {
        
        case raw = "raw"
        
        case loyaltyPoints = "loyalty_points"
        
        case display = "display"
        
        case coupon = "coupon"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        raw = try? container.decode(RawCartCoupon.self, forKey: .raw)
        
        loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
        
        display = try? container.decode([String].self, forKey: .display)
        
        coupon = try? container.decode(CartCoupon.self, forKey: .coupon)
        
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
    Model: SaveCouponResponse,
    Service: PosCart
*/

public struct SaveCouponResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var uid: Int?
    
    public var lastModified: String?
    
    public var breakupValues: SaveCoupon?
    
    public var cartId: Int?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var couponText: String?
    
    public var checkoutMode: String?
    
    public var items: [String]?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case uid = "uid"
        
        case lastModified = "last_modified"
        
        case breakupValues = "breakup_values"
        
        case cartId = "cart_id"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case items = "items"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        items = try? container.decode([String].self, forKey: .items)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
    }
}

/*
    Model: OfferSeller,
    Service: PosCart
*/

public struct OfferSeller: Codable {
    
    public var name: String?
    
    public var uid: Int?
    

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
    Model: OfferPrice,
    Service: PosCart
*/

public struct OfferPrice: Codable {
    
    public var effective: Int?
    
    public var bulkEffective: Double?
    
    public var marked: Int?
    
    public var currencySymbol: String?
    
    public var currencyCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case bulkEffective = "bulk_effective"
        
        case marked = "marked"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Int.self, forKey: .effective)
        
        bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
        
        marked = try? container.decode(Int.self, forKey: .marked)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
        try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
    }
}

/*
    Model: OfferItem,
    Service: PosCart
*/

public struct OfferItem: Codable {
    
    public var best: Bool?
    
    public var quantity: Int?
    
    public var total: Double?
    
    public var autoApplied: Bool?
    
    public var type: String?
    
    public var margin: Int?
    
    public var price: OfferPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case best = "best"
        
        case quantity = "quantity"
        
        case total = "total"
        
        case autoApplied = "auto_applied"
        
        case type = "type"
        
        case margin = "margin"
        
        case price = "price"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        best = try? container.decode(Bool.self, forKey: .best)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
        
        type = try? container.decode(String.self, forKey: .type)
        
        margin = try? container.decode(Int.self, forKey: .margin)
        
        price = try? container.decode(OfferPrice.self, forKey: .price)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(best, forKey: .best)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(margin, forKey: .margin)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
    }
}

/*
    Model: BulkPriceOffer,
    Service: PosCart
*/

public struct BulkPriceOffer: Codable {
    
    public var seller: OfferSeller?
    
    public var offers: [OfferItem]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: BulkPriceResponse,
    Service: PosCart
*/

public struct BulkPriceResponse: Codable {
    
    public var data: [BulkPriceOffer]?
    

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
    Model: GeoLocation,
    Service: PosCart
*/

public struct GeoLocation: Codable {
    
    public var latitude: Double?
    
    public var longitude: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case latitude = "latitude"
        
        case longitude = "longitude"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        latitude = try? container.decode(Double.self, forKey: .latitude)
        
        longitude = try? container.decode(Double.self, forKey: .longitude)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(latitude, forKey: .latitude)
        
        try? container.encodeIfPresent(longitude, forKey: .longitude)
        
    }
}

/*
    Model: Address,
    Service: PosCart
*/

public struct Address: Codable {
    
    public var country: String?
    
    public var isDefaultAddress: Bool?
    
    public var addressId: Int?
    
    public var state: String?
    
    public var name: String?
    
    public var geoLocation: GeoLocation?
    
    public var address: String?
    
    public var city: String?
    
    public var meta: [String: Any]?
    
    public var landmark: String?
    
    public var isActive: Bool?
    
    public var uid: Int?
    
    public var phone: Int?
    
    public var email: String?
    
    public var area: String?
    
    public var userId: String?
    
    public var areaCodeSlug: String?
    
    public var checkoutMode: String?
    
    public var addressType: String?
    
    public var countryCode: String?
    
    public var areaCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case country = "country"
        
        case isDefaultAddress = "is_default_address"
        
        case addressId = "address_id"
        
        case state = "state"
        
        case name = "name"
        
        case geoLocation = "geo_location"
        
        case address = "address"
        
        case city = "city"
        
        case meta = "meta"
        
        case landmark = "landmark"
        
        case isActive = "is_active"
        
        case uid = "uid"
        
        case phone = "phone"
        
        case email = "email"
        
        case area = "area"
        
        case userId = "user_id"
        
        case areaCodeSlug = "area_code_slug"
        
        case checkoutMode = "checkout_mode"
        
        case addressType = "address_type"
        
        case countryCode = "country_code"
        
        case areaCode = "area_code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        country = try? container.decode(String.self, forKey: .country)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        state = try? container.decode(String.self, forKey: .state)
        
        name = try? container.decode(String.self, forKey: .name)
        
        geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
        
        address = try? container.decode(String.self, forKey: .address)
        
        city = try? container.decode(String.self, forKey: .city)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        email = try? container.decode(String.self, forKey: .email)
        
        area = try? container.decode(String.self, forKey: .area)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        countryCode = try? container.decode(String.self, forKey: .countryCode)
        
        areaCode = try? container.decode(String.self, forKey: .areaCode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(country, forKey: .country)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(state, forKey: .state)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(userId, forKey: .userId)
        
        try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        
        try? container.encodeIfPresent(areaCode, forKey: .areaCode)
        
    }
}

/*
    Model: GetAddressResponse,
    Service: PosCart
*/

public struct GetAddressResponse: Codable {
    
    public var address: [Address]?
    

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
    Model: SaveAddressRequest,
    Service: PosCart
*/

public struct SaveAddressRequest: Codable {
    
    public var pincode: Int?
    
    public var name: String?
    
    public var phone: Int?
    
    public var addressType: String?
    
    public var address: String?
    
    public var isDefaultAddress: Bool?
    
    public var email: String?
    
    public var area: String?
    
    public var landmark: String?
    

    enum CodingKeys: String, CodingKey {
        
        case pincode = "pincode"
        
        case name = "name"
        
        case phone = "phone"
        
        case addressType = "address_type"
        
        case address = "address"
        
        case isDefaultAddress = "is_default_address"
        
        case email = "email"
        
        case area = "area"
        
        case landmark = "landmark"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        name = try? container.decode(String.self, forKey: .name)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        address = try? container.decode(String.self, forKey: .address)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        email = try? container.decode(String.self, forKey: .email)
        
        area = try? container.decode(String.self, forKey: .area)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
    }
}

/*
    Model: SaveAddressResponse,
    Service: PosCart
*/

public struct SaveAddressResponse: Codable {
    
    public var success: String?
    
    public var isDefaultAddress: Bool?
    
    public var addressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case isDefaultAddress = "is_default_address"
        
        case addressId = "address_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(String.self, forKey: .success)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
    }
}

/*
    Model: UpdateAddressRequest,
    Service: PosCart
*/

public struct UpdateAddressRequest: Codable {
    
    public var pincode: Int?
    
    public var name: String?
    
    public var phone: Int?
    
    public var addressType: String?
    
    public var address: String?
    
    public var isDefaultAddress: Bool?
    
    public var email: String?
    
    public var area: String?
    
    public var landmark: String?
    

    enum CodingKeys: String, CodingKey {
        
        case pincode = "pincode"
        
        case name = "name"
        
        case phone = "phone"
        
        case addressType = "address_type"
        
        case address = "address"
        
        case isDefaultAddress = "is_default_address"
        
        case email = "email"
        
        case area = "area"
        
        case landmark = "landmark"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        name = try? container.decode(String.self, forKey: .name)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        address = try? container.decode(String.self, forKey: .address)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        email = try? container.decode(String.self, forKey: .email)
        
        area = try? container.decode(String.self, forKey: .area)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
    }
}

/*
    Model: UpdateAddressResponse,
    Service: PosCart
*/

public struct UpdateAddressResponse: Codable {
    
    public var isUpdated: Bool?
    
    public var success: Bool?
    
    public var isDefaultAddress: Bool?
    
    public var addressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isUpdated = "is_updated"
        
        case success = "success"
        
        case isDefaultAddress = "is_default_address"
        
        case addressId = "address_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
    }
}

/*
    Model: DeleteAddressResponse,
    Service: PosCart
*/

public struct DeleteAddressResponse: Codable {
    
    public var isDeleted: Bool?
    
    public var addressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isDeleted = "is_deleted"
        
        case addressId = "address_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDeleted = try? container.decode(Bool.self, forKey: .isDeleted)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
    }
}

/*
    Model: SelectCartAddressRequest,
    Service: PosCart
*/

public struct SelectCartAddressRequest: Codable {
    
    public var uid: String?
    
    public var addressId: String?
    
    public var billingAddressId: Int?
    

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
    Model: UpdateCartPaymentRequest,
    Service: PosCart
*/

public struct UpdateCartPaymentRequest: Codable {
    
    public var uid: Int?
    
    public var paymentIdentifier: String?
    
    public var addressId: Int?
    
    public var paymentMode: String?
    
    public var aggregatorName: String?
    
    public var merchantCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case paymentIdentifier = "payment_identifier"
        
        case addressId = "address_id"
        
        case paymentMode = "payment_mode"
        
        case aggregatorName = "aggregator_name"
        
        case merchantCode = "merchant_code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        paymentMode = try? container.decode(String.self, forKey: .paymentMode)
        
        aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        
        try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        
        try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        
    }
}

/*
    Model: ShipmentResponse,
    Service: PosCart
*/

public struct ShipmentResponse: Codable {
    
    public var boxType: String?
    
    public var shipmentType: String?
    
    public var fulfillmentId: Int?
    
    public var dpOptions: [String: Any]?
    
    public var shipments: Int?
    
    public var promise: String?
    
    public var items: [CartProductInfo]?
    
    public var dpId: Int?
    
    public var fulfillmentType: String?
    

    enum CodingKeys: String, CodingKey {
        
        case boxType = "box_type"
        
        case shipmentType = "shipment_type"
        
        case fulfillmentId = "fulfillment_id"
        
        case dpOptions = "dp_options"
        
        case shipments = "shipments"
        
        case promise = "promise"
        
        case items = "items"
        
        case dpId = "dp_id"
        
        case fulfillmentType = "fulfillment_type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        boxType = try? container.decode(String.self, forKey: .boxType)
        
        shipmentType = try? container.decode(String.self, forKey: .shipmentType)
        
        fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
        
        dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
        
        shipments = try? container.decode(Int.self, forKey: .shipments)
        
        promise = try? container.decode(String.self, forKey: .promise)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        dpId = try? container.decode(Int.self, forKey: .dpId)
        
        fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(boxType, forKey: .boxType)
        
        try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
        
        try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        
        try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
        
        try? container.encodeIfPresent(shipments, forKey: .shipments)
        
        try? container.encodeIfPresent(promise, forKey: .promise)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(dpId, forKey: .dpId)
        
        try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
        
    }
}

/*
    Model: CartShipmentsResponse,
    Service: PosCart
*/

public struct CartShipmentsResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var uid: String?
    
    public var lastModified: String?
    
    public var currency: CartCurrency?
    
    public var shipments: [ShipmentResponse]?
    
    public var breakupValues: BaseCartBreakup?
    
    public var cartId: Int?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var couponText: String?
    
    public var checkoutMode: String?
    
    public var paymentOptions: PaymentOptions?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case uid = "uid"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case shipments = "shipments"
        
        case breakupValues = "breakup_values"
        
        case cartId = "cart_id"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case paymentOptions = "payment_options"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(shipments, forKey: .shipments)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
    }
}

/*
    Model: UpdateCartShipmentItem,
    Service: PosCart
*/

public struct UpdateCartShipmentItem: Codable {
    
    public var shipmentType: String
    
    public var quantity: Int?
    
    public var articleUid: String
    

    enum CodingKeys: String, CodingKey {
        
        case shipmentType = "shipment_type"
        
        case quantity = "quantity"
        
        case articleUid = "article_uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        shipmentType = try container.decode(String.self, forKey: .shipmentType)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        articleUid = try container.decode(String.self, forKey: .articleUid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(articleUid, forKey: .articleUid)
        
    }
}

/*
    Model: UpdateCartShipmentRequest,
    Service: PosCart
*/

public struct UpdateCartShipmentRequest: Codable {
    
    public var shipments: [UpdateCartShipmentItem]
    

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
    Model: CartCheckoutRequest,
    Service: PosCart
*/

public struct CartCheckoutRequest: Codable {
    
    public var aggregator: String?
    
    public var billingAddress: [String: Any]?
    
    public var fyndstoreEmpId: String?
    
    public var paymentIdentifier: String?
    
    public var paymentMode: String
    
    public var addressId: Int?
    
    public var billingAddressId: Int?
    
    public var callbackUrl: String?
    
    public var orderingStore: Int?
    
    public var extraMeta: [String: Any]?
    
    public var paymentParams: [String: Any]?
    
    public var paymentAutoConfirm: Bool?
    
    public var meta: [String: Any]?
    
    public var staff: [String: Any]?
    
    public var merchantCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case billingAddress = "billing_address"
        
        case fyndstoreEmpId = "fyndstore_emp_id"
        
        case paymentIdentifier = "payment_identifier"
        
        case paymentMode = "payment_mode"
        
        case addressId = "address_id"
        
        case billingAddressId = "billing_address_id"
        
        case callbackUrl = "callback_url"
        
        case orderingStore = "ordering_store"
        
        case extraMeta = "extra_meta"
        
        case paymentParams = "payment_params"
        
        case paymentAutoConfirm = "payment_auto_confirm"
        
        case meta = "meta"
        
        case staff = "staff"
        
        case merchantCode = "merchant_code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
        billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
        
        fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        paymentMode = try container.decode(String.self, forKey: .paymentMode)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
        
        paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
        
        paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        staff = try? container.decode([String: Any].self, forKey: .staff)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        
        try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
        
        try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        
        try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        
        try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        
        try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        
        try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        
        try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
        
        try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(staff, forKey: .staff)
        
        try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        
    }
}

/*
    Model: CheckCart,
    Service: PosCart
*/

public struct CheckCart: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var breakupValues: BaseCartBreakup?
    
    public var deliveryChargeOrderValue: Int?
    
    public var codCharges: Int?
    
    public var paymentOptions: PaymentOptions?
    
    public var storeCode: String?
    
    public var lastModified: String?
    
    public var cartId: Int?
    
    public var message: String?
    
    public var userType: String?
    
    public var couponText: String?
    
    public var items: [CartProductInfo]?
    
    public var deliveryCharges: Int?
    
    public var errorMessage: String?
    
    public var uid: String?
    
    public var codAvailable: Bool?
    
    public var success: Bool?
    
    public var isValid: Bool?
    
    public var orderId: String?
    
    public var restrictCheckout: Bool?
    
    public var codMessage: String?
    
    public var currency: CartCurrency?
    
    public var checkoutMode: String?
    
    public var storeEmps: [[String: Any]]?
    
    public var gstin: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case breakupValues = "breakup_values"
        
        case deliveryChargeOrderValue = "delivery_charge_order_value"
        
        case codCharges = "cod_charges"
        
        case paymentOptions = "payment_options"
        
        case storeCode = "store_code"
        
        case lastModified = "last_modified"
        
        case cartId = "cart_id"
        
        case message = "message"
        
        case userType = "user_type"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case deliveryCharges = "delivery_charges"
        
        case errorMessage = "error_message"
        
        case uid = "uid"
        
        case codAvailable = "cod_available"
        
        case success = "success"
        
        case isValid = "is_valid"
        
        case orderId = "order_id"
        
        case restrictCheckout = "restrict_checkout"
        
        case codMessage = "cod_message"
        
        case currency = "currency"
        
        case checkoutMode = "checkout_mode"
        
        case storeEmps = "store_emps"
        
        case gstin = "gstin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
        
        codCharges = try? container.decode(Int.self, forKey: .codCharges)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        message = try? container.decode(String.self, forKey: .message)
        
        userType = try? container.decode(String.self, forKey: .userType)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
        
        errorMessage = try? container.decode(String.self, forKey: .errorMessage)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        codMessage = try? container.decode(String.self, forKey: .codMessage)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
        
        try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(userType, forKey: .userType)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        
        try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(codMessage, forKey: .codMessage)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
    }
}

/*
    Model: OrderData,
    Service: PosCart
*/

public struct OrderData: Codable {
    
    public var orderId: String?
    

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
    Model: CartCheckoutResponse,
    Service: PosCart
*/

public struct CartCheckoutResponse: Codable {
    
    public var appInterceptUrl: String?
    
    public var success: Bool?
    
    public var cart: CheckCart?
    
    public var message: String?
    
    public var callbackUrl: String?
    
    public var orderId: String?
    
    public var data: OrderData?
    

    enum CodingKeys: String, CodingKey {
        
        case appInterceptUrl = "app_intercept_url"
        
        case success = "success"
        
        case cart = "cart"
        
        case message = "message"
        
        case callbackUrl = "callback_url"
        
        case orderId = "order_id"
        
        case data = "data"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        cart = try? container.decode(CheckCart.self, forKey: .cart)
        
        message = try? container.decode(String.self, forKey: .message)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        data = try? container.decode(OrderData.self, forKey: .data)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(cart, forKey: .cart)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(data, forKey: .data)
        
    }
}

/*
    Model: CartMetaRequest,
    Service: PosCart
*/

public struct CartMetaRequest: Codable {
    
    public var checkoutMode: String?
    
    public var comment: String?
    
    public var pickUpCustomerDetails: [String: Any]?
    
    public var gstin: String?
    

    enum CodingKeys: String, CodingKey {
        
        case checkoutMode = "checkout_mode"
        
        case comment = "comment"
        
        case pickUpCustomerDetails = "pick_up_customer_details"
        
        case gstin = "gstin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        comment = try? container.decode(String.self, forKey: .comment)
        
        pickUpCustomerDetails = try? container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(comment, forKey: .comment)
        
        try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
    }
}

/*
    Model: CartMetaResponse,
    Service: PosCart
*/

public struct CartMetaResponse: Codable {
    
    public var message: String?
    

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
    Model: CartMetaMissingResponse,
    Service: PosCart
*/

public struct CartMetaMissingResponse: Codable {
    
    public var errors: [String]?
    

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
    Model: GetShareCartLinkRequest,
    Service: PosCart
*/

public struct GetShareCartLinkRequest: Codable {
    
    public var meta: [String: Any]?
    
    public var uid: Int
    

    enum CodingKeys: String, CodingKey {
        
        case meta = "meta"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        uid = try container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: GetShareCartLinkResponse,
    Service: PosCart
*/

public struct GetShareCartLinkResponse: Codable {
    
    public var shareUrl: String?
    
    public var token: String?
    

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
    Model: SharedCartDetails,
    Service: PosCart
*/

public struct SharedCartDetails: Codable {
    
    public var createdOn: String?
    
    public var token: String?
    
    public var user: [String: Any]?
    
    public var source: [String: Any]?
    
    public var meta: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case createdOn = "created_on"
        
        case token = "token"
        
        case user = "user"
        
        case source = "source"
        
        case meta = "meta"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
        token = try? container.decode(String.self, forKey: .token)
        
        user = try? container.decode([String: Any].self, forKey: .user)
        
        source = try? container.decode([String: Any].self, forKey: .source)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        
        try? container.encodeIfPresent(token, forKey: .token)
        
        try? container.encodeIfPresent(user, forKey: .user)
        
        try? container.encodeIfPresent(source, forKey: .source)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
    }
}

/*
    Model: SharedCart,
    Service: PosCart
*/

public struct SharedCart: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var uid: String?
    
    public var lastModified: String?
    
    public var currency: CartCurrency?
    
    public var breakupValues: BaseCartBreakup?
    
    public var cartId: Int?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var couponText: String?
    
    public var checkoutMode: String?
    
    public var items: [CartProductInfo]?
    
    public var paymentOptions: PaymentOptions?
    
    public var restrictCheckout: Bool?
    
    public var sharedCartDetails: SharedCartDetails?
    
    public var gstin: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case uid = "uid"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case breakupValues = "breakup_values"
        
        case cartId = "cart_id"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case items = "items"
        
        case paymentOptions = "payment_options"
        
        case restrictCheckout = "restrict_checkout"
        
        case sharedCartDetails = "shared_cart_details"
        
        case gstin = "gstin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
    }
}

/*
    Model: SharedCartResponse,
    Service: PosCart
*/

public struct SharedCartResponse: Codable {
    
    public var cart: SharedCart?
    
    public var error: String?
    

    enum CodingKeys: String, CodingKey {
        
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

