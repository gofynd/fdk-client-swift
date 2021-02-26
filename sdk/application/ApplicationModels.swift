

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
    
    
    public var page: ProductListingActionPage?
    
    public var type: String?
    

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
    
    
    public var value: String?
    
    public var key: String?
    
    public var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case value = "value"
        
        case key = "key"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        value = try? container.decode(String.self, forKey: .value)
        
        key = try? container.decode(String.self, forKey: .key)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
    }
    
}

/*
    Model: ProductDetailGroupedAttribute,
    Service: Catalog
*/

public struct ProductDetailGroupedAttribute: Codable {
    
    
    public var title: String?
    
    public var details: [ProductDetailAttribute]?
    

    enum CodingKeys: String, CodingKey {
        
        case title = "title"
        
        case details = "details"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
        details = try? container.decode([ProductDetailAttribute].self, forKey: .details)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(details, forKey: .details)
        
    }
    
}

/*
    Model: ProductDetail,
    Service: Catalog
*/

public struct ProductDetail: Codable {
    
    
    public var slug: String?
    
    public var productOnlineDate: String?
    
    public var categories: [ProductBrand]?
    
    public var description: String?
    
    public var type: String?
    
    public var uid: Int?
    
    public var shortDescription: String?
    
    public var attributes: [String: Any]?
    
    public var color: String?
    
    public var itemType: String?
    
    public var similars: [String]?
    
    public var teaserTag: [String: Any]?
    
    public var imageNature: String?
    
    public var tryouts: [String]?
    
    public var ratingCount: Int?
    
    public var highlights: [String]?
    
    public var brand: ProductBrand?
    
    public var name: String?
    
    public var medias: [Media]?
    
    public var rating: Double?
    
    public var promoMeta: [String: Any]?
    
    public var groupedAttributes: [ProductDetailGroupedAttribute]?
    
    public var hasVariant: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case productOnlineDate = "product_online_date"
        
        case categories = "categories"
        
        case description = "description"
        
        case type = "type"
        
        case uid = "uid"
        
        case shortDescription = "short_description"
        
        case attributes = "attributes"
        
        case color = "color"
        
        case itemType = "item_type"
        
        case similars = "similars"
        
        case teaserTag = "teaser_tag"
        
        case imageNature = "image_nature"
        
        case tryouts = "tryouts"
        
        case ratingCount = "rating_count"
        
        case highlights = "highlights"
        
        case brand = "brand"
        
        case name = "name"
        
        case medias = "medias"
        
        case rating = "rating"
        
        case promoMeta = "promo_meta"
        
        case groupedAttributes = "grouped_attributes"
        
        case hasVariant = "has_variant"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
        
        categories = try? container.decode([ProductBrand].self, forKey: .categories)
        
        description = try? container.decode(String.self, forKey: .description)
        
        type = try? container.decode(String.self, forKey: .type)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        shortDescription = try? container.decode(String.self, forKey: .shortDescription)
        
        attributes = try? container.decode([String: Any].self, forKey: .attributes)
        
        color = try? container.decode(String.self, forKey: .color)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        similars = try? container.decode([String].self, forKey: .similars)
        
        teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
        
        imageNature = try? container.decode(String.self, forKey: .imageNature)
        
        tryouts = try? container.decode([String].self, forKey: .tryouts)
        
        ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
        
        highlights = try? container.decode([String].self, forKey: .highlights)
        
        brand = try? container.decode(ProductBrand.self, forKey: .brand)
        
        name = try? container.decode(String.self, forKey: .name)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
        
        hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        
        try? container.encodeIfPresent(attributes, forKey: .attributes)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(similars, forKey: .similars)
        
        try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        
        try? container.encodeIfPresent(imageNature, forKey: .imageNature)
        
        try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        
        try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        
        try? container.encodeIfPresent(highlights, forKey: .highlights)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(rating, forKey: .rating)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        
        try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
        
    }
    
}

/*
    Model: ErrorResponse,
    Service: Catalog
*/

public struct ErrorResponse: Codable {
    
    
    public var message: String?
    
    public var success: Bool?
    

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
    Model: ProductSize,
    Service: Catalog
*/

public struct ProductSize: Codable {
    
    
    public var quantity: Int?
    
    public var display: String?
    
    public var value: String?
    
    public var isAvailable: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case quantity = "quantity"
        
        case display = "display"
        
        case value = "value"
        
        case isAvailable = "is_available"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        display = try? container.decode(String.self, forKey: .display)
        
        value = try? container.decode(String.self, forKey: .value)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
    }
    
}

/*
    Model: Price,
    Service: Catalog
*/

public struct Price: Codable {
    
    
    public var min: Double?
    
    public var currencyCode: String?
    
    public var max: Double?
    
    public var currencySymbol: String?
    

    enum CodingKeys: String, CodingKey {
        
        case min = "min"
        
        case currencyCode = "currency_code"
        
        case max = "max"
        
        case currencySymbol = "currency_symbol"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        min = try? container.decode(Double.self, forKey: .min)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        max = try? container.decode(Double.self, forKey: .max)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(min, forKey: .min)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(max, forKey: .max)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
    }
    
}

/*
    Model: ProductListingPrice,
    Service: Catalog
*/

public struct ProductListingPrice: Codable {
    
    
    public var marked: Price?
    
    public var effective: Price?
    

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
    Model: ProductSizes,
    Service: Catalog
*/

public struct ProductSizes: Codable {
    
    
    public var discount: String?
    
    public var sizeChart: [String: Any]?
    
    public var sizes: [ProductSize]?
    
    public var sellable: Bool?
    
    public var promoMeta: [String: Any]?
    
    public var price: ProductListingPrice?
    
    public var stores: ProductSizeStores?
    

    enum CodingKeys: String, CodingKey {
        
        case discount = "discount"
        
        case sizeChart = "size_chart"
        
        case sizes = "sizes"
        
        case sellable = "sellable"
        
        case promoMeta = "promo_meta"
        
        case price = "price"
        
        case stores = "stores"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
        
        sizes = try? container.decode([ProductSize].self, forKey: .sizes)
        
        sellable = try? container.decode(Bool.self, forKey: .sellable)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        price = try? container.decode(ProductListingPrice.self, forKey: .price)
        
        stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
        
        try? container.encodeIfPresent(sizes, forKey: .sizes)
        
        try? container.encodeIfPresent(sellable, forKey: .sellable)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(stores, forKey: .stores)
        
    }
    
}

/*
    Model: ProductStockPrice,
    Service: Catalog
*/

public struct ProductStockPrice: Codable {
    
    
    public var marked: Double?
    
    public var currency: String?
    
    public var effective: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case marked = "marked"
        
        case currency = "currency"
        
        case effective = "effective"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
        currency = try? container.decode(String.self, forKey: .currency)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
    }
    
}

/*
    Model: Store,
    Service: Catalog
*/

public struct Store: Codable {
    
    
    public var count: Int?
    
    public var name: String?
    
    public var uid: Int?
    

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
    Model: ArticleAssignment,
    Service: Catalog
*/

public struct ArticleAssignment: Codable {
    
    
    public var strategy: String?
    
    public var level: String?
    

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
    Model: Seller,
    Service: Catalog
*/

public struct Seller: Codable {
    
    
    public var count: Int?
    
    public var name: String?
    
    public var uid: Int?
    

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
    Model: ProductSizePriceResponse,
    Service: Catalog
*/

public struct ProductSizePriceResponse: Codable {
    
    
    public var pricePerPrice: ProductStockPrice?
    
    public var discount: String?
    
    public var store: Store?
    
    public var specialBadge: String?
    
    public var longLat: [Double]?
    
    public var quantity: Int?
    
    public var strategyWiseListing: [[String: Any]]?
    
    public var set: [String: Any]?
    
    public var articleAssignment: ArticleAssignment?
    
    public var sellerCount: Int?
    
    public var promoMeta: [String: Any]?
    
    public var pincode: Int?
    
    public var seller: Seller?
    
    public var price: ProductStockPrice?
    
    public var itemType: String?
    
    public var articleId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case pricePerPrice = "price_per_price"
        
        case discount = "discount"
        
        case store = "store"
        
        case specialBadge = "special_badge"
        
        case longLat = "long_lat"
        
        case quantity = "quantity"
        
        case strategyWiseListing = "strategy_wise_listing"
        
        case set = "set"
        
        case articleAssignment = "article_assignment"
        
        case sellerCount = "seller_count"
        
        case promoMeta = "promo_meta"
        
        case pincode = "pincode"
        
        case seller = "seller"
        
        case price = "price"
        
        case itemType = "item_type"
        
        case articleId = "article_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        store = try? container.decode(Store.self, forKey: .store)
        
        specialBadge = try? container.decode(String.self, forKey: .specialBadge)
        
        longLat = try? container.decode([Double].self, forKey: .longLat)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
        
        set = try? container.decode([String: Any].self, forKey: .set)
        
        articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
        
        sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
        try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
        
        try? container.encodeIfPresent(longLat, forKey: .longLat)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
        
        try? container.encodeIfPresent(set, forKey: .set)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
        try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
    }
    
}

/*
    Model: ProductPage,
    Service: Catalog
*/

public struct ProductPage: Codable {
    
    
    public var nextId: String?
    
    public var current: Int?
    
    public var totalItem: Int?
    
    public var hasNext: Bool?
    
    public var hasPrevious: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case nextId = "next_id"
        
        case current = "current"
        
        case totalItem = "total_item"
        
        case hasNext = "has_next"
        
        case hasPrevious = "has_previous"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        nextId = try? container.decode(String.self, forKey: .nextId)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        totalItem = try? container.decode(Int.self, forKey: .totalItem)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(nextId, forKey: .nextId)
        
        try? container.encodeIfPresent(current, forKey: .current)
        
        try? container.encodeIfPresent(totalItem, forKey: .totalItem)
        
        try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        
        try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        
    }
    
}

/*
    Model: ProductSizeSellerFilter,
    Service: Catalog
*/

public struct ProductSizeSellerFilter: Codable {
    
    
    public var name: String?
    
    public var value: String?
    
    public var isSelected: Bool?
    

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
    Model: ProductSizeSellersResponse,
    Service: Catalog
*/

public struct ProductSizeSellersResponse: Codable {
    
    
    public var items: [ProductSizePriceResponse]?
    
    public var page: ProductPage?
    
    public var sortOn: [ProductSizeSellerFilter]?
    

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
    Model: AttributeDetail,
    Service: Catalog
*/

public struct AttributeDetail: Codable {
    
    
    public var description: String?
    
    public var display: String?
    
    public var key: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case display = "display"
        
        case key = "key"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        display = try? container.decode(String.self, forKey: .display)
        
        key = try? container.decode(String.self, forKey: .key)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
    }
    
}

/*
    Model: ProductsComparisonResponse,
    Service: Catalog
*/

public struct ProductsComparisonResponse: Codable {
    
    
    public var items: [ProductDetail]?
    
    public var attributesMetadata: [AttributeDetail]?
    

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
    Model: ProductCompareResponse,
    Service: Catalog
*/

public struct ProductCompareResponse: Codable {
    
    
    public var items: [ProductDetail]?
    
    public var title: String?
    
    public var subtitle: String?
    
    public var attributesMetadata: [AttributeDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case title = "title"
        
        case subtitle = "subtitle"
        
        case attributesMetadata = "attributes_metadata"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
        title = try? container.decode(String.self, forKey: .title)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
        try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
        
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
    
    
    public var items: [ProductDetail]?
    
    public var title: String?
    
    public var subtitle: String?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case title = "title"
        
        case subtitle = "subtitle"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
        title = try? container.decode(String.self, forKey: .title)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
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
    
    
    public var slug: String?
    
    public var name: String?
    
    public var isAvailable: Bool?
    
    public var medias: [Media]?
    
    public var action: ProductListingAction?
    
    public var value: String?
    
    public var color: String?
    
    public var colorName: String?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case name = "name"
        
        case isAvailable = "is_available"
        
        case medias = "medias"
        
        case action = "action"
        
        case value = "value"
        
        case color = "color"
        
        case colorName = "color_name"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        name = try? container.decode(String.self, forKey: .name)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        value = try? container.decode(String.self, forKey: .value)
        
        color = try? container.decode(String.self, forKey: .color)
        
        colorName = try? container.decode(String.self, forKey: .colorName)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(colorName, forKey: .colorName)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
    
}

/*
    Model: ProductVariantResponse,
    Service: Catalog
*/

public struct ProductVariantResponse: Codable {
    
    
    public var items: [ProductVariantItemResponse]?
    
    public var displayType: String?
    
    public var header: String?
    

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
    Model: StoreDetail,
    Service: Catalog
*/

public struct StoreDetail: Codable {
    
    
    public var city: String?
    
    public var name: String?
    
    public var id: Int?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case city = "city"
        
        case name = "name"
        
        case id = "id"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        city = try? container.decode(String.self, forKey: .city)
        
        name = try? container.decode(String.self, forKey: .name)
        
        id = try? container.decode(Int.self, forKey: .id)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
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
    Model: ProductStockStatusItem,
    Service: Catalog
*/

public struct ProductStockStatusItem: Codable {
    
    
    public var store: StoreDetail?
    
    public var size: String?
    
    public var identifier: [String: Any]?
    
    public var quantity: Int?
    
    public var itemId: Int?
    
    public var seller: Seller?
    
    public var price: ProductStockPrice?
    
    public var company: CompanyDetail?
    
    public var uid: String?
    

    enum CodingKeys: String, CodingKey {
        
        case store = "store"
        
        case size = "size"
        
        case identifier = "identifier"
        
        case quantity = "quantity"
        
        case itemId = "item_id"
        
        case seller = "seller"
        
        case price = "price"
        
        case company = "company"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        store = try? container.decode(StoreDetail.self, forKey: .store)
        
        size = try? container.decode(String.self, forKey: .size)
        
        identifier = try? container.decode([String: Any].self, forKey: .identifier)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        company = try? container.decode(CompanyDetail.self, forKey: .company)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
        try? container.encodeIfPresent(size, forKey: .size)
        
        try? container.encodeIfPresent(identifier, forKey: .identifier)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(company, forKey: .company)
        
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
    
    
    public var items: [ProductStockStatusItem]?
    
    public var page: ProductPage?
    

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
    Model: ProductListingDetail,
    Service: Catalog
*/

public struct ProductListingDetail: Codable {
    
    
    public var slug: String?
    
    public var sellable: Bool?
    
    public var productOnlineDate: String?
    
    public var categories: [ProductBrand]?
    
    public var description: String?
    
    public var type: String?
    
    public var uid: Int?
    
    public var shortDescription: String?
    
    public var attributes: [String: Any]?
    
    public var color: String?
    
    public var itemType: String?
    
    public var similars: [String]?
    
    public var teaserTag: [String: Any]?
    
    public var imageNature: String?
    
    public var tryouts: [String]?
    
    public var ratingCount: Int?
    
    public var highlights: [String]?
    
    public var brand: ProductBrand?
    
    public var discount: String?
    
    public var name: String?
    
    public var medias: [Media]?
    
    public var rating: Double?
    
    public var promoMeta: [String: Any]?
    
    public var groupedAttributes: [ProductDetailGroupedAttribute]?
    
    public var price: ProductListingPrice?
    
    public var hasVariant: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case sellable = "sellable"
        
        case productOnlineDate = "product_online_date"
        
        case categories = "categories"
        
        case description = "description"
        
        case type = "type"
        
        case uid = "uid"
        
        case shortDescription = "short_description"
        
        case attributes = "attributes"
        
        case color = "color"
        
        case itemType = "item_type"
        
        case similars = "similars"
        
        case teaserTag = "teaser_tag"
        
        case imageNature = "image_nature"
        
        case tryouts = "tryouts"
        
        case ratingCount = "rating_count"
        
        case highlights = "highlights"
        
        case brand = "brand"
        
        case discount = "discount"
        
        case name = "name"
        
        case medias = "medias"
        
        case rating = "rating"
        
        case promoMeta = "promo_meta"
        
        case groupedAttributes = "grouped_attributes"
        
        case price = "price"
        
        case hasVariant = "has_variant"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        sellable = try? container.decode(Bool.self, forKey: .sellable)
        
        productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
        
        categories = try? container.decode([ProductBrand].self, forKey: .categories)
        
        description = try? container.decode(String.self, forKey: .description)
        
        type = try? container.decode(String.self, forKey: .type)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        shortDescription = try? container.decode(String.self, forKey: .shortDescription)
        
        attributes = try? container.decode([String: Any].self, forKey: .attributes)
        
        color = try? container.decode(String.self, forKey: .color)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        similars = try? container.decode([String].self, forKey: .similars)
        
        teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
        
        imageNature = try? container.decode(String.self, forKey: .imageNature)
        
        tryouts = try? container.decode([String].self, forKey: .tryouts)
        
        ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
        
        highlights = try? container.decode([String].self, forKey: .highlights)
        
        brand = try? container.decode(ProductBrand.self, forKey: .brand)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        name = try? container.decode(String.self, forKey: .name)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
        
        price = try? container.decode(ProductListingPrice.self, forKey: .price)
        
        hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(sellable, forKey: .sellable)
        
        try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        
        try? container.encodeIfPresent(attributes, forKey: .attributes)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(similars, forKey: .similars)
        
        try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        
        try? container.encodeIfPresent(imageNature, forKey: .imageNature)
        
        try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        
        try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        
        try? container.encodeIfPresent(highlights, forKey: .highlights)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(rating, forKey: .rating)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
        
    }
    
}

/*
    Model: ProductFiltersValue,
    Service: Catalog
*/

public struct ProductFiltersValue: Codable {
    
    
    public var display: String
    
    public var isSelected: Bool
    
    public var max: Int?
    
    public var value: String
    
    public var currencySymbol: String?
    
    public var selectedMax: Int?
    
    public var min: Int?
    
    public var count: Int?
    
    public var selectedMin: Int?
    
    public var currencyCode: String?
    
    public var queryFormat: String?
    
    public var displayFormat: String?
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case isSelected = "is_selected"
        
        case max = "max"
        
        case value = "value"
        
        case currencySymbol = "currency_symbol"
        
        case selectedMax = "selected_max"
        
        case min = "min"
        
        case count = "count"
        
        case selectedMin = "selected_min"
        
        case currencyCode = "currency_code"
        
        case queryFormat = "query_format"
        
        case displayFormat = "display_format"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try container.decode(String.self, forKey: .display)
        
        isSelected = try container.decode(Bool.self, forKey: .isSelected)
        
        max = try? container.decode(Int.self, forKey: .max)
        
        value = try container.decode(String.self, forKey: .value)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        selectedMax = try? container.decode(Int.self, forKey: .selectedMax)
        
        min = try? container.decode(Int.self, forKey: .min)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        selectedMin = try? container.decode(Int.self, forKey: .selectedMin)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        queryFormat = try? container.decode(String.self, forKey: .queryFormat)
        
        displayFormat = try? container.decode(String.self, forKey: .displayFormat)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(max, forKey: .max)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
        
        try? container.encodeIfPresent(min, forKey: .min)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
        try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
        
        try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
        
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
    
    public var value: String?
    
    public var isSelected: Bool?
    

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
    Model: ProductListingResponse,
    Service: Catalog
*/

public struct ProductListingResponse: Codable {
    
    
    public var items: [ProductListingDetail]?
    
    public var page: ProductPage?
    
    public var filter: [ProductFilters]?
    
    public var sortOn: [ProductSortOn]?
    

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
    Model: ImageUrls,
    Service: Catalog
*/

public struct ImageUrls: Codable {
    
    
    public var landscape: Media?
    
    public var portrait: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case landscape = "landscape"
        
        case portrait = "portrait"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        landscape = try? container.decode(Media.self, forKey: .landscape)
        
        portrait = try? container.decode(Media.self, forKey: .portrait)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(landscape, forKey: .landscape)
        
        try? container.encodeIfPresent(portrait, forKey: .portrait)
        
    }
    
}

/*
    Model: BrandItem,
    Service: Catalog
*/

public struct BrandItem: Codable {
    
    
    public var discount: String?
    
    public var name: String?
    
    public var banners: ImageUrls?
    
    public var departments: [String]?
    
    public var logo: Media?
    
    public var slug: String?
    
    public var action: ProductListingAction?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case discount = "discount"
        
        case name = "name"
        
        case banners = "banners"
        
        case departments = "departments"
        
        case logo = "logo"
        
        case slug = "slug"
        
        case action = "action"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        departments = try? container.decode([String].self, forKey: .departments)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(departments, forKey: .departments)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
    
}

/*
    Model: BrandListingResponse,
    Service: Catalog
*/

public struct BrandListingResponse: Codable {
    
    
    public var items: [BrandItem]?
    
    public var page: ProductPage?
    

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
    Model: BrandDetailResponse,
    Service: Catalog
*/

public struct BrandDetailResponse: Codable {
    
    
    public var name: String?
    
    public var banners: ImageUrls?
    
    public var uid: Int?
    
    public var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case banners = "banners"
        
        case uid = "uid"
        
        case logo = "logo"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
    }
    
}

/*
    Model: DepartmentIdentifier,
    Service: Catalog
*/

public struct DepartmentIdentifier: Codable {
    
    
    public var slug: String?
    
    public var uid: Int?
    

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
    Model: CategoryItems,
    Service: Catalog
*/

public struct CategoryItems: Codable {
    
    
    public var slug: String?
    
    public var name: String?
    
    public var banners: ImageUrls?
    
    public var childs: [[String: Any]]?
    
    public var action: ProductListingAction?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case name = "name"
        
        case banners = "banners"
        
        case childs = "childs"
        
        case action = "action"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        childs = try? container.decode([[String: Any]].self, forKey: .childs)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(childs, forKey: .childs)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
    
}

/*
    Model: DepartmentCategoryTree,
    Service: Catalog
*/

public struct DepartmentCategoryTree: Codable {
    
    
    public var items: [CategoryItems]?
    
    public var department: String?
    

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
    
    public var banners: ImageUrls?
    
    public var uid: Int?
    
    public var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case banners = "banners"
        
        case uid = "uid"
        
        case logo = "logo"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
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
    
    
    public var items: [ProductListingDetail]?
    
    public var page: Page?
    
    public var message: String?
    

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
    Model: Department,
    Service: Catalog
*/

public struct Department: Codable {
    
    
    public var slug: String?
    
    public var name: String?
    
    public var logo: Media?
    
    public var priorityOrder: Int?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case name = "name"
        
        case logo = "logo"
        
        case priorityOrder = "priority_order"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
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
    Model: SeoDetail,
    Service: Catalog
*/

public struct SeoDetail: Codable {
    
    
    public var title: String?
    
    public var description: String?
    

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
    Model: GetCollectionDetailNest,
    Service: Catalog
*/

public struct GetCollectionDetailNest: Codable {
    
    
    public var slug: String?
    
    public var description: String?
    
    public var allowSort: Bool?
    
    public var type: String?
    
    public var uid: String?
    
    public var meta: [String: Any]?
    
    public var seo: SeoDetail?
    
    public var appId: String?
    
    public var query: [String: Any]?
    
    public var visibleFacetsKeys: [String]?
    
    public var tag: [String]?
    
    public var banners: ImageUrls?
    
    public var logo: Media?
    
    public var schedule: [String: Any]?
    
    public var action: ProductListingAction?
    
    public var isActive: Bool?
    
    public var cron: [String: Any]?
    
    public var name: String?
    
    public var allowFacets: Bool?
    
    public var badge: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case description = "description"
        
        case allowSort = "allow_sort"
        
        case type = "type"
        
        case uid = "uid"
        
        case meta = "meta"
        
        case seo = "seo"
        
        case appId = "app_id"
        
        case query = "query"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case tag = "tag"
        
        case banners = "banners"
        
        case logo = "logo"
        
        case schedule = "_schedule"
        
        case action = "action"
        
        case isActive = "is_active"
        
        case cron = "cron"
        
        case name = "name"
        
        case allowFacets = "allow_facets"
        
        case badge = "badge"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        description = try? container.decode(String.self, forKey: .description)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        type = try? container.decode(String.self, forKey: .type)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        name = try? container.decode(String.self, forKey: .name)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
    }
    
}

/*
    Model: CollectionListingFilterTag,
    Service: Catalog
*/

public struct CollectionListingFilterTag: Codable {
    
    
    public var name: String?
    
    public var display: String?
    
    public var isSelected: Bool?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CollectionListingFilterType,
    Service: Catalog
*/

public struct CollectionListingFilterType: Codable {
    
    
    public var name: String?
    
    public var display: String?
    
    public var isSelected: Bool?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CollectionListingFilter,
    Service: Catalog
*/

public struct CollectionListingFilter: Codable {
    
    
    public var tags: [CollectionListingFilterTag]?
    
    public var type: [CollectionListingFilterType]?
    

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
    Model: GetCollectionListingResponse,
    Service: Catalog
*/

public struct GetCollectionListingResponse: Codable {
    
    
    public var items: [GetCollectionDetailNest]?
    
    public var page: ProductPage?
    
    public var filters: CollectionListingFilter?
    

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
    Model: UserInfo,
    Service: Catalog
*/

public struct UserInfo: Codable {
    
    
    public var userId: String?
    
    public var email: String?
    
    public var uid: String?
    
    public var username: String?
    

    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case email = "email"
        
        case uid = "uid"
        
        case username = "username"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        email = try? container.decode(String.self, forKey: .email)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        username = try? container.decode(String.self, forKey: .username)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(userId, forKey: .userId)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(username, forKey: .username)
        
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
    
    
    public var landscape: CollectionImage
    
    public var portrait: CollectionImage
    

    enum CodingKeys: String, CodingKey {
        
        case landscape = "landscape"
        
        case portrait = "portrait"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        landscape = try container.decode(CollectionImage.self, forKey: .landscape)
        
        portrait = try container.decode(CollectionImage.self, forKey: .portrait)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(landscape, forKey: .landscape)
        
        try? container.encodeIfPresent(portrait, forKey: .portrait)
        
    }
    
}

/*
    Model: Schedule,
    Service: Catalog
*/

public struct Schedule: Codable {
    
    
    public var end: String?
    
    public var start: String?
    
    public var cron: String?
    
    public var duration: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case end = "end"
        
        case start = "start"
        
        case cron = "cron"
        
        case duration = "duration"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        end = try? container.decode(String.self, forKey: .end)
        
        start = try? container.decode(String.self, forKey: .start)
        
        cron = try? container.decode(String.self, forKey: .cron)
        
        duration = try? container.decode(Int.self, forKey: .duration)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(end, forKey: .end)
        
        try? container.encodeIfPresent(start, forKey: .start)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(duration, forKey: .duration)
        
    }
    
}

/*
    Model: CollectionBadge,
    Service: Catalog
*/

public struct CollectionBadge: Codable {
    
    
    public var text: String?
    
    public var color: String?
    

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
    Model: CreateCollection,
    Service: Catalog
*/

public struct CreateCollection: Codable {
    
    
    public var slug: String
    
    public var localeLanguage: [String: Any]?
    
    public var description: String?
    
    public var tags: [String]?
    
    public var allowSort: Bool?
    
    public var type: String
    
    public var createdBy: UserInfo?
    
    public var published: Bool?
    
    public var meta: [String: Any]?
    
    public var customJson: [String: Any]?
    
    public var seo: SeoDetail?
    
    public var appId: String
    
    public var query: [String: Any]?
    
    public var visibleFacetsKeys: [String]?
    
    public var banners: CollectionBanner
    
    public var logo: CollectionImage
    
    public var schedule: Schedule?
    
    public var isActive: Bool?
    
    public var name: String
    
    public var sortOn: String?
    
    public var allowFacets: Bool?
    
    public var badge: CollectionBadge?
    
    public var modifiedBy: UserInfo?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case localeLanguage = "_locale_language"
        
        case description = "description"
        
        case tags = "tags"
        
        case allowSort = "allow_sort"
        
        case type = "type"
        
        case createdBy = "created_by"
        
        case published = "published"
        
        case meta = "meta"
        
        case customJson = "_custom_json"
        
        case seo = "seo"
        
        case appId = "app_id"
        
        case query = "query"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case banners = "banners"
        
        case logo = "logo"
        
        case schedule = "_schedule"
        
        case isActive = "is_active"
        
        case name = "name"
        
        case sortOn = "sort_on"
        
        case allowFacets = "allow_facets"
        
        case badge = "badge"
        
        case modifiedBy = "modified_by"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try container.decode(String.self, forKey: .slug)
        
        localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
        
        description = try? container.decode(String.self, forKey: .description)
        
        tags = try? container.decode([String].self, forKey: .tags)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        type = try container.decode(String.self, forKey: .type)
        
        createdBy = try? container.decode(UserInfo.self, forKey: .createdBy)
        
        published = try? container.decode(Bool.self, forKey: .published)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        customJson = try? container.decode([String: Any].self, forKey: .customJson)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        appId = try container.decode(String.self, forKey: .appId)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        banners = try container.decode(CollectionBanner.self, forKey: .banners)
        
        logo = try container.decode(CollectionImage.self, forKey: .logo)
        
        schedule = try? container.decode(Schedule.self, forKey: .schedule)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        name = try container.decode(String.self, forKey: .name)
        
        sortOn = try? container.decode(String.self, forKey: .sortOn)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        badge = try? container.decode(CollectionBadge.self, forKey: .badge)
        
        modifiedBy = try? container.decode(UserInfo.self, forKey: .modifiedBy)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(tags, forKey: .tags)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        
        try? container.encodeIfPresent(published, forKey: .published)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(customJson, forKey: .customJson)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        
    }
    
}

/*
    Model: CollectionDetailResponse,
    Service: Catalog
*/

public struct CollectionDetailResponse: Codable {
    
    
    public var slug: String?
    
    public var name: String?
    
    public var banners: ImageUrls?
    
    public var tag: [String]?
    
    public var logo: Media?
    
    public var schedule: [String: Any]?
    
    public var meta: [String: Any]?
    
    public var allowFacets: Bool?
    
    public var badge: [String: Any]?
    
    public var seo: SeoDetail?
    
    public var appId: String?
    
    public var description: String?
    
    public var allowSort: Bool?
    
    public var query: [String: Any]?
    
    public var visibleFacetsKeys: [String]?
    
    public var isActive: Bool?
    
    public var type: String?
    
    public var cron: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case name = "name"
        
        case banners = "banners"
        
        case tag = "tag"
        
        case logo = "logo"
        
        case schedule = "_schedule"
        
        case meta = "meta"
        
        case allowFacets = "allow_facets"
        
        case badge = "badge"
        
        case seo = "seo"
        
        case appId = "app_id"
        
        case description = "description"
        
        case allowSort = "allow_sort"
        
        case query = "query"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case isActive = "is_active"
        
        case type = "type"
        
        case cron = "cron"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        description = try? container.decode(String.self, forKey: .description)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        type = try? container.decode(String.self, forKey: .type)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
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
    
    
    public var pageNo: Int
    
    public var items: [CollectionItem]?
    
    public var query: [String: Any]?
    
    public var type: String?
    
    public var pageSize: Int
    

    enum CodingKeys: String, CodingKey {
        
        case pageNo = "page_no"
        
        case items = "items"
        
        case query = "query"
        
        case type = "type"
        
        case pageSize = "page_size"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pageNo = try container.decode(Int.self, forKey: .pageNo)
        
        items = try? container.decode([CollectionItem].self, forKey: .items)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        type = try? container.decode(String.self, forKey: .type)
        
        pageSize = try container.decode(Int.self, forKey: .pageSize)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pageNo, forKey: .pageNo)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        
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
    Model: GetFollowListingResponse,
    Service: Catalog
*/

public struct GetFollowListingResponse: Codable {
    
    
    public var items: [[String: Any]]
    
    public var page: ProductPage
    

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
    Model: FollowPostResponse,
    Service: Catalog
*/

public struct FollowPostResponse: Codable {
    
    
    public var id: String
    
    public var message: String
    

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
    
    
    public var collections: [Int]?
    
    public var brands: [Int]?
    
    public var products: [Int]?
    

    enum CodingKeys: String, CodingKey {
        
        case collections = "collections"
        
        case brands = "brands"
        
        case products = "products"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        collections = try? container.decode([Int].self, forKey: .collections)
        
        brands = try? container.decode([Int].self, forKey: .brands)
        
        products = try? container.decode([Int].self, forKey: .products)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(collections, forKey: .collections)
        
        try? container.encodeIfPresent(brands, forKey: .brands)
        
        try? container.encodeIfPresent(products, forKey: .products)
        
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
    
    public var address: String?
    
    public var storeEmail: String?
    
    public var latLong: LatLong?
    
    public var state: String?
    
    public var pincode: Int?
    
    public var city: String?
    
    public var storeCode: String?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case country = "country"
        
        case address = "address"
        
        case storeEmail = "store_email"
        
        case latLong = "lat_long"
        
        case state = "state"
        
        case pincode = "pincode"
        
        case city = "city"
        
        case storeCode = "store_code"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        country = try? container.decode(String.self, forKey: .country)
        
        address = try? container.decode(String.self, forKey: .address)
        
        storeEmail = try? container.decode(String.self, forKey: .storeEmail)
        
        latLong = try? container.decode(LatLong.self, forKey: .latLong)
        
        state = try? container.decode(String.self, forKey: .state)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        city = try? container.decode(String.self, forKey: .city)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(country, forKey: .country)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
        
        try? container.encodeIfPresent(latLong, forKey: .latLong)
        
        try? container.encodeIfPresent(state, forKey: .state)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
    
}

/*
    Model: StoreListingResponse,
    Service: Catalog
*/

public struct StoreListingResponse: Codable {
    
    
    public var items: [Store1]?
    
    public var page: ProductPage?
    

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
    Model: TicketList,
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Model: ThemesSchema,
    Service: Catalog
*/

public struct ThemesSchema: Codable {
    
    
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
    Model: pagesSchema,
    Service: Catalog
*/

public struct pagesSchema: Codable {
    
    
    public var text: String?
    
    public var path: String?
    
    public var type: String?
    
    public var value: String?
    
    public var sections: [[String: Any]]?
    

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
    Model: availableSectionSchema,
    Service: Catalog
*/

public struct availableSectionSchema: Codable {
    
    
    public var blocks: [[String: Any]]?
    
    public var name: String?
    
    public var label: String?
    
    public var props: [[String: Any]]?
    

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
    Model: sectionSchema,
    Service: Catalog
*/

public struct sectionSchema: Codable {
    
    
    public var pageKey: String?
    
    public var pageSections: [[String: Any]]?
    

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
    Model: EditEmailRequestSchema,
    Service: Catalog
*/

public struct EditEmailRequestSchema: Codable {
    
    
    public var email: String?
    

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
    Model: SendVerificationLinkMobileRequestSchema,
    Service: Catalog
*/

public struct SendVerificationLinkMobileRequestSchema: Codable {
    
    
    public var verified: Bool?
    
    public var active: Bool?
    
    public var countryCode: String?
    
    public var phone: String?
    
    public var primary: Bool?
    

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
    Model: EditMobileRequestSchema,
    Service: Catalog
*/

public struct EditMobileRequestSchema: Codable {
    
    
    public var countryCode: String?
    
    public var phone: String?
    

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
    Model: EditProfileRequestSchema,
    Service: Catalog
*/

public struct EditProfileRequestSchema: Codable {
    
    
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
    Model: SendEmailOtpRequestSchema,
    Service: Catalog
*/

public struct SendEmailOtpRequestSchema: Codable {
    
    
    public var email: String?
    
    public var action: String?
    
    public var token: String?
    
    public var registerToken: String?
    

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
    Model: VerifyOtpRequestSchema,
    Service: Catalog
*/

public struct VerifyOtpRequestSchema: Codable {
    
    
    public var requestId: String?
    
    public var registerToken: String?
    
    public var otp: String?
    

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
    Model: SendMobileOtpRequestSchema,
    Service: Catalog
*/

public struct SendMobileOtpRequestSchema: Codable {
    
    
    public var mobile: String?
    
    public var countryCode: String?
    
    public var action: String?
    
    public var token: String?
    
    public var androidHash: String?
    
    public var force: String?
    

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
    Model: UpdatePasswordRequestSchema,
    Service: Catalog
*/

public struct UpdatePasswordRequestSchema: Codable {
    
    
    public var oldPassword: String?
    
    public var newPassword: String?
    

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
    Model: FormRegisterRequestSchema,
    Service: Catalog
*/

public struct FormRegisterRequestSchema: Codable {
    
    
    public var firstName: String?
    
    public var lastName: String?
    
    public var gender: String?
    
    public var email: String?
    
    public var password: String?
    
    public var phone: [String: Any]?
    
    public var registerToken: String?
    

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
    Model: TokenRequestBodySchema,
    Service: Catalog
*/

public struct TokenRequestBodySchema: Codable {
    
    
    public var token: String?
    

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
    Model: ForgotPasswordRequestSchema,
    Service: Catalog
*/

public struct ForgotPasswordRequestSchema: Codable {
    
    
    public var code: String?
    
    public var password: String?
    

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
    Model: CodeRequestBodySchema,
    Service: Catalog
*/

public struct CodeRequestBodySchema: Codable {
    
    
    public var code: String?
    

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
    Model: SendResetPasswordEmailRequestSchema,
    Service: Catalog
*/

public struct SendResetPasswordEmailRequestSchema: Codable {
    
    
    public var email: String?
    
    public var gRecaptchaResponse: String?
    

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
    Model: PasswordLoginRequestSchema,
    Service: Catalog
*/

public struct PasswordLoginRequestSchema: Codable {
    
    
    public var gRecaptchaResponse: String?
    
    public var password: String?
    
    public var username: String?
    

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
    Model: SendOtpRequestSchema,
    Service: Catalog
*/

public struct SendOtpRequestSchema: Codable {
    
    
    public var countryCode: String?
    
    public var gRecaptchaResponse: String?
    
    public var mobile: String?
    

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
    Model: OAuthRequestSchema,
    Service: Catalog
*/

public struct OAuthRequestSchema: Codable {
    
    
    public var isSignedIn: Bool?
    
    public var oauth2: [String: Any]?
    
    public var profile: [String: Any]?
    

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
    Model: AuthSuccess,
    Service: Catalog
*/

public struct AuthSuccess: Codable {
    
    
    public var registerToken: String?
    
    public var userExists: Bool?
    
    public var user: [String: Any]?
    

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
    Model: SendOtpResponse,
    Service: Catalog
*/

public struct SendOtpResponse: Codable {
    
    
    public var resendTimer: Int?
    
    public var resendToken: String?
    
    public var success: Bool?
    
    public var requestId: String?
    
    public var message: String?
    
    public var mobile: String?
    
    public var countryCode: String?
    

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
    Model: LoginSuccess,
    Service: Catalog
*/

public struct LoginSuccess: Codable {
    
    
    public var user: UserSchema?
    

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
    Model: VerifyOtpSuccess,
    Service: Catalog
*/

public struct VerifyOtpSuccess: Codable {
    
    
    public var user: UserSchema?
    
    public var userExists: Bool?
    

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
    Model: ResetPasswordSuccess,
    Service: Catalog
*/

public struct ResetPasswordSuccess: Codable {
    
    
    public var status: String?
    

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
    Model: RegisterFormSuccess,
    Service: Catalog
*/

public struct RegisterFormSuccess: Codable {
    
    
    public var resendTimer: Int?
    
    public var resendToken: String?
    
    public var success: Bool?
    
    public var requestId: String?
    
    public var message: String?
    
    public var mobile: String?
    
    public var countryCode: String?
    

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
    Model: VerifyEmailSuccess,
    Service: Catalog
*/

public struct VerifyEmailSuccess: Codable {
    
    
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
    Model: HasPasswordSuccess,
    Service: Catalog
*/

public struct HasPasswordSuccess: Codable {
    
    
    public var result: Bool?
    

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
    Model: LogoutSuccess,
    Service: Catalog
*/

public struct LogoutSuccess: Codable {
    
    
    public var logout: Bool?
    

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
    Model: OtpSuccess,
    Service: Catalog
*/

public struct OtpSuccess: Codable {
    
    
    public var resendTimer: Int?
    
    public var resendToken: String?
    
    public var success: Bool?
    
    public var requestId: String?
    
    public var message: String?
    
    public var mobile: String?
    
    public var countryCode: String?
    

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
    Model: EmailOtpSuccess,
    Service: Catalog
*/

public struct EmailOtpSuccess: Codable {
    
    
    public var resendToken: String?
    

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
    Model: SessionListSuccess,
    Service: Catalog
*/

public struct SessionListSuccess: Codable {
    
    
    public var sessions: [String]?
    

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
    Model: VerifyMobileOTPSuccess,
    Service: Catalog
*/

public struct VerifyMobileOTPSuccess: Codable {
    
    
    public var user: UserSchema?
    
    public var verifyMobileLink: Bool?
    

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
    Model: VerifyEmailOTPSuccess,
    Service: Catalog
*/

public struct VerifyEmailOTPSuccess: Codable {
    
    
    public var user: UserSchema?
    
    public var verifyEmailLink: Bool?
    

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
    Model: SendMobileVerifyLinkSuccess,
    Service: Catalog
*/

public struct SendMobileVerifyLinkSuccess: Codable {
    
    
    public var verifyMobileLink: Bool?
    

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
    Model: SendEmailVerifyLinkSuccess,
    Service: Catalog
*/

public struct SendEmailVerifyLinkSuccess: Codable {
    
    
    public var verifyEmailLink: Bool?
    

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
    Model: PlatformSchema,
    Service: Catalog
*/

public struct PlatformSchema: Codable {
    
    
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
    Model: UserSchema,
    Service: Catalog
*/

public struct UserSchema: Codable {
    
    
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
    Model: ApplicationLegal,
    Service: Catalog
*/

public struct ApplicationLegal: Codable {
    
    
    public var application: String?
    
    public var tnc: String?
    
    public var policy: String?
    
    public var faq: [[String: Any]]?
    
    public var id: String?
    
    public var updatedAt: String?
    
    public var createdAt: String?
    
    public var v: Double?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: Seo,
    Service: Catalog
*/

public struct Seo: Codable {
    
    
    public var app: String
    
    public var robotsTxt: String?
    
    public var sitemapEnabled: Bool?
    
    public var customMetaTags: [[String: Any]]?
    
    public var appDetails: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case app = "app"
        
        case robotsTxt = "robots_txt"
        
        case sitemapEnabled = "sitemap_enabled"
        
        case customMetaTags = "custom_meta_tags"
        
        case appDetails = "app_details"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        app = try container.decode(String.self, forKey: .app)
        
        robotsTxt = try? container.decode(String.self, forKey: .robotsTxt)
        
        sitemapEnabled = try? container.decode(Bool.self, forKey: .sitemapEnabled)
        
        customMetaTags = try? container.decode([[String: Any]].self, forKey: .customMetaTags)
        
        appDetails = try? container.decode([String: Any].self, forKey: .appDetails)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(app, forKey: .app)
        
        try? container.encodeIfPresent(robotsTxt, forKey: .robotsTxt)
        
        try? container.encodeIfPresent(sitemapEnabled, forKey: .sitemapEnabled)
        
        try? container.encodeIfPresent(customMetaTags, forKey: .customMetaTags)
        
        try? container.encodeIfPresent(appDetails, forKey: .appDetails)
        
    }
    
}

/*
    Model: StorefrontAnnouncement,
    Service: Catalog
*/

public struct StorefrontAnnouncement: Codable {
    
    
    public var announcements: [String: Any]?
    
    public var refreshRate: Int?
    
    public var refreshPages: [String]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: AdminAnnouncementSchema,
    Service: Catalog
*/

public struct AdminAnnouncementSchema: Codable {
    
    
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
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: ScheduleSchema,
    Service: Catalog
*/

public struct ScheduleSchema: Codable {
    
    
    public var schedule: [String: Any]?
    
    public var published: Bool?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: Navigation,
    Service: Catalog
*/

public struct Navigation: Codable {
    
    
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
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: NavigationRef,
    Service: Catalog
*/

public struct NavigationRef: Codable {
    
    
    public var acl: [[String: Any]]?
    
    public var localeLanguage: [String: Any]?
    
    public var image: String?
    
    public var type: String?
    
    public var action: [String: Any]?
    
    public var active: Bool?
    
    public var display: String?
    
    public var sortOrder: Int?
    
    public var subNavigation: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: LandingPage,
    Service: Catalog
*/

public struct LandingPage: Codable {
    
    
    public var slug: String?
    
    public var action: [String: Any]?
    
    public var platform: [[String: Any]]?
    
    public var createdBy: [String: Any]?
    
    public var dateMeta: [String: Any]?
    
    public var id: String?
    
    public var application: String?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: Slideshow,
    Service: Catalog
*/

public struct Slideshow: Codable {
    
    
    public var id: String?
    
    public var slug: String?
    
    public var dateMeta: [String: Any]?
    
    public var application: String?
    
    public var name: String?
    
    public var platform: String?
    
    public var configuration: [String: Any]?
    
    public var media: [[String: Any]]?
    
    public var active: Bool?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: AnnouncementsResponseSchema,
    Service: Catalog
*/

public struct AnnouncementsResponseSchema: Codable {
    
    
    public var announcements: [[String: Any]]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: FaqResponseSchema,
    Service: Catalog
*/

public struct FaqResponseSchema: Codable {
    
    
    public var faqs: [Faq]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: SeoResponseSchema,
    Service: Catalog
*/

public struct SeoResponseSchema: Codable {
    
}

/*
    Model: Faq,
    Service: Catalog
*/

public struct Faq: Codable {
    
    
    public var id: String?
    
    public var question: String?
    
    public var answer: String?
    
    public var slug: String?
    
    public var application: String?
    
    public var v: Int?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CustomPage,
    Service: Catalog
*/

public struct CustomPage: Codable {
    
    
    public var data: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CustomBlog,
    Service: Catalog
*/

public struct CustomBlog: Codable {
    
    
    public var data: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: Support,
    Service: Catalog
*/

public struct Support: Codable {
    
    
    public var created: Bool?
    
    public var id: String?
    
    public var configType: String?
    
    public var application: String?
    
    public var createdAt: String?
    
    public var updatedAt: String?
    
    public var contact: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: TagsSchema,
    Service: Catalog
*/

public struct TagsSchema: Codable {
    
    
    public var application: String?
    
    public var id: String?
    
    public var tags: [[String: Any]]?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CommunicationConsentReq,
    Service: Catalog
*/

public struct CommunicationConsentReq: Codable {
    
    
    public var response: String?
    
    public var action: String?
    
    public var channel: String?
    

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
    Model: CommunicationConsentRes,
    Service: Catalog
*/

public struct CommunicationConsentRes: Codable {
    
    
    public var appId: String?
    
    public var userId: String?
    
    public var channels: [String: Any]?
    

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
    Model: CommunicationConsent,
    Service: Catalog
*/

public struct CommunicationConsent: Codable {
    
    
    public var appId: String?
    
    public var userId: String?
    
    public var channels: [String: Any]?
    

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
    Model: PushtokenReq,
    Service: Catalog
*/

public struct PushtokenReq: Codable {
    
    
    public var action: String?
    
    public var bundleIdentifier: String?
    
    public var pushToken: String?
    
    public var uniqueDeviceId: String?
    
    public var type: String?
    

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
    Model: PushtokenRes,
    Service: Catalog
*/

public struct PushtokenRes: Codable {
    
    
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
    Model: QRCodeResp,
    Service: Catalog
*/

public struct QRCodeResp: Codable {
    
    
    public var link: String?
    
    public var svg: String?
    

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
    Model: RedirectDevice,
    Service: Catalog
*/

public struct RedirectDevice: Codable {
    
    
    public var link: String
    
    public var type: String
    

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
    Model: Redirects,
    Service: Catalog
*/

public struct Redirects: Codable {
    
    
    public var ios: RedirectDevice?
    
    public var android: RedirectDevice?
    
    public var web: [String: Any]?
    
    public var forceWeb: Bool?
    

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
    Model: ShortLinkReq,
    Service: Catalog
*/

public struct ShortLinkReq: Codable {
    
    
    public var title: String
    
    public var url: String
    
    public var hash: String?
    
    public var active: String?
    
    public var type: String?
    
    public var expireAt: String?
    
    public var enableTracking: Bool?
    
    public var redirects: Redirects?
    

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
    Model: ShortLinkRes,
    Service: Catalog
*/

public struct ShortLinkRes: Codable {
    
    
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
    Model: FailedResponse,
    Service: Catalog
*/

public struct FailedResponse: Codable {
    
    
    public var message: String
    

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
    Model: CDN,
    Service: Catalog
*/

public struct CDN: Codable {
    
    
    public var url: String
    

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
    Model: Upload,
    Service: Catalog
*/

public struct Upload: Codable {
    
    
    public var expiry: Int
    
    public var url: String
    

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
    Model: StartResponse,
    Service: Catalog
*/

public struct StartResponse: Codable {
    
    
    public var fileName: String
    
    public var filePath: String
    
    public var contentType: String
    
    public var method: String
    
    public var namespace: String
    
    public var operation: String
    
    public var size: Int
    
    public var upload: Upload
    
    public var cdn: CDN
    

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
    Model: StartRequest,
    Service: Catalog
*/

public struct StartRequest: Codable {
    
    
    public var fileName: String
    
    public var contentType: String
    
    public var size: Int
    
    public var tags: [String]?
    

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
    Model: CompleteResponse,
    Service: Catalog
*/

public struct CompleteResponse: Codable {
    
    
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
    Model: AggregatorConfigDetail,
    Service: Catalog
*/

public struct AggregatorConfigDetail: Codable {
    
    
    public var pin: String?
    
    public var key: String
    
    public var userId: String?
    
    public var merchantId: String?
    
    public var verifyApi: String?
    
    public var configType: String
    
    public var sdk: Bool?
    
    public var secret: String
    
    public var merchantKey: String?
    
    public var api: String?
    

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
    Model: AggregatorsConfigDetailResponse,
    Service: Catalog
*/

public struct AggregatorsConfigDetailResponse: Codable {
    
    
    public var razorpay: AggregatorConfigDetail?
    
    public var payumoney: AggregatorConfigDetail?
    
    public var success: Bool
    
    public var ccavenue: AggregatorConfigDetail?
    
    public var juspay: AggregatorConfigDetail?
    
    public var simpl: AggregatorConfigDetail?
    
    public var stripe: AggregatorConfigDetail?
    
    public var rupifi: AggregatorConfigDetail?
    
    public var mswipe: AggregatorConfigDetail?
    
    public var env: String
    

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
    Model: ErrorCodeAndDescription,
    Service: Catalog
*/

public struct ErrorCodeAndDescription: Codable {
    
    
    public var code: String
    
    public var description: String
    

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
    Model: HttpErrorCodeAndResponse,
    Service: Catalog
*/

public struct HttpErrorCodeAndResponse: Codable {
    
    
    public var success: Bool
    
    public var error: ErrorCodeAndDescription
    

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
    Model: AttachCardRequest,
    Service: Catalog
*/

public struct AttachCardRequest: Codable {
    
    
    public var refresh: Bool?
    
    public var cardId: String
    

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
    Model: AttachCardsResponse,
    Service: Catalog
*/

public struct AttachCardsResponse: Codable {
    
    
    public var message: String?
    
    public var success: Bool
    
    public var data: [String: Any]
    

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
    Model: CardPaymentGateway,
    Service: Catalog
*/

public struct CardPaymentGateway: Codable {
    
    
    public var api: String?
    
    public var aggregator: String
    
    public var customerId: String?
    

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
    Model: ActiveCardPaymentGatewayResponse,
    Service: Catalog
*/

public struct ActiveCardPaymentGatewayResponse: Codable {
    
    
    public var cards: CardPaymentGateway
    
    public var message: String
    
    public var success: Bool
    

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
    Model: ListCardsResponse,
    Service: Catalog
*/

public struct ListCardsResponse: Codable {
    
    
    public var message: String
    
    public var success: Bool
    
    public var data: [[String: Any]]?
    

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
    Model: DeletehCardRequest,
    Service: Catalog
*/

public struct DeletehCardRequest: Codable {
    
    
    public var cardId: String
    

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
    Model: DeleteCardsResponse,
    Service: Catalog
*/

public struct DeleteCardsResponse: Codable {
    
    
    public var message: String?
    
    public var success: Bool
    

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
    Model: ValidateCustomerRequest,
    Service: Catalog
*/

public struct ValidateCustomerRequest: Codable {
    
    
    public var merchantParams: [String: Any]
    
    public var phoneNumber: String
    
    public var transactionAmountInPaise: Int
    
    public var payload: String
    
    public var aggregator: String
    

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
    Model: ValidateCustomerResponse,
    Service: Catalog
*/

public struct ValidateCustomerResponse: Codable {
    
    
    public var message: String
    
    public var success: Bool
    
    public var data: [String: Any]
    

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
    Model: ChargeCustomerRequest,
    Service: Catalog
*/

public struct ChargeCustomerRequest: Codable {
    
    
    public var verified: Bool?
    
    public var transactionToken: String?
    
    public var orderId: String
    
    public var amount: Int
    
    public var aggregator: String
    

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
    Model: ChargeCustomerResponse,
    Service: Catalog
*/

public struct ChargeCustomerResponse: Codable {
    
    
    public var deliveryAddressId: String?
    
    public var status: String
    
    public var success: Bool
    
    public var message: String
    
    public var orderId: String
    
    public var cartId: String?
    
    public var aggregator: String
    

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
    Model: PaymentInitializationRequest,
    Service: Catalog
*/

public struct PaymentInitializationRequest: Codable {
    
    
    public var razorpayPaymentId: String
    
    public var method: String
    
    public var aggregatorOrderId: String
    
    public var pollingUrl: String
    
    public var merchantOrderId: String
    
    public var timeout: Int
    
    public var customerId: String
    
    public var virtualId: String?
    
    public var aggregator: String
    

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
    Model: PaymentInitializationResponse,
    Service: Catalog
*/

public struct PaymentInitializationResponse: Codable {
    
    
    public var contact: String
    
    public var currency: String
    
    public var status: String
    
    public var success: Bool
    
    public var method: String
    
    public var vpa: String
    
    public var message: String?
    
    public var orderId: String
    
    public var email: String
    
    public var amount: Int
    
    public var merchantOrderId: String
    
    public var customerId: String
    
    public var aggregator: String
    

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
    Model: PaymentStatusUpdateRequest,
    Service: Catalog
*/

public struct PaymentStatusUpdateRequest: Codable {
    
    
    public var contact: String
    
    public var currency: String
    
    public var status: String
    
    public var method: String
    
    public var vpa: String
    
    public var orderId: String
    
    public var email: String
    
    public var amount: Int
    
    public var merchantOrderId: String
    
    public var customerId: String
    
    public var aggregator: String
    

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
    Model: PaymentStatusUpdateResponse,
    Service: Catalog
*/

public struct PaymentStatusUpdateResponse: Codable {
    
    
    public var aggregatorName: String
    
    public var status: String
    
    public var retry: Bool
    

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
    Model: PaymentOptionsDetails,
    Service: Catalog
*/

public struct PaymentOptionsDetails: Codable {
    
    
    public var paymentOption: [[String: Any]]?
    

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
    Model: PaymentOptionsResponse,
    Service: Catalog
*/

public struct PaymentOptionsResponse: Codable {
    
    
    public var success: Bool
    
    public var paymentOptions: PaymentOptionsDetails
    

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
    Model: OrderBeneficiaryDetails,
    Service: Catalog
*/

public struct OrderBeneficiaryDetails: Codable {
    
    
    public var comment: Bool?
    
    public var transferMode: String
    
    public var bankName: String
    
    public var email: String
    
    public var mobile: Bool?
    
    public var branchName: Bool?
    
    public var modifiedOn: String
    
    public var beneficiaryId: String
    
    public var address: String
    
    public var subtitle: String
    
    public var isActive: Bool
    
    public var title: String
    
    public var ifscCode: String
    
    public var id: Int
    
    public var createdOn: String
    
    public var accountNo: String
    
    public var accountHolder: String
    
    public var displayName: String
    
    public var delightsUserName: String
    

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
    Model: OrderBeneficiaryResponse,
    Service: Catalog
*/

public struct OrderBeneficiaryResponse: Codable {
    
    
    public var beneficiaries: [OrderBeneficiaryDetails]
    

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
    Model: NotFoundResourceError,
    Service: Catalog
*/

public struct NotFoundResourceError: Codable {
    
    
    public var code: String
    
    public var description: String
    
    public var success: Bool
    

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
    Model: IfscCodeResponse,
    Service: Catalog
*/

public struct IfscCodeResponse: Codable {
    
    
    public var branchName: String
    
    public var success: Bool?
    
    public var bankName: String
    

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
    Model: ErrorCodeDescription,
    Service: Catalog
*/

public struct ErrorCodeDescription: Codable {
    
    
    public var code: String
    
    public var description: String
    
    public var success: Bool
    

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
    Model: AddBeneficiaryViaOtpVerificationRequest,
    Service: Catalog
*/

public struct AddBeneficiaryViaOtpVerificationRequest: Codable {
    
    
    public var otp: String
    
    public var hashKey: String
    
    public var requestId: String
    

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
    Model: AddBeneficiaryViaOtpVerificationResponse,
    Service: Catalog
*/

public struct AddBeneficiaryViaOtpVerificationResponse: Codable {
    
    
    public var otp: String
    
    public var hashKey: String
    
    public var requestId: String
    

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
    Model: WrongOtpError,
    Service: Catalog
*/

public struct WrongOtpError: Codable {
    
    
    public var description: String
    
    public var success: String
    

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
    Model: BankDetails,
    Service: Catalog
*/

public struct BankDetails: Codable {
    
    
    public var comment: String?
    
    public var address: String
    
    public var email: String
    
    public var ifscCode: String
    
    public var mobile: String
    
    public var branchName: String
    
    public var bankName: String
    
    public var accountNo: String
    
    public var accountHolder: String
    

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
    Model: AddBeneficiaryDetailsRequest,
    Service: Catalog
*/

public struct AddBeneficiaryDetailsRequest: Codable {
    
    
    public var transferMode: String
    
    public var orderId: String
    
    public var shipmentId: String
    
    public var details: BankDetails
    
    public var delights: Bool
    

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
    Model: RefundAccountResponse,
    Service: Catalog
*/

public struct RefundAccountResponse: Codable {
    
    
    public var message: String
    
    public var success: Bool
    
    public var data: [String: Any]?
    

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
    Model: WalletOtpRequest,
    Service: Catalog
*/

public struct WalletOtpRequest: Codable {
    
    
    public var mobile: Bool
    
    public var countryCode: String
    

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
    Model: WalletOtpResponse,
    Service: Catalog
*/

public struct WalletOtpResponse: Codable {
    
    
    public var success: Bool?
    
    public var isVerifiedFlag: String
    
    public var requestId: String
    

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
    Model: SetDefaultBeneficiaryRequest,
    Service: Catalog
*/

public struct SetDefaultBeneficiaryRequest: Codable {
    
    
    public var beneficiaryId: String
    
    public var orderId: String
    

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
    Model: SetDefaultBeneficiaryResponse,
    Service: Catalog
*/

public struct SetDefaultBeneficiaryResponse: Codable {
    
    
    public var isBeneficiarySet: Bool
    
    public var success: Bool?
    

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
    Model: ApefaceApiError,
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Service: Catalog
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
    Model: Access,
    Service: Catalog
*/

public struct Access: Codable {
    
    
    public var answer: Bool?
    
    public var askQuestion: Bool?
    
    public var comment: Bool?
    
    public var rnr: Bool?
    

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
    Model: AddMediaListRequest,
    Service: Catalog
*/

public struct AddMediaListRequest: Codable {
    
    
    public var entityId: String?
    
    public var entityType: String?
    
    public var mediaList: [AddMediaRequest]?
    
    public var refId: String?
    
    public var refType: String?
    

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
    Model: AddMediaRequest,
    Service: Catalog
*/

public struct AddMediaRequest: Codable {
    
    
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
    Model: Attribute,
    Service: Catalog
*/

public struct Attribute: Codable {
    
    
    public var createdOn: String?
    
    public var description: String?
    
    public var id: String?
    
    public var modifiedOn: String?
    
    public var name: String?
    
    public var slug: String?
    
    public var tags: [TagMeta]?
    

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
    Model: AttributeObject,
    Service: Catalog
*/

public struct AttributeObject: Codable {
    
    
    public var description: String?
    
    public var name: String
    
    public var slug: String?
    
    public var title: String?
    
    public var type: String
    
    public var value: Double
    

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
    Model: CheckEligibilityResponse,
    Service: Catalog
*/

public struct CheckEligibilityResponse: Codable {
    
    
    public var access: Access?
    
    public var mediaCloud: MediaCloud?
    

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
    Model: Cloud,
    Service: Catalog
*/

public struct Cloud: Codable {
    
    
    public var id: String?
    
    public var name: String?
    
    public var provider: String?
    

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
    Model: CommentRequest,
    Service: Catalog
*/

public struct CommentRequest: Codable {
    
    
    public var comment: [String]
    
    public var entityId: String
    
    public var entityType: String
    

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
    Model: CreateQNARequest,
    Service: Catalog
*/

public struct CreateQNARequest: Codable {
    
    
    public var choices: [String]?
    
    public var entityId: String
    
    public var entityType: String
    
    public var maxLen: Int?
    
    public var sortPriority: Int?
    
    public var tags: [String]?
    
    public var text: String
    
    public var type: String?
    

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
    Model: DeviceMeta,
    Service: Catalog
*/

public struct DeviceMeta: Codable {
    
    
    public var appVersion: String?
    
    public var platform: String?
    

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
    Model: MediaCloud,
    Service: Catalog
*/

public struct MediaCloud: Codable {
    
    
    public var key: String?
    
    public var name: String?
    
    public var namespace: String?
    
    public var path: String?
    
    public var provider: String?
    
    public var secret: String?
    

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
    Model: MediaMeta,
    Service: Catalog
*/

public struct MediaMeta: Codable {
    
    
    public var cloud: Cloud?
    
    public var comment: [String]?
    
    public var description: String?
    
    public var id: String?
    
    public var type: String?
    
    public var url: Url?
    

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
    Model: PageCursor,
    Service: Catalog
*/

public struct PageCursor: Codable {
    
    
    public var hasNext: Bool?
    
    public var hasPrevious: Bool?
    
    public var itemTotal: Int?
    
    public var nextId: String?
    
    public var type: String?
    

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
    Model: PageNumber,
    Service: Catalog
*/

public struct PageNumber: Codable {
    
    
    public var current: Int?
    
    public var hasNext: Bool?
    
    public var itemTotal: Int?
    
    public var size: Int?
    
    public var type: String?
    

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
    Model: ReportAbuseRequest,
    Service: Catalog
*/

public struct ReportAbuseRequest: Codable {
    
    
    public var description: String?
    
    public var entityId: String
    
    public var entityType: String
    

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
    Model: SaveAttributeRequest,
    Service: Catalog
*/

public struct SaveAttributeRequest: Codable {
    
    
    public var description: String?
    
    public var name: String
    
    public var slug: String
    

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
    Model: TagMeta,
    Service: Catalog
*/

public struct TagMeta: Codable {
    
    
    public var media: [MediaMeta]?
    
    public var name: String?
    
    public var type: String?
    

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
    Model: UpdateAbuseStatusRequest,
    Service: Catalog
*/

public struct UpdateAbuseStatusRequest: Codable {
    
    
    public var abusive: Bool?
    
    public var active: Bool?
    
    public var approve: Bool?
    
    public var description: String?
    
    public var entityId: String?
    
    public var entityType: String?
    
    public var id: String?
    

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
    Model: UpdateAttributeRequest,
    Service: Catalog
*/

public struct UpdateAttributeRequest: Codable {
    
    
    public var description: String?
    
    public var name: String
    
    public var slug: String?
    

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
    Model: UpdateCommentRequest,
    Service: Catalog
*/

public struct UpdateCommentRequest: Codable {
    
    
    public var active: Bool?
    
    public var approve: Bool?
    
    public var comment: [String]
    
    public var id: String
    

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
    Model: UpdateMediaListRequest,
    Service: Catalog
*/

public struct UpdateMediaListRequest: Codable {
    
    
    public var approve: Bool?
    
    public var archive: Bool?
    
    public var entityType: String?
    
    public var ids: [String]?
    

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
    Model: UpdateQNARequest,
    Service: Catalog
*/

public struct UpdateQNARequest: Codable {
    
    
    public var active: Bool?
    
    public var approve: Bool?
    
    public var choices: [String]?
    
    public var id: String?
    
    public var tags: [String]?
    

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
    Model: UpdateReviewRequest,
    Service: Catalog
*/

public struct UpdateReviewRequest: Codable {
    
    
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
    Model: UpdateVoteRequest,
    Service: Catalog
*/

public struct UpdateVoteRequest: Codable {
    
    
    public var action: String?
    
    public var active: Bool?
    
    public var id: String?
    
    public var refId: String?
    
    public var refType: String?
    

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
    Model: Url,
    Service: Catalog
*/

public struct Url: Codable {
    
    
    public var main: String?
    
    public var thumbnail: String?
    

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
    Model: VoteRequest,
    Service: Catalog
*/

public struct VoteRequest: Codable {
    
    
    public var action: String?
    
    public var entityId: String?
    
    public var entityType: String?
    
    public var refId: String?
    
    public var refType: String?
    

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
    Model: XCursorGetResponse,
    Service: Catalog
*/

public struct XCursorGetResponse: Codable {
    
    
    public var items: [String: Any]?
    
    public var page: PageCursor?
    

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
    Model: XInsertResponse,
    Service: Catalog
*/

public struct XInsertResponse: Codable {
    
    
    public var ids: String?
    

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
    Model: XNumberGetResponse,
    Service: Catalog
*/

public struct XNumberGetResponse: Codable {
    
    
    public var items: [String: Any]?
    
    public var page: PageNumber?
    

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
    Model: XUpdateResponse,
    Service: Catalog
*/

public struct XUpdateResponse: Codable {
    
    
    public var id: String?
    

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





















