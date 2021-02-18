

/*
    Model: ProductListingActionPage,
    Service: Catalog
*/

public struct ProductListingActionPage: Codable {
    
    public var type: String?
    
    public var query: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case query = "query"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
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
    
    public var uid: Int?
    
    public var action: ProductListingAction?
    
    public var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case uid = "uid"
        
        case action = "action"
        
        case logo = "logo"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
    }
}

/*
    Model: ProductDetailAttribute,
    Service: Catalog
*/

public struct ProductDetailAttribute: Codable {
    
    public var key: String?
    
    public var type: String?
    
    public var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case type = "type"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
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
    
    public var teaserTag: [String: Any]?
    
    public var attributes: [String: Any]?
    
    public var itemType: String?
    
    public var similars: [String]?
    
    public var rating: Double?
    
    public var categories: [ProductBrand]?
    
    public var uid: Int?
    
    public var name: String?
    
    public var brand: ProductBrand?
    
    public var color: String?
    
    public var productOnlineDate: String?
    
    public var type: String?
    
    public var ratingCount: Int?
    
    public var groupedAttributes: [ProductDetailGroupedAttribute]?
    
    public var medias: [Media]?
    
    public var hasVariant: Bool?
    
    public var slug: String?
    
    public var promoMeta: [String: Any]?
    
    public var imageNature: String?
    
    public var tryouts: [String]?
    
    public var highlights: [String]?
    

    enum CodingKeys: String, CodingKey {
        
        case teaserTag = "teaser_tag"
        
        case attributes = "attributes"
        
        case itemType = "item_type"
        
        case similars = "similars"
        
        case rating = "rating"
        
        case categories = "categories"
        
        case uid = "uid"
        
        case name = "name"
        
        case brand = "brand"
        
        case color = "color"
        
        case productOnlineDate = "product_online_date"
        
        case type = "type"
        
        case ratingCount = "rating_count"
        
        case groupedAttributes = "grouped_attributes"
        
        case medias = "medias"
        
        case hasVariant = "has_variant"
        
        case slug = "slug"
        
        case promoMeta = "promo_meta"
        
        case imageNature = "image_nature"
        
        case tryouts = "tryouts"
        
        case highlights = "highlights"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
        
        attributes = try? container.decode([String: Any].self, forKey: .attributes)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        similars = try? container.decode([String].self, forKey: .similars)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        categories = try? container.decode([ProductBrand].self, forKey: .categories)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        brand = try? container.decode(ProductBrand.self, forKey: .brand)
        
        color = try? container.decode(String.self, forKey: .color)
        
        productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
        
        type = try? container.decode(String.self, forKey: .type)
        
        ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
        
        groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        imageNature = try? container.decode(String.self, forKey: .imageNature)
        
        tryouts = try? container.decode([String].self, forKey: .tryouts)
        
        highlights = try? container.decode([String].self, forKey: .highlights)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        
        try? container.encodeIfPresent(attributes, forKey: .attributes)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(similars, forKey: .similars)
        
        try? container.encodeIfPresent(rating, forKey: .rating)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        
        try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(imageNature, forKey: .imageNature)
        
        try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        
        try? container.encodeIfPresent(highlights, forKey: .highlights)
        
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
    Model: ProductSize,
    Service: Catalog
*/

public struct ProductSize: Codable {
    
    public var display: String?
    
    public var value: String?
    
    public var quantity: Int?
    
    public var isAvailable: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case value = "value"
        
        case quantity = "quantity"
        
        case isAvailable = "is_available"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try? container.decode(String.self, forKey: .display)
        
        value = try? container.decode(String.self, forKey: .value)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
    }
}

/*
    Model: Price,
    Service: Catalog
*/

public struct Price: Codable {
    
    public var min: Double?
    
    public var max: Double?
    
    public var currencySymbol: String?
    
    public var currencyCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case min = "min"
        
        case max = "max"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        min = try? container.decode(Double.self, forKey: .min)
        
        max = try? container.decode(Double.self, forKey: .max)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(min, forKey: .min)
        
        try? container.encodeIfPresent(max, forKey: .max)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
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
    Model: ProductSizes,
    Service: Catalog
*/

public struct ProductSizes: Codable {
    
    public var promoMeta: [String: Any]?
    
    public var sizeChart: [String: Any]?
    
    public var stores: ProductSizeStores?
    
    public var sizes: [ProductSize]?
    
    public var discount: String?
    
    public var sellable: Bool?
    
    public var price: ProductListingPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case promoMeta = "promo_meta"
        
        case sizeChart = "size_chart"
        
        case stores = "stores"
        
        case sizes = "sizes"
        
        case discount = "discount"
        
        case sellable = "sellable"
        
        case price = "price"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
        
        stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
        
        sizes = try? container.decode([ProductSize].self, forKey: .sizes)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        sellable = try? container.decode(Bool.self, forKey: .sellable)
        
        price = try? container.decode(ProductListingPrice.self, forKey: .price)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
        
        try? container.encodeIfPresent(stores, forKey: .stores)
        
        try? container.encodeIfPresent(sizes, forKey: .sizes)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(sellable, forKey: .sellable)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
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
    
    public var name: String?
    
    public var uid: Int?
    
    public var count: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case uid = "uid"
        
        case count = "count"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        count = try? container.decode(Int.self, forKey: .count)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
    }
}

/*
    Model: ProductStockPrice,
    Service: Catalog
*/

public struct ProductStockPrice: Codable {
    
    public var currency: String?
    
    public var marked: Double?
    
    public var effective: Double?
    

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
    Model: Store,
    Service: Catalog
*/

public struct Store: Codable {
    
    public var name: String?
    
    public var uid: Int?
    
    public var count: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case uid = "uid"
        
        case count = "count"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        count = try? container.decode(Int.self, forKey: .count)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
    }
}

/*
    Model: ProductSizePriceResponse,
    Service: Catalog
*/

public struct ProductSizePriceResponse: Codable {
    
    public var promoMeta: [String: Any]?
    
    public var articleAssignment: ArticleAssignment?
    
    public var longLat: [Double]?
    
    public var seller: Seller?
    
    public var pricePerPrice: ProductStockPrice?
    
    public var pincode: Int?
    
    public var articleId: String?
    
    public var specialBadge: String?
    
    public var discount: String?
    
    public var quantity: Int?
    
    public var set: [String: Any]?
    
    public var strategyWiseListing: [[String: Any]]?
    
    public var price: ProductStockPrice?
    
    public var itemType: String?
    
    public var sellerCount: Int?
    
    public var store: Store?
    

    enum CodingKeys: String, CodingKey {
        
        case promoMeta = "promo_meta"
        
        case articleAssignment = "article_assignment"
        
        case longLat = "long_lat"
        
        case seller = "seller"
        
        case pricePerPrice = "price_per_price"
        
        case pincode = "pincode"
        
        case articleId = "article_id"
        
        case specialBadge = "special_badge"
        
        case discount = "discount"
        
        case quantity = "quantity"
        
        case set = "set"
        
        case strategyWiseListing = "strategy_wise_listing"
        
        case price = "price"
        
        case itemType = "item_type"
        
        case sellerCount = "seller_count"
        
        case store = "store"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
        
        longLat = try? container.decode([Double].self, forKey: .longLat)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        specialBadge = try? container.decode(String.self, forKey: .specialBadge)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        set = try? container.decode([String: Any].self, forKey: .set)
        
        strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
        
        store = try? container.decode(Store.self, forKey: .store)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
        try? container.encodeIfPresent(longLat, forKey: .longLat)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(set, forKey: .set)
        
        try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
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
    
    public var default: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case isSelected = "is_selected"
        
        case value = "value"
        
        case default = "default"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        value = try? container.decode(String.self, forKey: .value)
        
        default = try? container.decode(Bool.self, forKey: .default)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(default, forKey: .default)
        
    }
}

/*
    Model: ProductPage,
    Service: Catalog
*/

public struct ProductPage: Codable {
    
    public var current: Int?
    
    public var hasNext: Bool?
    
    public var totalItem: Int?
    
    public var nextId: String?
    
    public var hasPrevious: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case current = "current"
        
        case hasNext = "has_next"
        
        case totalItem = "total_item"
        
        case nextId = "next_id"
        
        case hasPrevious = "has_previous"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        totalItem = try? container.decode(Int.self, forKey: .totalItem)
        
        nextId = try? container.decode(String.self, forKey: .nextId)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(current, forKey: .current)
        
        try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        
        try? container.encodeIfPresent(totalItem, forKey: .totalItem)
        
        try? container.encodeIfPresent(nextId, forKey: .nextId)
        
        try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        
    }
}

/*
    Model: ProductSizeSellersResponse,
    Service: Catalog
*/

public struct ProductSizeSellersResponse: Codable {
    
    public var sortOn: [ProductSizeSellerFilter]?
    
    public var page: ProductPage?
    
    public var items: [ProductSizePriceResponse]?
    

    enum CodingKeys: String, CodingKey {
        
        case sortOn = "sort_on"
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        sortOn = try? container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        items = try? container.decode([ProductSizePriceResponse].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: AttributeDetail,
    Service: Catalog
*/

public struct AttributeDetail: Codable {
    
    public var key: String?
    
    public var display: String?
    
    public var description: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
        case description = "description"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        description = try? container.decode(String.self, forKey: .description)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
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
    
    public var attributesMetadata: [AttributeDetail]?
    
    public var title: String?
    
    public var subtitle: String?
    
    public var items: [ProductDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case attributesMetadata = "attributes_metadata"
        
        case title = "title"
        
        case subtitle = "subtitle"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
        
        title = try? container.decode(String.self, forKey: .title)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
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
    
    public var title: String?
    
    public var subtitle: String?
    
    public var items: [ProductDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case title = "title"
        
        case subtitle = "subtitle"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
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
    
    public var isAvailable: Bool?
    
    public var uid: Int?
    
    public var action: ProductListingAction?
    
    public var colorName: String?
    
    public var name: String?
    
    public var value: String?
    
    public var medias: [Media]?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case color = "color"
        
        case isAvailable = "is_available"
        
        case uid = "uid"
        
        case action = "action"
        
        case colorName = "color_name"
        
        case name = "name"
        
        case value = "value"
        
        case medias = "medias"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        color = try? container.decode(String.self, forKey: .color)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        colorName = try? container.decode(String.self, forKey: .colorName)
        
        name = try? container.decode(String.self, forKey: .name)
        
        value = try? container.decode(String.self, forKey: .value)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(colorName, forKey: .colorName)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: ProductVariantResponse,
    Service: Catalog
*/

public struct ProductVariantResponse: Codable {
    
    public var displayType: String?
    
    public var header: String?
    
    public var items: [ProductVariantItemResponse]?
    

    enum CodingKeys: String, CodingKey {
        
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
    
    public var itemId: Int?
    
    public var seller: Seller?
    
    public var uid: String?
    
    public var size: String?
    
    public var quantity: Int?
    
    public var price: ProductStockPrice?
    
    public var company: CompanyDetail?
    
    public var store: StoreDetail?
    
    public var identifier: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case itemId = "item_id"
        
        case seller = "seller"
        
        case uid = "uid"
        
        case size = "size"
        
        case quantity = "quantity"
        
        case price = "price"
        
        case company = "company"
        
        case store = "store"
        
        case identifier = "identifier"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        size = try? container.decode(String.self, forKey: .size)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        company = try? container.decode(CompanyDetail.self, forKey: .company)
        
        store = try? container.decode(StoreDetail.self, forKey: .store)
        
        identifier = try? container.decode([String: Any].self, forKey: .identifier)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(size, forKey: .size)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(company, forKey: .company)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
        try? container.encodeIfPresent(identifier, forKey: .identifier)
        
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
    Model: ProductFiltersValue,
    Service: Catalog
*/

public struct ProductFiltersValue: Codable {
    
    public var isSelected: Bool
    
    public var display: String
    
    public var count: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isSelected = "is_selected"
        
        case display = "display"
        
        case count = "count"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isSelected = try container.decode(Bool.self, forKey: .isSelected)
        
        display = try container.decode(String.self, forKey: .display)
        
        count = try? container.decode(Int.self, forKey: .count)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
    }
}

/*
    Model: ProductFilters,
    Service: Catalog
*/

public struct ProductFilters: Codable {
    
    public var key: ProductFiltersKey
    
    public var values: [ProductFiltersValue]
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: ProductListingResponse,
    Service: Catalog
*/

public struct ProductListingResponse: Codable {
    
    public var filter: [ProductFilters]?
    
    public var sortOn: [ProductSortOn]?
    
    public var page: ProductPage?
    
    public var items: [ProductDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case filter = "filter"
        
        case sortOn = "sort_on"
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        filter = try? container.decode([ProductFilters].self, forKey: .filter)
        
        sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(filter, forKey: .filter)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
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
    
    public var logo: Media?
    
    public var uid: Int?
    
    public var action: ProductListingAction?
    
    public var discount: String?
    
    public var name: String?
    
    public var banners: ImageUrls?
    
    public var departments: [String]?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case logo = "logo"
        
        case uid = "uid"
        
        case action = "action"
        
        case discount = "discount"
        
        case name = "name"
        
        case banners = "banners"
        
        case departments = "departments"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        departments = try? container.decode([String].self, forKey: .departments)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(departments, forKey: .departments)
        
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
    
    public var banners: ImageUrls?
    
    public var uid: Int?
    
    public var name: String?
    
    public var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case banners = "banners"
        
        case uid = "uid"
        
        case name = "name"
        
        case logo = "logo"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
    }
}

/*
    Model: CategoryItems,
    Service: Catalog
*/

public struct CategoryItems: Codable {
    
    public var uid: Int?
    
    public var action: ProductListingAction?
    
    public var name: String?
    
    public var banners: ImageUrls?
    
    public var childs: [[String: Any]]?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case action = "action"
        
        case name = "name"
        
        case banners = "banners"
        
        case childs = "childs"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        childs = try? container.decode([[String: Any]].self, forKey: .childs)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(childs, forKey: .childs)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
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
    Model: CategoryListingResponse,
    Service: Catalog
*/

public struct CategoryListingResponse: Codable {
    
    public var data: [DepartmentCategoryTree]?
    
    public var departments: [DepartmentIdentifier]?
    

    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
        case departments = "departments"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try? container.decode([DepartmentCategoryTree].self, forKey: .data)
        
        departments = try? container.decode([DepartmentIdentifier].self, forKey: .departments)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(data, forKey: .data)
        
        try? container.encodeIfPresent(departments, forKey: .departments)
        
    }
}

/*
    Model: CategoryMetaResponse,
    Service: Catalog
*/

public struct CategoryMetaResponse: Codable {
    
    public var banners: ImageUrls?
    
    public var uid: Int?
    
    public var name: String?
    
    public var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case banners = "banners"
        
        case uid = "uid"
        
        case name = "name"
        
        case logo = "logo"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
    }
}

/*
    Model: Page,
    Service: Catalog
*/

public struct Page: Codable {
    
    public var pageSize: Int
    
    public var page: Int
    

    enum CodingKeys: String, CodingKey {
        
        case pageSize = "page_size"
        
        case page = "page"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pageSize = try container.decode(Int.self, forKey: .pageSize)
        
        page = try container.decode(Int.self, forKey: .page)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
    }
}

/*
    Model: HomeListingResponse,
    Service: Catalog
*/

public struct HomeListingResponse: Codable {
    
    public var page: Page?
    
    public var items: [ProductDetail]?
    
    public var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case items = "items"
        
        case message = "message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode(Page.self, forKey: .page)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
    }
}

/*
    Model: Department,
    Service: Catalog
*/

public struct Department: Codable {
    
    public var priorityOrder: Int?
    
    public var logo: Media?
    
    public var uid: Int?
    
    public var name: String?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case priorityOrder = "priority_order"
        
        case logo = "logo"
        
        case uid = "uid"
        
        case name = "name"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
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
    
    public var type: String?
    
    public var display: String?
    
    public var action: [String: Any]?
    
    public var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case display = "display"
        
        case action = "action"
        
        case logo = "logo"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        display = try? container.decode(String.self, forKey: .display)
        
        action = try? container.decode([String: Any].self, forKey: .action)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
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
    
    public var isActive: Bool?
    
    public var allowSort: Bool?
    
    public var logo: Media?
    
    public var uid: String?
    
    public var cron: [String: Any]?
    
    public var name: String?
    
    public var allowFacets: Bool?
    
    public var type: String?
    
    public var action: ProductListingAction?
    
    public var badge: [String: Any]?
    
    public var description: String?
    
    public var slug: String?
    
    public var visibleFacetsKeys: [String]?
    
    public var tag: [String]?
    
    public var query: [String: Any]?
    
    public var banners: ImageUrls?
    
    public var appId: String?
    
    public var schedule: [String: Any]?
    
    public var meta: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case isActive = "is_active"
        
        case allowSort = "allow_sort"
        
        case logo = "logo"
        
        case uid = "uid"
        
        case cron = "cron"
        
        case name = "name"
        
        case allowFacets = "allow_facets"
        
        case type = "type"
        
        case action = "action"
        
        case badge = "badge"
        
        case description = "description"
        
        case slug = "slug"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case tag = "tag"
        
        case query = "query"
        
        case banners = "banners"
        
        case appId = "app_id"
        
        case schedule = "_schedule"
        
        case meta = "meta"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        name = try? container.decode(String.self, forKey: .name)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        type = try? container.decode(String.self, forKey: .type)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        description = try? container.decode(String.self, forKey: .description)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
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
    Model: GetCollectionListingItemsResponse,
    Service: Catalog
*/

public struct GetCollectionListingItemsResponse: Codable {
    
    public var filters: [ProductFilters]?
    
    public var sortOn: [ProductSortOn]?
    
    public var page: ProductPage?
    
    public var items: [ProductDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case filters = "filters"
        
        case sortOn = "sort_on"
        
        case page = "page"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        filters = try? container.decode([ProductFilters].self, forKey: .filters)
        
        sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(filters, forKey: .filters)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
    }
}

/*
    Model: CollectionDetailResponse,
    Service: Catalog
*/

public struct CollectionDetailResponse: Codable {
    
    public var visibleFacetsKeys: [String]?
    
    public var isActive: Bool?
    
    public var logo: Media?
    
    public var type: String?
    
    public var tag: [String]?
    
    public var cron: [String: Any]?
    
    public var query: [String: Any]?
    
    public var allowFacets: Bool?
    
    public var banners: ImageUrls?
    
    public var appId: String?
    
    public var name: String?
    
    public var schedule: [String: Any]?
    
    public var badge: [String: Any]?
    
    public var meta: [String: Any]?
    
    public var description: String?
    
    public var slug: String?
    
    public var allowSort: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case isActive = "is_active"
        
        case logo = "logo"
        
        case type = "type"
        
        case tag = "tag"
        
        case cron = "cron"
        
        case query = "query"
        
        case allowFacets = "allow_facets"
        
        case banners = "banners"
        
        case appId = "app_id"
        
        case name = "name"
        
        case schedule = "_schedule"
        
        case badge = "badge"
        
        case meta = "meta"
        
        case description = "description"
        
        case slug = "slug"
        
        case allowSort = "allow_sort"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        type = try? container.decode(String.self, forKey: .type)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        name = try? container.decode(String.self, forKey: .name)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        description = try? container.decode(String.self, forKey: .description)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
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
    Model: GetCartResponse,
    Service: Cart
*/

public struct GetCartResponse: Codable {
    
    public var cartId: Int?
    
    public var breakupValues: [String: Any]?
    
    public var creditDetails: String?
    
    public var items: [[String: Any]]?
    
    public var couponText: String?
    
    public var lastModified: String?
    
    public var restrictCheckout: Bool?
    
    public var breakupValuesAnalytics: String?
    
    public var gstin: String?
    
    public var deliveryChargeInfo: String?
    
    public var checkoutMode: String?
    
    public var isValid: Bool?
    
    public var codAvailable: Bool?
    
    public var message: String?
    
    public var couponDetails: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cartId = "cart_id"
        
        case breakupValues = "breakup_values"
        
        case creditDetails = "credit_details"
        
        case items = "items"
        
        case couponText = "coupon_text"
        
        case lastModified = "last_modified"
        
        case restrictCheckout = "restrict_checkout"
        
        case breakupValuesAnalytics = "breakup_values_analytics"
        
        case gstin = "gstin"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case checkoutMode = "checkout_mode"
        
        case isValid = "is_valid"
        
        case codAvailable = "cod_available"
        
        case message = "message"
        
        case couponDetails = "coupon_details"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        breakupValues = try? container.decode([String: Any].self, forKey: .breakupValues)
        
        creditDetails = try? container.decode(String.self, forKey: .creditDetails)
        
        items = try? container.decode([[String: Any]].self, forKey: .items)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        breakupValuesAnalytics = try? container.decode(String.self, forKey: .breakupValuesAnalytics)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        message = try? container.decode(String.self, forKey: .message)
        
        couponDetails = try? container.decode(String.self, forKey: .couponDetails)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(creditDetails, forKey: .creditDetails)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(breakupValuesAnalytics, forKey: .breakupValuesAnalytics)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(couponDetails, forKey: .couponDetails)
        
    }
}

/*
    Model: AddProductCart,
    Service: Cart
*/

public struct AddProductCart: Codable {
    
    public var sellerId: Int?
    
    public var articleId: String?
    
    public var pos: Bool?
    
    public var articleAssignment: [String: Any]?
    
    public var quantity: Int?
    
    public var display: String?
    
    public var itemId: Int?
    
    public var storeId: Int?
    
    public var itemSize: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case sellerId = "seller_id"
        
        case articleId = "article_id"
        
        case pos = "pos"
        
        case articleAssignment = "article_assignment"
        
        case quantity = "quantity"
        
        case display = "display"
        
        case itemId = "item_id"
        
        case storeId = "store_id"
        
        case itemSize = "item_size"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        sellerId = try? container.decode(Int.self, forKey: .sellerId)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        pos = try? container.decode(Bool.self, forKey: .pos)
        
        articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        display = try? container.decode(String.self, forKey: .display)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        storeId = try? container.decode(Int.self, forKey: .storeId)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(sellerId, forKey: .sellerId)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(pos, forKey: .pos)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(storeId, forKey: .storeId)
        
        try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        
    }
}

/*
    Model: AddCartRequest,
    Service: Cart
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
    Model: RawBreakup,
    Service: Cart
*/

public struct RawBreakup: Codable {
    
    public var codCharge: Int?
    
    public var coupon: Int?
    
    public var fyndCash: Int?
    
    public var youSaved: Int?
    
    public var subtotal: Int?
    
    public var total: Int?
    
    public var deliveryCharge: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case codCharge = "cod_charge"
        
        case coupon = "coupon"
        
        case fyndCash = "fynd_cash"
        
        case youSaved = "you_saved"
        
        case subtotal = "subtotal"
        
        case total = "total"
        
        case deliveryCharge = "delivery_charge"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        codCharge = try? container.decode(Int.self, forKey: .codCharge)
        
        coupon = try? container.decode(Int.self, forKey: .coupon)
        
        fyndCash = try? container.decode(Int.self, forKey: .fyndCash)
        
        youSaved = try? container.decode(Int.self, forKey: .youSaved)
        
        subtotal = try? container.decode(Int.self, forKey: .subtotal)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        deliveryCharge = try? container.decode(Int.self, forKey: .deliveryCharge)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(codCharge, forKey: .codCharge)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
        
        try? container.encodeIfPresent(youSaved, forKey: .youSaved)
        
        try? container.encodeIfPresent(subtotal, forKey: .subtotal)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        
    }
}

/*
    Model: BaseLoyaltyPoints,
    Service: Cart
*/

public struct BaseLoyaltyPoints: Codable {
    
    public var applicable: Int?
    
    public var description: String?
    
    public var total: Double?
    
    public var isApplied: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case applicable = "applicable"
        
        case description = "description"
        
        case total = "total"
        
        case isApplied = "is_applied"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicable = try? container.decode(Int.self, forKey: .applicable)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(applicable, forKey: .applicable)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
    }
}

/*
    Model: DisplayBreakup,
    Service: Cart
*/

public struct DisplayBreakup: Codable {
    
    public var currencySymbol: String?
    
    public var value: Int?
    
    public var key: String?
    
    public var display: String?
    
    public var currencyCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case currencySymbol = "currency_symbol"
        
        case value = "value"
        
        case key = "key"
        
        case display = "display"
        
        case currencyCode = "currency_code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
    }
}

/*
    Model: CouponBreakup,
    Service: Cart
*/

public struct CouponBreakup: Codable {
    
    public var value: Int?
    
    public var uid: Int?
    
    public var type: String?
    
    public var isApplied: Bool?
    
    public var message: String?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case value = "value"
        
        case uid = "uid"
        
        case type = "type"
        
        case isApplied = "is_applied"
        
        case message = "message"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        type = try? container.decode(String.self, forKey: .type)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        message = try? container.decode(String.self, forKey: .message)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: BaseCartBreakup,
    Service: Cart
*/

public struct BaseCartBreakup: Codable {
    
    public var raw: RawBreakup?
    
    public var loyaltyPoints: BaseLoyaltyPoints?
    
    public var display: DisplayBreakup?
    
    public var coupon: CouponBreakup?
    

    enum CodingKeys: String, CodingKey {
        
        case raw = "raw"
        
        case loyaltyPoints = "loyalty_points"
        
        case display = "display"
        
        case coupon = "coupon"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        raw = try? container.decode(RawBreakup.self, forKey: .raw)
        
        loyaltyPoints = try? container.decode(BaseLoyaltyPoints.self, forKey: .loyaltyPoints)
        
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
    Model: Image,
    Service: Cart
*/

public struct Image: Codable {
    
    public var url: String?
    
    public var secureUrl: String?
    
    public var aspectRatio: String?
    

    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        
        case secureUrl = "secure_url"
        
        case aspectRatio = "aspect_ratio"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        url = try? container.decode(String.self, forKey: .url)
        
        secureUrl = try? container.decode(String.self, forKey: .secureUrl)
        
        aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(url, forKey: .url)
        
        try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        
        try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        
    }
}

/*
    Model: ActionQuery,
    Service: Cart
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
    Service: Cart
*/

public struct Action: Codable {
    
    public var query: ActionQuery?
    
    public var url: String?
    
    public var type: String?
    

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
    Model: BaseInfo,
    Service: Cart
*/

public struct BaseInfo: Codable {
    
    public var uid: Int?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CategoryInfo,
    Service: Cart
*/

public struct CategoryInfo: Codable {
    
    public var uid: Int?
    
    public var name: Int?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: Product,
    Service: Cart
*/

public struct Product: Codable {
    
    public var name: String?
    
    public var images: [Image]?
    
    public var uid: Int?
    
    public var type: String?
    
    public var action: Action?
    
    public var brand: BaseInfo?
    
    public var categories: [CategoryInfo]?
    
    public var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case images = "images"
        
        case uid = "uid"
        
        case type = "type"
        
        case action = "action"
        
        case brand = "brand"
        
        case categories = "categories"
        
        case slug = "slug"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        images = try? container.decode([Image].self, forKey: .images)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        type = try? container.decode(String.self, forKey: .type)
        
        action = try? container.decode(Action.self, forKey: .action)
        
        brand = try? container.decode(BaseInfo.self, forKey: .brand)
        
        categories = try? container.decode([CategoryInfo].self, forKey: .categories)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(images, forKey: .images)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
    }
}

/*
    Model: ProductAvailability,
    Service: Cart
*/

public struct ProductAvailability: Codable {
    
    public var outOfStock: Bool?
    
    public var sizes: [String]?
    
    public var deliverable: Bool?
    
    public var isValid: Bool?
    
    public var otherStoreQuantity: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case outOfStock = "out_of_stock"
        
        case sizes = "sizes"
        
        case deliverable = "deliverable"
        
        case isValid = "is_valid"
        
        case otherStoreQuantity = "other_store_quantity"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
        
        sizes = try? container.decode([String].self, forKey: .sizes)
        
        deliverable = try? container.decode(Bool.self, forKey: .deliverable)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
        
        try? container.encodeIfPresent(sizes, forKey: .sizes)
        
        try? container.encodeIfPresent(deliverable, forKey: .deliverable)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
        
    }
}

/*
    Model: ProductPrice,
    Service: Cart
*/

public struct ProductPrice: Codable {
    
    public var currencySymbol: String?
    
    public var addOn: Double?
    
    public var selling: Double?
    
    public var effective: Double?
    
    public var marked: Double?
    
    public var currencyCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case currencySymbol = "currency_symbol"
        
        case addOn = "add_on"
        
        case selling = "selling"
        
        case effective = "effective"
        
        case marked = "marked"
        
        case currencyCode = "currency_code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        addOn = try? container.decode(Double.self, forKey: .addOn)
        
        selling = try? container.decode(Double.self, forKey: .selling)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(addOn, forKey: .addOn)
        
        try? container.encodeIfPresent(selling, forKey: .selling)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
    }
}

/*
    Model: ProductPriceInfo,
    Service: Cart
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
    Model: CartProductInfo,
    Service: Cart
*/

public struct CartProductInfo: Codable {
    
    public var bulkOffer: String?
    
    public var discount: String?
    
    public var couponMessage: String?
    
    public var product: Product?
    
    public var availability: ProductAvailability?
    
    public var key: String?
    
    public var quantity: Int?
    
    public var article: String?
    
    public var message: String?
    
    public var price: ProductPriceInfo?
    

    enum CodingKeys: String, CodingKey {
        
        case bulkOffer = "bulk_offer"
        
        case discount = "discount"
        
        case couponMessage = "coupon_message"
        
        case product = "product"
        
        case availability = "availability"
        
        case key = "key"
        
        case quantity = "quantity"
        
        case article = "article"
        
        case message = "message"
        
        case price = "price"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        couponMessage = try? container.decode(String.self, forKey: .couponMessage)
        
        product = try? container.decode(Product.self, forKey: .product)
        
        availability = try? container.decode(ProductAvailability.self, forKey: .availability)
        
        key = try? container.decode(String.self, forKey: .key)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        article = try? container.decode(String.self, forKey: .article)
        
        message = try? container.decode(String.self, forKey: .message)
        
        price = try? container.decode(ProductPriceInfo.self, forKey: .price)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
        
        try? container.encodeIfPresent(product, forKey: .product)
        
        try? container.encodeIfPresent(availability, forKey: .availability)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(article, forKey: .article)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
    }
}

/*
    Model: CartCurrency,
    Service: Cart
*/

public struct CartCurrency: Codable {
    
    public var symbol: String?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case symbol = "symbol"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        symbol = try? container.decode(String.self, forKey: .symbol)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(symbol, forKey: .symbol)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: PaymentOption,
    Service: Cart
*/

public struct PaymentOption: Codable {
    
    public var paymentModeId: Int?
    
    public var name: String?
    
    public var list: [[String: Any]]?
    
    public var displayName: String?
    
    public var displayPriority: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentModeId = "payment_mode_id"
        
        case name = "name"
        
        case list = "list"
        
        case displayName = "display_name"
        
        case displayPriority = "display_priority"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
        
        name = try? container.decode(String.self, forKey: .name)
        
        list = try? container.decode([[String: Any]].self, forKey: .list)
        
        displayName = try? container.decode(String.self, forKey: .displayName)
        
        displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(list, forKey: .list)
        
        try? container.encodeIfPresent(displayName, forKey: .displayName)
        
        try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
        
    }
}

/*
    Model: PaymentFlow,
    Service: Cart
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
    Service: Cart
*/

public struct PaymentFlows: Codable {
    
    public var simpl: PaymentFlow?
    
    public var razorpay: PaymentFlow?
    
    public var juspay: PaymentFlow?
    
    public var fynd: PaymentFlow?
    
    public var upiRazorpay: PaymentFlow?
    

    enum CodingKeys: String, CodingKey {
        
        case simpl = "Simpl"
        
        case razorpay = "Razorpay"
        
        case juspay = "Juspay"
        
        case fynd = "Fynd"
        
        case upiRazorpay = "UPI_Razorpay"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
        
        razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
        
        juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
        
        fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
        
        upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(simpl, forKey: .simpl)
        
        try? container.encodeIfPresent(razorpay, forKey: .razorpay)
        
        try? container.encodeIfPresent(juspay, forKey: .juspay)
        
        try? container.encodeIfPresent(fynd, forKey: .fynd)
        
        try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
        
    }
}

/*
    Model: PaymentOptions,
    Service: Cart
*/

public struct PaymentOptions: Codable {
    
    public var paymentOption: [PaymentOption]?
    
    public var paymentFlows: PaymentFlows?
    
    public var default: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentOption = "payment_option"
        
        case paymentFlows = "payment_flows"
        
        case default = "default"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentOption = try? container.decode([PaymentOption].self, forKey: .paymentOption)
        
        paymentFlows = try? container.decode(PaymentFlows.self, forKey: .paymentFlows)
        
        default = try? container.decode([String: Any].self, forKey: .default)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
        
        try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
        
        try? container.encodeIfPresent(default, forKey: .default)
        
    }
}

/*
    Model: CartResponse,
    Service: Cart
*/

public struct CartResponse: Codable {
    
    public var cartId: Int?
    
    public var breakupValues: BaseCartBreakup?
    
    public var couponText: String?
    
    public var items: [CartProductInfo]?
    
    public var lastModified: String?
    
    public var uid: String?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    
    public var currency: CartCurrency?
    
    public var deliveryChargeInfo: String?
    
    public var checkoutMode: String?
    
    public var isValid: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cartId = "cart_id"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case lastModified = "last_modified"
        
        case uid = "uid"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
        case currency = "currency"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case checkoutMode = "checkout_mode"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case message = "message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
    }
}

/*
    Model: UpdateProductCart,
    Service: Cart
*/

public struct UpdateProductCart: Codable {
    
    public var itemIndex: Int?
    
    public var articleId: String?
    
    public var quantity: Int?
    
    public var itemId: Int?
    
    public var itemSize: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case itemIndex = "item_index"
        
        case articleId = "article_id"
        
        case quantity = "quantity"
        
        case itemId = "item_id"
        
        case itemSize = "item_size"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        
    }
}

/*
    Model: UpdateCartRequest,
    Service: Cart
*/

public struct UpdateCartRequest: Codable {
    
    public var operation: String
    
    public var items: [UpdateProductCart]?
    

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
    Model: PageCoupon,
    Service: Cart
*/

public struct PageCoupon: Codable {
    
    public var totalItemCount: Int?
    
    public var hasNext: Bool?
    
    public var current: Int?
    
    public var total: Int?
    
    public var hasPrevious: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case totalItemCount = "total_item_count"
        
        case hasNext = "has_next"
        
        case current = "current"
        
        case total = "total"
        
        case hasPrevious = "has_previous"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
        
        try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        
        try? container.encodeIfPresent(current, forKey: .current)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        
    }
}

/*
    Model: Coupon,
    Service: Cart
*/

public struct Coupon: Codable {
    
    public var couponValue: Double?
    
    public var title: String?
    
    public var maxDiscountValue: Double?
    
    public var message: String?
    
    public var uid: Int?
    
    public var subTitle: String?
    
    public var isApplied: Bool?
    
    public var minimumCartValue: Double?
    
    public var couponCode: String?
    
    public var isApplicable: Bool?
    
    public var expiresOn: String?
    

    enum CodingKeys: String, CodingKey {
        
        case couponValue = "coupon_value"
        
        case title = "title"
        
        case maxDiscountValue = "max_discount_value"
        
        case message = "message"
        
        case uid = "uid"
        
        case subTitle = "sub_title"
        
        case isApplied = "is_applied"
        
        case minimumCartValue = "minimum_cart_value"
        
        case couponCode = "coupon_code"
        
        case isApplicable = "is_applicable"
        
        case expiresOn = "expires_on"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        couponValue = try? container.decode(Double.self, forKey: .couponValue)
        
        title = try? container.decode(String.self, forKey: .title)
        
        maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
        
        message = try? container.decode(String.self, forKey: .message)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        subTitle = try? container.decode(String.self, forKey: .subTitle)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
        
        couponCode = try? container.decode(String.self, forKey: .couponCode)
        
        isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
        
        expiresOn = try? container.decode(String.self, forKey: .expiresOn)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(couponValue, forKey: .couponValue)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(subTitle, forKey: .subTitle)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
        
        try? container.encodeIfPresent(couponCode, forKey: .couponCode)
        
        try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
        
        try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
        
    }
}

/*
    Model: GetCouponResponse,
    Service: Cart
*/

public struct GetCouponResponse: Codable {
    
    public var page: PageCoupon?
    
    public var availableCouponList: [Coupon]?
    

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
    Model: RawCartCoupon,
    Service: Cart
*/

public struct RawCartCoupon: Codable {
    
    public var codCharge: Double?
    
    public var convenienceFee: Double?
    
    public var discount: Double?
    
    public var coupon: Double?
    
    public var mrpTotal: Double?
    
    public var vog: Double?
    
    public var fyndCash: Double?
    
    public var youSaved: Double?
    
    public var subtotal: Double?
    
    public var gstCharges: Double?
    
    public var total: Double?
    
    public var deliveryCharge: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case codCharge = "cod_charge"
        
        case convenienceFee = "convenience_fee"
        
        case discount = "discount"
        
        case coupon = "coupon"
        
        case mrpTotal = "mrp_total"
        
        case vog = "vog"
        
        case fyndCash = "fynd_cash"
        
        case youSaved = "you_saved"
        
        case subtotal = "subtotal"
        
        case gstCharges = "gst_charges"
        
        case total = "total"
        
        case deliveryCharge = "delivery_charge"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        codCharge = try? container.decode(Double.self, forKey: .codCharge)
        
        convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
        
        discount = try? container.decode(Double.self, forKey: .discount)
        
        coupon = try? container.decode(Double.self, forKey: .coupon)
        
        mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
        
        vog = try? container.decode(Double.self, forKey: .vog)
        
        fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
        
        youSaved = try? container.decode(Double.self, forKey: .youSaved)
        
        subtotal = try? container.decode(Double.self, forKey: .subtotal)
        
        gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(codCharge, forKey: .codCharge)
        
        try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
        
        try? container.encodeIfPresent(vog, forKey: .vog)
        
        try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
        
        try? container.encodeIfPresent(youSaved, forKey: .youSaved)
        
        try? container.encodeIfPresent(subtotal, forKey: .subtotal)
        
        try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        
    }
}

/*
    Model: LoyaltyPoints,
    Service: Cart
*/

public struct LoyaltyPoints: Codable {
    
    public var applicable: String?
    
    public var description: String?
    
    public var total: Int?
    
    public var isApplied: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case applicable = "applicable"
        
        case description = "description"
        
        case total = "total"
        
        case isApplied = "is_applied"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicable = try? container.decode(String.self, forKey: .applicable)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(applicable, forKey: .applicable)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
    }
}

/*
    Model: CartCoupon,
    Service: Cart
*/

public struct CartCoupon: Codable {
    
    public var value: Int?
    
    public var uid: Int?
    
    public var type: String?
    
    public var isApplied: Bool?
    
    public var message: String?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case value = "value"
        
        case uid = "uid"
        
        case type = "type"
        
        case isApplied = "is_applied"
        
        case message = "message"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        type = try? container.decode(String.self, forKey: .type)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        message = try? container.decode(String.self, forKey: .message)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: SaveCoupon,
    Service: Cart
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
    Service: Cart
*/

public struct SaveCouponResponse: Codable {
    
    public var cartId: Int?
    
    public var breakupValues: SaveCoupon?
    
    public var couponText: String?
    
    public var items: [String]?
    
    public var lastModified: String?
    
    public var uid: Int?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    
    public var deliveryChargeInfo: String?
    
    public var checkoutMode: String?
    
    public var isValid: Bool?
    
    public var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cartId = "cart_id"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case lastModified = "last_modified"
        
        case uid = "uid"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case checkoutMode = "checkout_mode"
        
        case isValid = "is_valid"
        
        case message = "message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([String].self, forKey: .items)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
    }
}

/*
    Model: OfferSeller,
    Service: Cart
*/

public struct OfferSeller: Codable {
    
    public var uid: Int?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: OfferPrice,
    Service: Cart
*/

public struct OfferPrice: Codable {
    
    public var currencySymbol: String?
    
    public var currencyCode: String?
    
    public var effective: Int?
    
    public var marked: Int?
    
    public var bulkEffective: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
        case effective = "effective"
        
        case marked = "marked"
        
        case bulkEffective = "bulk_effective"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        effective = try? container.decode(Int.self, forKey: .effective)
        
        marked = try? container.decode(Int.self, forKey: .marked)
        
        bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
        try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
        
    }
}

/*
    Model: OfferItem,
    Service: Cart
*/

public struct OfferItem: Codable {
    
    public var best: Bool?
    
    public var type: String?
    
    public var quantity: Int?
    
    public var total: Double?
    
    public var autoApplied: Bool?
    
    public var price: OfferPrice?
    
    public var margin: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case best = "best"
        
        case type = "type"
        
        case quantity = "quantity"
        
        case total = "total"
        
        case autoApplied = "auto_applied"
        
        case price = "price"
        
        case margin = "margin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        best = try? container.decode(Bool.self, forKey: .best)
        
        type = try? container.decode(String.self, forKey: .type)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
        
        price = try? container.decode(OfferPrice.self, forKey: .price)
        
        margin = try? container.decode(Int.self, forKey: .margin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(best, forKey: .best)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(margin, forKey: .margin)
        
    }
}

/*
    Model: BulkPriceOffer,
    Service: Cart
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
    Service: Cart
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
    Model: Address,
    Service: Cart
*/

public struct Address: Codable {
    
    public var areaCode: String?
    
    public var countryCode: String?
    
    public var isActive: Bool?
    
    public var areaCodeSlug: String?
    
    public var isDefaultAddress: Bool?
    
    public var phone: Int?
    
    public var email: String?
    
    public var addressType: String?
    
    public var landmark: String?
    
    public var geoLocation: [String: Any]?
    
    public var name: String?
    
    public var uid: Int?
    
    public var state: String?
    
    public var addressId: Int?
    
    public var meta: [String: Any]?
    
    public var country: String?
    
    public var city: String?
    
    public var area: String?
    
    public var checkoutMode: String?
    
    public var address: String?
    
    public var userId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case areaCode = "area_code"
        
        case countryCode = "country_code"
        
        case isActive = "is_active"
        
        case areaCodeSlug = "area_code_slug"
        
        case isDefaultAddress = "is_default_address"
        
        case phone = "phone"
        
        case email = "email"
        
        case addressType = "address_type"
        
        case landmark = "landmark"
        
        case geoLocation = "geo_location"
        
        case name = "name"
        
        case uid = "uid"
        
        case state = "state"
        
        case addressId = "address_id"
        
        case meta = "meta"
        
        case country = "country"
        
        case city = "city"
        
        case area = "area"
        
        case checkoutMode = "checkout_mode"
        
        case address = "address"
        
        case userId = "user_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        areaCode = try? container.decode(String.self, forKey: .areaCode)
        
        countryCode = try? container.decode(String.self, forKey: .countryCode)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        email = try? container.decode(String.self, forKey: .email)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        geoLocation = try? container.decode([String: Any].self, forKey: .geoLocation)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        state = try? container.decode(String.self, forKey: .state)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        country = try? container.decode(String.self, forKey: .country)
        
        city = try? container.decode(String.self, forKey: .city)
        
        area = try? container.decode(String.self, forKey: .area)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        address = try? container.decode(String.self, forKey: .address)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(areaCode, forKey: .areaCode)
        
        try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
        try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(state, forKey: .state)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(country, forKey: .country)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(userId, forKey: .userId)
        
    }
}

/*
    Model: GetAddressResponse,
    Service: Cart
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
    Service: Cart
*/

public struct SaveAddressRequest: Codable {
    
    public var name: String?
    
    public var area: String?
    
    public var isDefaultAddress: Bool?
    
    public var phone: Int?
    
    public var email: String?
    
    public var address: String?
    
    public var addressType: String?
    
    public var landmark: String?
    
    public var pincode: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case area = "area"
        
        case isDefaultAddress = "is_default_address"
        
        case phone = "phone"
        
        case email = "email"
        
        case address = "address"
        
        case addressType = "address_type"
        
        case landmark = "landmark"
        
        case pincode = "pincode"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        area = try? container.decode(String.self, forKey: .area)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        email = try? container.decode(String.self, forKey: .email)
        
        address = try? container.decode(String.self, forKey: .address)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
    }
}

/*
    Model: SaveAddressResponse,
    Service: Cart
*/

public struct SaveAddressResponse: Codable {
    
    public var isDefaultAddress: Bool?
    
    public var success: String?
    
    public var addressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isDefaultAddress = "is_default_address"
        
        case success = "success"
        
        case addressId = "address_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        success = try? container.decode(String.self, forKey: .success)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
    }
}

/*
    Model: UpdateAddressRequest,
    Service: Cart
*/

public struct UpdateAddressRequest: Codable {
    
    public var name: String?
    
    public var area: String?
    
    public var isDefaultAddress: Bool?
    
    public var phone: Int?
    
    public var email: String?
    
    public var address: String?
    
    public var addressType: String?
    
    public var landmark: String?
    
    public var pincode: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case area = "area"
        
        case isDefaultAddress = "is_default_address"
        
        case phone = "phone"
        
        case email = "email"
        
        case address = "address"
        
        case addressType = "address_type"
        
        case landmark = "landmark"
        
        case pincode = "pincode"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        area = try? container.decode(String.self, forKey: .area)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        email = try? container.decode(String.self, forKey: .email)
        
        address = try? container.decode(String.self, forKey: .address)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
    }
}

/*
    Model: UpdateAddressResponse,
    Service: Cart
*/

public struct UpdateAddressResponse: Codable {
    
    public var addressId: Int?
    
    public var isUpdated: Bool?
    
    public var success: Bool?
    
    public var isDefaultAddress: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case isUpdated = "is_updated"
        
        case success = "success"
        
        case isDefaultAddress = "is_default_address"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
    }
}

/*
    Model: DeleteAddressResponse,
    Service: Cart
*/

public struct DeleteAddressResponse: Codable {
    
    public var addressId: Int?
    
    public var isDeleted: Bool?
    

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
    Model: SelectCartAddressRequest,
    Service: Cart
*/

public struct SelectCartAddressRequest: Codable {
    
    public var addressId: String?
    
    public var uid: String?
    
    public var billingAddressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case uid = "uid"
        
        case billingAddressId = "billing_address_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(String.self, forKey: .addressId)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        
    }
}

/*
    Model: UpdateCartPaymentRequest,
    Service: Cart
*/

public struct UpdateCartPaymentRequest: Codable {
    
    public var paymentIdentifier: String?
    
    public var aggregatorName: String?
    
    public var merchantCode: String?
    
    public var addressId: Int?
    
    public var paymentMode: String?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentIdentifier = "payment_identifier"
        
        case aggregatorName = "aggregator_name"
        
        case merchantCode = "merchant_code"
        
        case addressId = "address_id"
        
        case paymentMode = "payment_mode"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        paymentMode = try? container.decode(String.self, forKey: .paymentMode)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        
        try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        
        try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: ShipmentResponse,
    Service: Cart
*/

public struct ShipmentResponse: Codable {
    
    public var dpId: Int?
    
    public var items: [CartProductInfo]?
    
    public var boxType: String?
    
    public var shipments: Int?
    
    public var fulfillmentType: String?
    
    public var shipmentType: String?
    
    public var promise: String?
    
    public var fulfillmentId: Int?
    
    public var dpOptions: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case dpId = "dp_id"
        
        case items = "items"
        
        case boxType = "box_type"
        
        case shipments = "shipments"
        
        case fulfillmentType = "fulfillment_type"
        
        case shipmentType = "shipment_type"
        
        case promise = "promise"
        
        case fulfillmentId = "fulfillment_id"
        
        case dpOptions = "dp_options"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        dpId = try? container.decode(Int.self, forKey: .dpId)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        boxType = try? container.decode(String.self, forKey: .boxType)
        
        shipments = try? container.decode(Int.self, forKey: .shipments)
        
        fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
        
        shipmentType = try? container.decode(String.self, forKey: .shipmentType)
        
        promise = try? container.decode(String.self, forKey: .promise)
        
        fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
        
        dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(dpId, forKey: .dpId)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(boxType, forKey: .boxType)
        
        try? container.encodeIfPresent(shipments, forKey: .shipments)
        
        try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
        
        try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
        
        try? container.encodeIfPresent(promise, forKey: .promise)
        
        try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        
        try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
        
    }
}

/*
    Model: CartShipmentsResponse,
    Service: Cart
*/

public struct CartShipmentsResponse: Codable {
    
    public var cartId: Int?
    
    public var breakupValues: BaseCartBreakup?
    
    public var couponText: String?
    
    public var lastModified: String?
    
    public var uid: String?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    
    public var currency: CartCurrency?
    
    public var deliveryChargeInfo: String?
    
    public var shipments: [ShipmentResponse]?
    
    public var checkoutMode: String?
    
    public var isValid: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cartId = "cart_id"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case lastModified = "last_modified"
        
        case uid = "uid"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
        case currency = "currency"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case shipments = "shipments"
        
        case checkoutMode = "checkout_mode"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case message = "message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(shipments, forKey: .shipments)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
    }
}

/*
    Model: CartCheckoutRequest,
    Service: Cart
*/

public struct CartCheckoutRequest: Codable {
    
    public var paymentIdentifier: String?
    
    public var paymentAutoConfirm: Bool?
    
    public var billingAddressId: Int?
    
    public var extraMeta: [String: Any]?
    
    public var billingAddress: [String: Any]?
    
    public var addressId: Int?
    
    public var paymentMode: String
    
    public var merchantCode: String?
    
    public var orderingStore: Int?
    
    public var staff: [String: Any]?
    
    public var meta: [String: Any]?
    
    public var paymentParams: [String: Any]?
    
    public var fyndstoreEmpId: String?
    
    public var callbackUrl: String?
    
    public var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentIdentifier = "payment_identifier"
        
        case paymentAutoConfirm = "payment_auto_confirm"
        
        case billingAddressId = "billing_address_id"
        
        case extraMeta = "extra_meta"
        
        case billingAddress = "billing_address"
        
        case addressId = "address_id"
        
        case paymentMode = "payment_mode"
        
        case merchantCode = "merchant_code"
        
        case orderingStore = "ordering_store"
        
        case staff = "staff"
        
        case meta = "meta"
        
        case paymentParams = "payment_params"
        
        case fyndstoreEmpId = "fyndstore_emp_id"
        
        case callbackUrl = "callback_url"
        
        case aggregator = "aggregator"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
        extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
        
        billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        paymentMode = try container.decode(String.self, forKey: .paymentMode)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        staff = try? container.decode([String: Any].self, forKey: .staff)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
        
        fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        
        try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
        
        try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        
        try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        
        try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        
        try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        
        try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        
        try? container.encodeIfPresent(staff, forKey: .staff)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
        
        try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
        
        try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
    }
}

/*
    Model: DeliverySlot,
    Service: Cart
*/

public struct DeliverySlot: Codable {
    
    public var deliverySlotId: Int?
    
    public var deliverySlotTiming: String?
    
    public var default: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case deliverySlotId = "delivery_slot_id"
        
        case deliverySlotTiming = "delivery_slot_timing"
        
        case default = "default"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliverySlotId = try? container.decode(Int.self, forKey: .deliverySlotId)
        
        deliverySlotTiming = try? container.decode(String.self, forKey: .deliverySlotTiming)
        
        default = try? container.decode(Bool.self, forKey: .default)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliverySlotId, forKey: .deliverySlotId)
        
        try? container.encodeIfPresent(deliverySlotTiming, forKey: .deliverySlotTiming)
        
        try? container.encodeIfPresent(default, forKey: .default)
        
    }
}

/*
    Model: DeliverySlotDate,
    Service: Cart
*/

public struct DeliverySlotDate: Codable {
    
    public var date: String?
    
    public var deliverySlot: [DeliverySlot]?
    

    enum CodingKeys: String, CodingKey {
        
        case date = "date"
        
        case deliverySlot = "delivery_slot"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        date = try? container.decode(String.self, forKey: .date)
        
        deliverySlot = try? container.decode([DeliverySlot].self, forKey: .deliverySlot)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(date, forKey: .date)
        
        try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
        
    }
}

/*
    Model: CheckCart,
    Service: Cart
*/

public struct CheckCart: Codable {
    
    public var cartId: Int?
    
    public var lastModified: String?
    
    public var items: [CartProductInfo]?
    
    public var deliveryCharges: Int?
    
    public var deliverySlots: [DeliverySlotDate]?
    
    public var codMessage: String?
    
    public var storeCode: String?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    
    public var codCharges: Int?
    
    public var codAvailable: Bool?
    
    public var orderId: String?
    
    public var errorMessage: String?
    
    public var uid: String?
    
    public var deliveryChargeOrderValue: Int?
    
    public var deliveryChargeInfo: String?
    
    public var storeEmps: [[String: Any]]?
    
    public var isValid: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var message: String?
    
    public var success: Bool?
    
    public var breakupValues: BaseCartBreakup?
    
    public var couponText: String?
    
    public var currency: CartCurrency?
    
    public var checkoutMode: String?
    
    public var userType: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cartId = "cart_id"
        
        case lastModified = "last_modified"
        
        case items = "items"
        
        case deliveryCharges = "delivery_charges"
        
        case deliverySlots = "delivery_slots"
        
        case codMessage = "cod_message"
        
        case storeCode = "store_code"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
        case codCharges = "cod_charges"
        
        case codAvailable = "cod_available"
        
        case orderId = "order_id"
        
        case errorMessage = "error_message"
        
        case uid = "uid"
        
        case deliveryChargeOrderValue = "delivery_charge_order_value"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case storeEmps = "store_emps"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case message = "message"
        
        case success = "success"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case currency = "currency"
        
        case checkoutMode = "checkout_mode"
        
        case userType = "user_type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
        
        deliverySlots = try? container.decode([DeliverySlotDate].self, forKey: .deliverySlots)
        
        codMessage = try? container.decode(String.self, forKey: .codMessage)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        codCharges = try? container.decode(Int.self, forKey: .codCharges)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        errorMessage = try? container.decode(String.self, forKey: .errorMessage)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        message = try? container.decode(String.self, forKey: .message)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        userType = try? container.decode(String.self, forKey: .userType)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        
        try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
        
        try? container.encodeIfPresent(codMessage, forKey: .codMessage)
        
        try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        
        try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(userType, forKey: .userType)
        
    }
}

/*
    Model: OrderData,
    Service: Cart
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
    Service: Cart
*/

public struct CartCheckoutResponse: Codable {
    
    public var success: Bool?
    
    public var cart: CheckCart?
    
    public var data: OrderData?
    
    public var callbackUrl: String?
    
    public var orderId: String?
    
    public var message: String?
    
    public var appInterceptUrl: String?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case cart = "cart"
        
        case data = "data"
        
        case callbackUrl = "callback_url"
        
        case orderId = "order_id"
        
        case message = "message"
        
        case appInterceptUrl = "app_intercept_url"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        cart = try? container.decode(CheckCart.self, forKey: .cart)
        
        data = try? container.decode(OrderData.self, forKey: .data)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        message = try? container.decode(String.self, forKey: .message)
        
        appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(cart, forKey: .cart)
        
        try? container.encodeIfPresent(data, forKey: .data)
        
        try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
        
    }
}

/*
    Model: Meta,
    Service: Cart
*/

public struct Meta: Codable {
    
    public var orderingStore: Int?
    
    public var selectedStaff: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderingStore = "ordering_store"
        
        case selectedStaff = "selected_staff"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        selectedStaff = try? container.decode(String.self, forKey: .selectedStaff)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        
        try? container.encodeIfPresent(selectedStaff, forKey: .selectedStaff)
        
    }
}

/*
    Model: SharedCartDetails,
    Service: Cart
*/

public struct SharedCartDetails: Codable {
    
    public var user: [String: Any]?
    
    public var createdOn: String?
    
    public var meta: Meta?
    
    public var token: String?
    
    public var source: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case user = "user"
        
        case createdOn = "created_on"
        
        case meta = "meta"
        
        case token = "token"
        
        case source = "source"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        user = try? container.decode([String: Any].self, forKey: .user)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
        meta = try? container.decode(Meta.self, forKey: .meta)
        
        token = try? container.decode(String.self, forKey: .token)
        
        source = try? container.decode([String: Any].self, forKey: .source)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(user, forKey: .user)
        
        try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(token, forKey: .token)
        
        try? container.encodeIfPresent(source, forKey: .source)
        
    }
}

/*
    Model: SharedCartResponse,
    Service: Cart
*/

public struct SharedCartResponse: Codable {
    
    public var cartId: Int?
    
    public var breakupValues: BaseCartBreakup?
    
    public var couponText: String?
    
    public var items: [CartProductInfo]?
    
    public var lastModified: String?
    
    public var uid: String?
    
    public var restrictCheckout: Bool?
    
    public var gstin: String?
    
    public var currency: CartCurrency?
    
    public var deliveryChargeInfo: String?
    
    public var checkoutMode: String?
    
    public var isValid: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var sharedCartDetails: SharedCartDetails?
    
    public var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cartId = "cart_id"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case lastModified = "last_modified"
        
        case uid = "uid"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
        case currency = "currency"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case checkoutMode = "checkout_mode"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case sharedCartDetails = "shared_cart_details"
        
        case message = "message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
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
    
    public var participants: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case participants = "participants"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        participants = try? container.decode([Any].self, forKey: .participants)
        
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
    
    public var ticket: Ticket?
    

    enum CodingKeys: String, CodingKey {
        
        case ticket = "ticket"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        ticket = try? container.decode(Ticket.self, forKey: .ticket)
        
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
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try container.decode(String.self, forKey: .key)
        
        display = try container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
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
    
    public var createdBy: [String: Any]
    
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
        
        createdBy = try container.decode([String: Any].self, forKey: .createdBy)
        
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
    Model: ThemesSchema,
    Service: Theme
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
    Service: Theme
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
    Service: Theme
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
    Service: Theme
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
    Model: PlatformSchema,
    Service: User
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
        
        case updatedAt = "updatedAt"
        
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
        
        case createdAt = "createdAt"
        
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
    Service: User
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
        
        case firstName = "firstName"
        
        case lastName = "lastName"
        
        case phoneNumbers = "phoneNumbers"
        
        case emails = "emails"
        
        case gender = "gender"
        
        case active = "active"
        
        case profilePicUrl = "profilePicUrl"
        
        case username = "username"
        
        case accountType = "accountType"
        
        case uid = "uid"
        
        case debug = "debug"
        
        case hasOldPasswordHash = "hasOldPasswordHash"
        
        case id = "_id"
        
        case createdAt = "createdAt"
        
        case updatedAt = "updatedAt"
        
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
    Service: Content
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
    Service: Content
*/

public struct Seo: Codable {
    
    public var app: String
    
    public var robotsTxt: String?
    
    public var sitemapEnabled: Bool?
    
    public var customMetaTags: [Any]?
    
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
        
        customMetaTags = try? container.decode([Any].self, forKey: .customMetaTags)
        
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
    Model: Announcement,
    Service: Content
*/

public struct Announcement: Codable {
    
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
    Model: Navigation,
    Service: Content
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
    Service: Content
*/

public struct NavigationRef: Codable {
    
    public var acl: [Any]?
    
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
        
        acl = try? container.decode([Any].self, forKey: .acl)
        
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
    Service: Content
*/

public struct LandingPage: Codable {
    
    public var slug: String?
    
    public var action: [String: Any]?
    
    public var platform: [Any]?
    
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
        
        platform = try? container.decode([Any].self, forKey: .platform)
        
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
    Service: Content
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
    Model: Faq,
    Service: Content
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
    Service: Content
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
    Service: Content
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
    Service: Content
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
    Service: Content
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
    Service: Communication
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
    Service: Communication
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
    Service: Communication
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
    Service: Communication
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
    Service: Communication
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
    Service: Share
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
    Service: Share
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
    Service: Share
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
    Service: Share
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
    Service: Share
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
    Model: failedResponse,
    Service: FileStorage
*/

public struct failedResponse: Codable {
    
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
    Model: cdn,
    Service: FileStorage
*/

public struct cdn: Codable {
    
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
    Model: upload,
    Service: FileStorage
*/

public struct upload: Codable {
    
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
    Model: startResponse,
    Service: FileStorage
*/

public struct startResponse: Codable {
    
    public var fileName: String
    
    public var filePath: String
    
    public var contentType: String
    
    public var method: String
    
    public var namespace: String
    
    public var operation: String
    
    public var size: Int
    
    public var upload: upload
    
    public var cdn: cdn
    

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
        
        upload = try container.decode(upload.self, forKey: .upload)
        
        cdn = try container.decode(cdn.self, forKey: .cdn)
        
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
    Model: startRequest,
    Service: FileStorage
*/

public struct startRequest: Codable {
    
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
    Model: completeResponse,
    Service: FileStorage
*/

public struct completeResponse: Codable {
    
    public var id: String
    
    public var fileName: String
    
    public var filePath: String
    
    public var contentType: String
    
    public var method: String
    
    public var namespace: String
    
    public var operation: String
    
    public var size: Int
    
    public var upload: upload
    
    public var cdn: cdn
    
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
        
        upload = try container.decode(upload.self, forKey: .upload)
        
        cdn = try container.decode(cdn.self, forKey: .cdn)
        
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
    Model: ApplicationAboutResponse,
    Service: Configuration
*/

public struct ApplicationAboutResponse: Codable {
    
    public var applicationInfo: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case applicationInfo = "application_info"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicationInfo = try? container.decode([String: Any].self, forKey: .applicationInfo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(applicationInfo, forKey: .applicationInfo)
        
    }
}

/*
    Model: ApplicationDetailResponse,
    Service: Configuration
*/

public struct ApplicationDetailResponse: Codable {
    
    public var name: String?
    
    public var description: String?
    
    public var logo: [String: Any]?
    
    public var mobileLogo: [String: Any]?
    
    public var favicon: [String: Any]?
    
    public var banner: [String: Any]?
    
    public var domain: Domain?
    
    public var domains: [Domain]?
    
    public var companyId: Int?
    
    public var id: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case description = "description"
        
        case logo = "logo"
        
        case mobileLogo = "mobileLogo"
        
        case favicon = "favicon"
        
        case banner = "banner"
        
        case domain = "domain"
        
        case domains = "domains"
        
        case companyId = "company_id"
        
        case id = "_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        description = try? container.decode(String.self, forKey: .description)
        
        logo = try? container.decode([String: Any].self, forKey: .logo)
        
        mobileLogo = try? container.decode([String: Any].self, forKey: .mobileLogo)
        
        favicon = try? container.decode([String: Any].self, forKey: .favicon)
        
        banner = try? container.decode([String: Any].self, forKey: .banner)
        
        domain = try? container.decode(Domain.self, forKey: .domain)
        
        domains = try? container.decode([Domain].self, forKey: .domains)
        
        companyId = try? container.decode(Int.self, forKey: .companyId)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)
        
        try? container.encodeIfPresent(favicon, forKey: .favicon)
        
        try? container.encodeIfPresent(banner, forKey: .banner)
        
        try? container.encodeIfPresent(domain, forKey: .domain)
        
        try? container.encodeIfPresent(domains, forKey: .domains)
        
        try? container.encodeIfPresent(companyId, forKey: .companyId)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
    }
}

/*
    Model: AppVersionRequest,
    Service: Configuration
*/

public struct AppVersionRequest: Codable {
    
    public var application: ApplicationVersionRequest
    
    public var device: Device
    
    public var locale: String?
    
    public var timezone: String?
    

    enum CodingKeys: String, CodingKey {
        
        case application = "application"
        
        case device = "device"
        
        case locale = "locale"
        
        case timezone = "timezone"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        application = try container.decode(ApplicationVersionRequest.self, forKey: .application)
        
        device = try container.decode(Device.self, forKey: .device)
        
        locale = try? container.decode(String.self, forKey: .locale)
        
        timezone = try? container.decode(String.self, forKey: .timezone)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(application, forKey: .application)
        
        try? container.encodeIfPresent(device, forKey: .device)
        
        try? container.encodeIfPresent(locale, forKey: .locale)
        
        try? container.encodeIfPresent(timezone, forKey: .timezone)
        
    }
}

/*
    Model: ApplicationVersionRequest,
    Service: Configuration
*/

public struct ApplicationVersionRequest: Codable {
    
    public var id: String?
    
    public var name: String
    
    public var namespace: String?
    
    public var token: String?
    
    public var version: String
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case name = "name"
        
        case namespace = "namespace"
        
        case token = "token"
        
        case version = "version"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        name = try container.decode(String.self, forKey: .name)
        
        namespace = try? container.decode(String.self, forKey: .namespace)
        
        token = try? container.decode(String.self, forKey: .token)
        
        version = try container.decode(String.self, forKey: .version)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(namespace, forKey: .namespace)
        
        try? container.encodeIfPresent(token, forKey: .token)
        
        try? container.encodeIfPresent(version, forKey: .version)
        
    }
}

/*
    Model: Device,
    Service: Configuration
*/

public struct Device: Codable {
    
    public var build: Int?
    
    public var model: String?
    
    public var os: OS
    

    enum CodingKeys: String, CodingKey {
        
        case build = "build"
        
        case model = "model"
        
        case os = "os"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        build = try? container.decode(Int.self, forKey: .build)
        
        model = try? container.decode(String.self, forKey: .model)
        
        os = try container.decode(OS.self, forKey: .os)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(build, forKey: .build)
        
        try? container.encodeIfPresent(model, forKey: .model)
        
        try? container.encodeIfPresent(os, forKey: .os)
        
    }
}

/*
    Model: OS,
    Service: Configuration
*/

public struct OS: Codable {
    
    public var name: String
    
    public var version: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case version = "version"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try container.decode(String.self, forKey: .name)
        
        version = try? container.decode(String.self, forKey: .version)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(version, forKey: .version)
        
    }
}

/*
    Model: AppFeatureResponse,
    Service: Configuration
*/

public struct AppFeatureResponse: Codable {
    
    public var feature: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case feature = "feature"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        feature = try? container.decode([String: Any].self, forKey: .feature)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(feature, forKey: .feature)
        
    }
}

/*
    Model: Store,
    Service: Configuration
*/

public struct Store: Codable {
    
    public var address: [String: Any]?
    
    public var id: String?
    
    public var uid: Int?
    
    public var name: String?
    
    public var displayName: String?
    
    public var storeType: String?
    
    public var storeCode: String?
    
    public var pincode: Int?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case address = "address"
        
        case id = "_id"
        
        case uid = "uid"
        
        case name = "name"
        
        case displayName = "display_name"
        
        case storeType = "store_type"
        
        case storeCode = "store_code"
        
        case pincode = "pincode"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        address = try? container.decode([String: Any].self, forKey: .address)
        
        id = try? container.decode(String.self, forKey: .id)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        displayName = try? container.decode(String.self, forKey: .displayName)
        
        storeType = try? container.decode(String.self, forKey: .storeType)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(displayName, forKey: .displayName)
        
        try? container.encodeIfPresent(storeType, forKey: .storeType)
        
        try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: OrderingStores,
    Service: Configuration
*/

public struct OrderingStores: Codable {
    
    public var page: [String: Any]?
    
    public var items: [Store]?
    
    public var deployedStores: [Int]?
    
    public var allStores: Bool?
    
    public var enabled: Bool?
    
    public var type: String?
    
    public var id: String?
    
    public var app: String?
    
    public var v: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case items = "items"
        
        case deployedStores = "deployed_stores"
        
        case allStores = "all_stores"
        
        case enabled = "enabled"
        
        case type = "type"
        
        case id = "_id"
        
        case app = "app"
        
        case v = "__v"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode([String: Any].self, forKey: .page)
        
        items = try? container.decode([Store].self, forKey: .items)
        
        deployedStores = try? container.decode([Int].self, forKey: .deployedStores)
        
        allStores = try? container.decode(Bool.self, forKey: .allStores)
        
        enabled = try? container.decode(Bool.self, forKey: .enabled)
        
        type = try? container.decode(String.self, forKey: .type)
        
        id = try? container.decode(String.self, forKey: .id)
        
        app = try? container.decode(String.self, forKey: .app)
        
        v = try? container.decode(Int.self, forKey: .v)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)
        
        try? container.encodeIfPresent(allStores, forKey: .allStores)
        
        try? container.encodeIfPresent(enabled, forKey: .enabled)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(app, forKey: .app)
        
        try? container.encodeIfPresent(v, forKey: .v)
        
    }
}

/*
    Model: ApplicationInformation,
    Service: Configuration
*/

public struct ApplicationInformation: Codable {
    
    public var address: [String: Any]?
    
    public var support: [String: Any]?
    
    public var socialLinks: [String: Any]?
    
    public var links: [[String: Any]]?
    
    public var copyrightText: String?
    
    public var id: String?
    
    public var businessHighlights: [[String: Any]]?
    
    public var application: String?
    
    public var createdAt: String?
    
    public var updatedAt: String?
    
    public var v: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case address = "address"
        
        case support = "support"
        
        case socialLinks = "social_links"
        
        case links = "links"
        
        case copyrightText = "copyright_text"
        
        case id = "_id"
        
        case businessHighlights = "business_highlights"
        
        case application = "application"
        
        case createdAt = "createdAt"
        
        case updatedAt = "updatedAt"
        
        case v = "__v"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        address = try? container.decode([String: Any].self, forKey: .address)
        
        support = try? container.decode([String: Any].self, forKey: .support)
        
        socialLinks = try? container.decode([String: Any].self, forKey: .socialLinks)
        
        links = try? container.decode([[String: Any]].self, forKey: .links)
        
        copyrightText = try? container.decode(String.self, forKey: .copyrightText)
        
        id = try? container.decode(String.self, forKey: .id)
        
        businessHighlights = try? container.decode([[String: Any]].self, forKey: .businessHighlights)
        
        application = try? container.decode(String.self, forKey: .application)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        v = try? container.decode(Int.self, forKey: .v)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(support, forKey: .support)
        
        try? container.encodeIfPresent(socialLinks, forKey: .socialLinks)
        
        try? container.encodeIfPresent(links, forKey: .links)
        
        try? container.encodeIfPresent(copyrightText, forKey: .copyrightText)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(businessHighlights, forKey: .businessHighlights)
        
        try? container.encodeIfPresent(application, forKey: .application)
        
        try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        
        try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        
        try? container.encodeIfPresent(v, forKey: .v)
        
    }
}

/*
    Model: LanguageResponse,
    Service: Configuration
*/

public struct LanguageResponse: Codable {
    

    enum CodingKeys: String, CodingKey {
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
    }
}

/*
    Model: TokensResponse,
    Service: Configuration
*/

public struct TokensResponse: Codable {
    
    public var tokens: [String: Any]?
    
    public var id: String?
    
    public var application: String?
    
    public var createdAt: String?
    
    public var updatedAt: String?
    
    public var v: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case tokens = "tokens"
        
        case id = "_id"
        
        case application = "application"
        
        case createdAt = "createdAt"
        
        case updatedAt = "updatedAt"
        
        case v = "__v"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        tokens = try? container.decode([String: Any].self, forKey: .tokens)
        
        id = try? container.decode(String.self, forKey: .id)
        
        application = try? container.decode(String.self, forKey: .application)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        v = try? container.decode(Int.self, forKey: .v)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(tokens, forKey: .tokens)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(application, forKey: .application)
        
        try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        
        try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        
        try? container.encodeIfPresent(v, forKey: .v)
        
    }
}

/*
    Model: Currency,
    Service: Configuration
*/

public struct Currency: Codable {
    
    public var id: String?
    
    public var isActive: Bool?
    
    public var name: String?
    
    public var code: String?
    
    public var createdAt: String?
    
    public var updatedAt: String?
    
    public var decimalDigits: Int?
    
    public var symbol: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "_id"
        
        case isActive = "is_active"
        
        case name = "name"
        
        case code = "code"
        
        case createdAt = "createdAt"
        
        case updatedAt = "updatedAt"
        
        case decimalDigits = "decimal_digits"
        
        case symbol = "symbol"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        name = try? container.decode(String.self, forKey: .name)
        
        code = try? container.decode(String.self, forKey: .code)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        decimalDigits = try? container.decode(Int.self, forKey: .decimalDigits)
        
        symbol = try? container.decode(String.self, forKey: .symbol)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
        try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        
        try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        
        try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)
        
        try? container.encodeIfPresent(symbol, forKey: .symbol)
        
    }
}

/*
    Model: Domain,
    Service: Configuration
*/

public struct Domain: Codable {
    
    public var verified: Bool?
    
    public var isPrimary: Bool?
    
    public var isDefault: Bool?
    
    public var isShortlink: Bool?
    
    public var id: String?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case verified = "verified"
        
        case isPrimary = "is_primary"
        
        case isDefault = "is_default"
        
        case isShortlink = "is_shortlink"
        
        case id = "_id"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        verified = try? container.decode(Bool.self, forKey: .verified)
        
        isPrimary = try? container.decode(Bool.self, forKey: .isPrimary)
        
        isDefault = try? container.decode(Bool.self, forKey: .isDefault)
        
        isShortlink = try? container.decode(Bool.self, forKey: .isShortlink)
        
        id = try? container.decode(String.self, forKey: .id)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(verified, forKey: .verified)
        
        try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)
        
        try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        
        try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: Application,
    Service: Configuration
*/

public struct Application: Codable {
    
    public var website: [String: Any]?
    
    public var cors: [String: Any]?
    
    public var auth: [String: Any]?
    
    public var description: String?
    
    public var channelType: String?
    
    public var cacheTtl: Int?
    
    public var internal: Bool?
    
    public var isActive: Bool?
    
    public var id: String?
    
    public var name: String?
    
    public var owner: String?
    
    public var companyId: Int?
    
    public var token: String?
    
    public var redirections: [[String: Any]]?
    
    public var meta: [[String: Any]]?
    
    public var createdAt: String?
    
    public var updatedAt: String?
    
    public var v: Int?
    
    public var banner: [String: Any]?
    
    public var logo: [String: Any]?
    
    public var favicon: [String: Any]?
    
    public var domains: [Domain]?
    
    public var appType: String?
    
    public var mobileLogo: [String: Any]?
    
    public var domain: Domain?
    
    public var id: String?
    

    enum CodingKeys: String, CodingKey {
        
        case website = "website"
        
        case cors = "cors"
        
        case auth = "auth"
        
        case description = "description"
        
        case channelType = "channel_type"
        
        case cacheTtl = "cache_ttl"
        
        case internal = "internal"
        
        case isActive = "is_active"
        
        case id = "_id"
        
        case name = "name"
        
        case owner = "owner"
        
        case companyId = "company_id"
        
        case token = "token"
        
        case redirections = "redirections"
        
        case meta = "meta"
        
        case createdAt = "createdAt"
        
        case updatedAt = "updatedAt"
        
        case v = "__v"
        
        case banner = "banner"
        
        case logo = "logo"
        
        case favicon = "favicon"
        
        case domains = "domains"
        
        case appType = "app_type"
        
        case mobileLogo = "mobileLogo"
        
        case domain = "domain"
        
        case id = "id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        website = try? container.decode([String: Any].self, forKey: .website)
        
        cors = try? container.decode([String: Any].self, forKey: .cors)
        
        auth = try? container.decode([String: Any].self, forKey: .auth)
        
        description = try? container.decode(String.self, forKey: .description)
        
        channelType = try? container.decode(String.self, forKey: .channelType)
        
        cacheTtl = try? container.decode(Int.self, forKey: .cacheTtl)
        
        internal = try? container.decode(Bool.self, forKey: .internal)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        id = try? container.decode(String.self, forKey: .id)
        
        name = try? container.decode(String.self, forKey: .name)
        
        owner = try? container.decode(String.self, forKey: .owner)
        
        companyId = try? container.decode(Int.self, forKey: .companyId)
        
        token = try? container.decode(String.self, forKey: .token)
        
        redirections = try? container.decode([[String: Any]].self, forKey: .redirections)
        
        meta = try? container.decode([[String: Any]].self, forKey: .meta)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        v = try? container.decode(Int.self, forKey: .v)
        
        banner = try? container.decode([String: Any].self, forKey: .banner)
        
        logo = try? container.decode([String: Any].self, forKey: .logo)
        
        favicon = try? container.decode([String: Any].self, forKey: .favicon)
        
        domains = try? container.decode([Domain].self, forKey: .domains)
        
        appType = try? container.decode(String.self, forKey: .appType)
        
        mobileLogo = try? container.decode([String: Any].self, forKey: .mobileLogo)
        
        domain = try? container.decode(Domain.self, forKey: .domain)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(website, forKey: .website)
        
        try? container.encodeIfPresent(cors, forKey: .cors)
        
        try? container.encodeIfPresent(auth, forKey: .auth)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(channelType, forKey: .channelType)
        
        try? container.encodeIfPresent(cacheTtl, forKey: .cacheTtl)
        
        try? container.encodeIfPresent(internal, forKey: .internal)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(owner, forKey: .owner)
        
        try? container.encodeIfPresent(companyId, forKey: .companyId)
        
        try? container.encodeIfPresent(token, forKey: .token)
        
        try? container.encodeIfPresent(redirections, forKey: .redirections)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        
        try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        
        try? container.encodeIfPresent(v, forKey: .v)
        
        try? container.encodeIfPresent(banner, forKey: .banner)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(favicon, forKey: .favicon)
        
        try? container.encodeIfPresent(domains, forKey: .domains)
        
        try? container.encodeIfPresent(appType, forKey: .appType)
        
        try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)
        
        try? container.encodeIfPresent(domain, forKey: .domain)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
    }
}

/*
    Model: NotFound,
    Service: Configuration
*/

public struct NotFound: Codable {
    
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
    Model: App,
    Service: Configuration
*/

public struct App: Codable {
    
    public var companyId: String?
    
    public var channelType: String?
    
    public var auth: [String: Any]?
    
    public var name: String?
    
    public var desc: String?
    

    enum CodingKeys: String, CodingKey {
        
        case companyId = "company_id"
        
        case channelType = "channel_type"
        
        case auth = "auth"
        
        case name = "name"
        
        case desc = "desc"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        companyId = try? container.decode(String.self, forKey: .companyId)
        
        channelType = try? container.decode(String.self, forKey: .channelType)
        
        auth = try? container.decode([String: Any].self, forKey: .auth)
        
        name = try? container.decode(String.self, forKey: .name)
        
        desc = try? container.decode(String.self, forKey: .desc)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(companyId, forKey: .companyId)
        
        try? container.encodeIfPresent(channelType, forKey: .channelType)
        
        try? container.encodeIfPresent(auth, forKey: .auth)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(desc, forKey: .desc)
        
    }
}

/*
    Model: AppInventory,
    Service: Configuration
*/

public struct AppInventory: Codable {
    
    public var brand: [String: Any]?
    
    public var store: [String: Any]?
    
    public var image: [String]?
    
    public var franchiseEnabled: Bool?
    
    public var outOfStock: Bool?
    
    public var payment: [String: Any]?
    
    public var articleAssignment: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case brand = "brand"
        
        case store = "store"
        
        case image = "image"
        
        case franchiseEnabled = "franchise_enabled"
        
        case outOfStock = "out_of_stock"
        
        case payment = "payment"
        
        case articleAssignment = "article_assignment"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        brand = try? container.decode([String: Any].self, forKey: .brand)
        
        store = try? container.decode([String: Any].self, forKey: .store)
        
        image = try? container.decode([String].self, forKey: .image)
        
        franchiseEnabled = try? container.decode(Bool.self, forKey: .franchiseEnabled)
        
        outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
        
        payment = try? container.decode([String: Any].self, forKey: .payment)
        
        articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
        try? container.encodeIfPresent(image, forKey: .image)
        
        try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
        
        try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
        
        try? container.encodeIfPresent(payment, forKey: .payment)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
    }
}

/*
    Model: AppDomain,
    Service: Configuration
*/

public struct AppDomain: Codable {
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: CreateApplicationRequest,
    Service: Configuration
*/

public struct CreateApplicationRequest: Codable {
    
    public var app: App?
    
    public var configuration: AppInventory?
    
    public var domain: AppDomain?
    

    enum CodingKeys: String, CodingKey {
        
        case app = "app"
        
        case configuration = "configuration"
        
        case domain = "domain"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        app = try? container.decode(App.self, forKey: .app)
        
        configuration = try? container.decode(AppInventory.self, forKey: .configuration)
        
        domain = try? container.decode(AppDomain.self, forKey: .domain)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(app, forKey: .app)
        
        try? container.encodeIfPresent(configuration, forKey: .configuration)
        
        try? container.encodeIfPresent(domain, forKey: .domain)
        
    }
}

/*
    Model: OtherSellerApplication,
    Service: Configuration
*/

public struct OtherSellerApplication: Codable {
    
    public var name: String?
    
    public var description: String?
    
    public var id: String?
    
    public var domain: String?
    
    public var company: [String: Any]?
    
    public var optType: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case description = "description"
        
        case id = "_id"
        
        case domain = "domain"
        
        case company = "company"
        
        case optType = "opt_type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        description = try? container.decode(String.self, forKey: .description)
        
        id = try? container.decode(String.self, forKey: .id)
        
        domain = try? container.decode(String.self, forKey: .domain)
        
        company = try? container.decode([String: Any].self, forKey: .company)
        
        optType = try? container.decode(String.self, forKey: .optType)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(domain, forKey: .domain)
        
        try? container.encodeIfPresent(company, forKey: .company)
        
        try? container.encodeIfPresent(optType, forKey: .optType)
        
    }
}



/*
    Model: AggregatorConfigDetail,
    Service: Payment
*/

public struct AggregatorConfigDetail: Codable {
    
    public var userId: String?
    
    public var sdk: Bool?
    
    public var verifyApi: String?
    
    public var secret: String
    
    public var merchantKey: String?
    
    public var configType: String
    
    public var pin: String?
    
    public var key: String
    
    public var api: String?
    
    public var merchantId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case userId = "user_id"
        
        case sdk = "sdk"
        
        case verifyApi = "verify_api"
        
        case secret = "secret"
        
        case merchantKey = "merchant_key"
        
        case configType = "config_type"
        
        case pin = "pin"
        
        case key = "key"
        
        case api = "api"
        
        case merchantId = "merchant_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        sdk = try? container.decode(Bool.self, forKey: .sdk)
        
        verifyApi = try? container.decode(String.self, forKey: .verifyApi)
        
        secret = try container.decode(String.self, forKey: .secret)
        
        merchantKey = try? container.decode(String.self, forKey: .merchantKey)
        
        configType = try container.decode(String.self, forKey: .configType)
        
        pin = try? container.decode(String.self, forKey: .pin)
        
        key = try container.decode(String.self, forKey: .key)
        
        api = try? container.decode(String.self, forKey: .api)
        
        merchantId = try? container.decode(String.self, forKey: .merchantId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(userId, forKey: .userId)
        
        try? container.encodeIfPresent(sdk, forKey: .sdk)
        
        try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
        
        try? container.encodeIfPresent(secret, forKey: .secret)
        
        try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
        
        try? container.encodeIfPresent(configType, forKey: .configType)
        
        try? container.encodeIfPresent(pin, forKey: .pin)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(api, forKey: .api)
        
        try? container.encodeIfPresent(merchantId, forKey: .merchantId)
        
    }
}

/*
    Model: AggregatorsConfigDetailResponse,
    Service: Payment
*/

public struct AggregatorsConfigDetailResponse: Codable {
    
    public var success: Bool
    
    public var simpl: AggregatorConfigDetail?
    
    public var razorpay: AggregatorConfigDetail?
    
    public var payumoney: AggregatorConfigDetail?
    
    public var rupifi: AggregatorConfigDetail?
    
    public var stripe: AggregatorConfigDetail?
    
    public var juspay: AggregatorConfigDetail?
    
    public var env: String
    
    public var ccavenue: AggregatorConfigDetail?
    
    public var mswipe: AggregatorConfigDetail?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case simpl = "simpl"
        
        case razorpay = "razorpay"
        
        case payumoney = "payumoney"
        
        case rupifi = "rupifi"
        
        case stripe = "stripe"
        
        case juspay = "juspay"
        
        case env = "env"
        
        case ccavenue = "ccavenue"
        
        case mswipe = "mswipe"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try container.decode(Bool.self, forKey: .success)
        
        simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
        
        razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
        
        payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
        
        rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
        
        stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
        
        juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
        
        env = try container.decode(String.self, forKey: .env)
        
        ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
        
        mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(simpl, forKey: .simpl)
        
        try? container.encodeIfPresent(razorpay, forKey: .razorpay)
        
        try? container.encodeIfPresent(payumoney, forKey: .payumoney)
        
        try? container.encodeIfPresent(rupifi, forKey: .rupifi)
        
        try? container.encodeIfPresent(stripe, forKey: .stripe)
        
        try? container.encodeIfPresent(juspay, forKey: .juspay)
        
        try? container.encodeIfPresent(env, forKey: .env)
        
        try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
        
        try? container.encodeIfPresent(mswipe, forKey: .mswipe)
        
    }
}

/*
    Model: ErrorCodeAndDescription,
    Service: Payment
*/

public struct ErrorCodeAndDescription: Codable {
    
    public var description: String
    
    public var code: String
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try container.decode(String.self, forKey: .description)
        
        code = try container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: HttpErrorCodeAndResponse,
    Service: Payment
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
    Service: Payment
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
    Service: Payment
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
    Service: Payment
*/

public struct CardPaymentGateway: Codable {
    
    public var aggregator: String
    
    public var customerId: String?
    
    public var api: String?
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case customerId = "customer_id"
        
        case api = "api"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try container.decode(String.self, forKey: .aggregator)
        
        customerId = try? container.decode(String.self, forKey: .customerId)
        
        api = try? container.decode(String.self, forKey: .api)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(customerId, forKey: .customerId)
        
        try? container.encodeIfPresent(api, forKey: .api)
        
    }
}

/*
    Model: ActiveCardPaymentGatewayResponse,
    Service: Payment
*/

public struct ActiveCardPaymentGatewayResponse: Codable {
    
    public var message: String
    
    public var success: Bool
    
    public var cards: CardPaymentGateway
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case success = "success"
        
        case cards = "cards"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try container.decode(String.self, forKey: .message)
        
        success = try container.decode(Bool.self, forKey: .success)
        
        cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(cards, forKey: .cards)
        
    }
}

/*
    Model: ListCardsResponse,
    Service: Payment
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
    Service: Payment
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
    Service: Payment
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
    Service: Payment
*/

public struct ValidateCustomerRequest: Codable {
    
    public var aggregator: String
    
    public var phoneNumber: String
    
    public var transactionAmountInPaise: Int
    
    public var payload: String
    
    public var merchantParams: [String: Any]
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case phoneNumber = "phone_number"
        
        case transactionAmountInPaise = "transaction_amount_in_paise"
        
        case payload = "payload"
        
        case merchantParams = "merchant_params"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try container.decode(String.self, forKey: .aggregator)
        
        phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
        
        transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
        
        payload = try container.decode(String.self, forKey: .payload)
        
        merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        
        try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
        
        try? container.encodeIfPresent(payload, forKey: .payload)
        
        try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
        
    }
}

/*
    Model: ValidateCustomerResponse,
    Service: Payment
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
    Service: Payment
*/

public struct ChargeCustomerRequest: Codable {
    
    public var aggregator: String
    
    public var verified: Bool?
    
    public var transactionToken: String?
    
    public var orderId: String
    
    public var amount: Int
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case verified = "verified"
        
        case transactionToken = "transaction_token"
        
        case orderId = "order_id"
        
        case amount = "amount"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try container.decode(String.self, forKey: .aggregator)
        
        verified = try? container.decode(Bool.self, forKey: .verified)
        
        transactionToken = try? container.decode(String.self, forKey: .transactionToken)
        
        orderId = try container.decode(String.self, forKey: .orderId)
        
        amount = try container.decode(Int.self, forKey: .amount)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(verified, forKey: .verified)
        
        try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(amount, forKey: .amount)
        
    }
}

/*
    Model: ChargeCustomerResponse,
    Service: Payment
*/

public struct ChargeCustomerResponse: Codable {
    
    public var aggregator: String
    
    public var success: Bool
    
    public var status: String
    
    public var deliveryAddressId: String?
    
    public var cartId: String?
    
    public var message: String
    
    public var orderId: String
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case success = "success"
        
        case status = "status"
        
        case deliveryAddressId = "delivery_address_id"
        
        case cartId = "cart_id"
        
        case message = "message"
        
        case orderId = "order_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try container.decode(String.self, forKey: .aggregator)
        
        success = try container.decode(Bool.self, forKey: .success)
        
        status = try container.decode(String.self, forKey: .status)
        
        deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
        
        cartId = try? container.decode(String.self, forKey: .cartId)
        
        message = try container.decode(String.self, forKey: .message)
        
        orderId = try container.decode(String.self, forKey: .orderId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(status, forKey: .status)
        
        try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
    }
}

/*
    Model: PaymentInitializationRequest,
    Service: Payment
*/

public struct PaymentInitializationRequest: Codable {
    
    public var aggregator: String
    
    public var merchantOrderId: String
    
    public var razorpayPaymentId: String
    
    public var timeout: Int
    
    public var customerId: String
    
    public var virtualId: String?
    
    public var method: String
    
    public var pollingUrl: String
    
    public var aggregatorOrderId: String
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case merchantOrderId = "merchant_order_id"
        
        case razorpayPaymentId = "razorpay_payment_id"
        
        case timeout = "timeout"
        
        case customerId = "customer_id"
        
        case virtualId = "virtual_id"
        
        case method = "method"
        
        case pollingUrl = "polling_url"
        
        case aggregatorOrderId = "aggregator_order_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try container.decode(String.self, forKey: .aggregator)
        
        merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        
        razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
        
        timeout = try container.decode(Int.self, forKey: .timeout)
        
        customerId = try container.decode(String.self, forKey: .customerId)
        
        virtualId = try? container.decode(String.self, forKey: .virtualId)
        
        method = try container.decode(String.self, forKey: .method)
        
        pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
        
        aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        
        try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
        
        try? container.encodeIfPresent(timeout, forKey: .timeout)
        
        try? container.encodeIfPresent(customerId, forKey: .customerId)
        
        try? container.encodeIfPresent(virtualId, forKey: .virtualId)
        
        try? container.encodeIfPresent(method, forKey: .method)
        
        try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
        
        try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        
    }
}

/*
    Model: PaymentInitializationResponse,
    Service: Payment
*/

public struct PaymentInitializationResponse: Codable {
    
    public var aggregator: String
    
    public var merchantOrderId: String
    
    public var success: Bool
    
    public var status: String
    
    public var currency: String
    
    public var vpa: String
    
    public var contact: String
    
    public var email: String
    
    public var customerId: String
    
    public var method: String
    
    public var message: String?
    
    public var orderId: String
    
    public var amount: Int
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case merchantOrderId = "merchant_order_id"
        
        case success = "success"
        
        case status = "status"
        
        case currency = "currency"
        
        case vpa = "vpa"
        
        case contact = "contact"
        
        case email = "email"
        
        case customerId = "customer_id"
        
        case method = "method"
        
        case message = "message"
        
        case orderId = "order_id"
        
        case amount = "amount"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try container.decode(String.self, forKey: .aggregator)
        
        merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        
        success = try container.decode(Bool.self, forKey: .success)
        
        status = try container.decode(String.self, forKey: .status)
        
        currency = try container.decode(String.self, forKey: .currency)
        
        vpa = try container.decode(String.self, forKey: .vpa)
        
        contact = try container.decode(String.self, forKey: .contact)
        
        email = try container.decode(String.self, forKey: .email)
        
        customerId = try container.decode(String.self, forKey: .customerId)
        
        method = try container.decode(String.self, forKey: .method)
        
        message = try? container.decode(String.self, forKey: .message)
        
        orderId = try container.decode(String.self, forKey: .orderId)
        
        amount = try container.decode(Int.self, forKey: .amount)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(status, forKey: .status)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(vpa, forKey: .vpa)
        
        try? container.encodeIfPresent(contact, forKey: .contact)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(customerId, forKey: .customerId)
        
        try? container.encodeIfPresent(method, forKey: .method)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(amount, forKey: .amount)
        
    }
}

/*
    Model: PaymentStatusUpdateRequest,
    Service: Payment
*/

public struct PaymentStatusUpdateRequest: Codable {
    
    public var aggregator: String
    
    public var merchantOrderId: String
    
    public var status: String
    
    public var currency: String
    
    public var vpa: String
    
    public var contact: String
    
    public var email: String
    
    public var customerId: String
    
    public var method: String
    
    public var orderId: String
    
    public var amount: Int
    

    enum CodingKeys: String, CodingKey {
        
        case aggregator = "aggregator"
        
        case merchantOrderId = "merchant_order_id"
        
        case status = "status"
        
        case currency = "currency"
        
        case vpa = "vpa"
        
        case contact = "contact"
        
        case email = "email"
        
        case customerId = "customer_id"
        
        case method = "method"
        
        case orderId = "order_id"
        
        case amount = "amount"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregator = try container.decode(String.self, forKey: .aggregator)
        
        merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        
        status = try container.decode(String.self, forKey: .status)
        
        currency = try container.decode(String.self, forKey: .currency)
        
        vpa = try container.decode(String.self, forKey: .vpa)
        
        contact = try container.decode(String.self, forKey: .contact)
        
        email = try container.decode(String.self, forKey: .email)
        
        customerId = try container.decode(String.self, forKey: .customerId)
        
        method = try container.decode(String.self, forKey: .method)
        
        orderId = try container.decode(String.self, forKey: .orderId)
        
        amount = try container.decode(Int.self, forKey: .amount)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        
        try? container.encodeIfPresent(status, forKey: .status)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(vpa, forKey: .vpa)
        
        try? container.encodeIfPresent(contact, forKey: .contact)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(customerId, forKey: .customerId)
        
        try? container.encodeIfPresent(method, forKey: .method)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(amount, forKey: .amount)
        
    }
}

/*
    Model: PaymentStatusUpdateResponse,
    Service: Payment
*/

public struct PaymentStatusUpdateResponse: Codable {
    
    public var retry: Bool
    
    public var status: String
    
    public var aggregatorName: String
    

    enum CodingKeys: String, CodingKey {
        
        case retry = "retry"
        
        case status = "status"
        
        case aggregatorName = "aggregator_name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        retry = try container.decode(Bool.self, forKey: .retry)
        
        status = try container.decode(String.self, forKey: .status)
        
        aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(retry, forKey: .retry)
        
        try? container.encodeIfPresent(status, forKey: .status)
        
        try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        
    }
}

/*
    Model: OrderBeneficiaryDetails,
    Service: Payment
*/

public struct OrderBeneficiaryDetails: Codable {
    
    public var transferMode: String
    
    public var email: String
    
    public var createdOn: String
    
    public var displayName: String
    
    public var delightsUserName: String
    
    public var comment: Bool?
    
    public var branchName: Bool?
    
    public var ifscCode: String
    
    public var address: String
    
    public var subtitle: String
    
    public var mobile: Bool?
    
    public var bankName: String
    
    public var accountHolder: String
    
    public var accountNo: String
    
    public var id: Int
    
    public var beneficiaryId: String
    
    public var title: String
    
    public var isActive: Bool
    
    public var modifiedOn: String
    

    enum CodingKeys: String, CodingKey {
        
        case transferMode = "transfer_mode"
        
        case email = "email"
        
        case createdOn = "created_on"
        
        case displayName = "display_name"
        
        case delightsUserName = "delights_user_name"
        
        case comment = "comment"
        
        case branchName = "branch_name"
        
        case ifscCode = "ifsc_code"
        
        case address = "address"
        
        case subtitle = "subtitle"
        
        case mobile = "mobile"
        
        case bankName = "bank_name"
        
        case accountHolder = "account_holder"
        
        case accountNo = "account_no"
        
        case id = "id"
        
        case beneficiaryId = "beneficiary_id"
        
        case title = "title"
        
        case isActive = "is_active"
        
        case modifiedOn = "modified_on"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        transferMode = try container.decode(String.self, forKey: .transferMode)
        
        email = try container.decode(String.self, forKey: .email)
        
        createdOn = try container.decode(String.self, forKey: .createdOn)
        
        displayName = try container.decode(String.self, forKey: .displayName)
        
        delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
        
        comment = try? container.decode(Bool.self, forKey: .comment)
        
        branchName = try? container.decode(Bool.self, forKey: .branchName)
        
        ifscCode = try container.decode(String.self, forKey: .ifscCode)
        
        address = try container.decode(String.self, forKey: .address)
        
        subtitle = try container.decode(String.self, forKey: .subtitle)
        
        mobile = try? container.decode(Bool.self, forKey: .mobile)
        
        bankName = try container.decode(String.self, forKey: .bankName)
        
        accountHolder = try container.decode(String.self, forKey: .accountHolder)
        
        accountNo = try container.decode(String.self, forKey: .accountNo)
        
        id = try container.decode(Int.self, forKey: .id)
        
        beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
        
        title = try container.decode(String.self, forKey: .title)
        
        isActive = try container.decode(Bool.self, forKey: .isActive)
        
        modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        
        try? container.encodeIfPresent(displayName, forKey: .displayName)
        
        try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
        
        try? container.encodeIfPresent(comment, forKey: .comment)
        
        try? container.encodeIfPresent(branchName, forKey: .branchName)
        
        try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
        try? container.encodeIfPresent(mobile, forKey: .mobile)
        
        try? container.encodeIfPresent(bankName, forKey: .bankName)
        
        try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        
        try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        
    }
}

/*
    Model: OrderBeneficiaryResponse,
    Service: Payment
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
    Service: Payment
*/

public struct NotFoundResourceError: Codable {
    
    public var success: Bool
    
    public var description: String
    
    public var code: String
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case description = "description"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try container.decode(Bool.self, forKey: .success)
        
        description = try container.decode(String.self, forKey: .description)
        
        code = try container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: IfscCodeResponse,
    Service: Payment
*/

public struct IfscCodeResponse: Codable {
    
    public var branchName: String
    
    public var bankName: String
    
    public var success: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case branchName = "branch_name"
        
        case bankName = "bank_name"
        
        case success = "success"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        branchName = try container.decode(String.self, forKey: .branchName)
        
        bankName = try container.decode(String.self, forKey: .bankName)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(branchName, forKey: .branchName)
        
        try? container.encodeIfPresent(bankName, forKey: .bankName)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
    }
}

/*
    Model: ErrorCodeDescription,
    Service: Payment
*/

public struct ErrorCodeDescription: Codable {
    
    public var success: Bool
    
    public var description: String
    
    public var code: String
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case description = "description"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try container.decode(Bool.self, forKey: .success)
        
        description = try container.decode(String.self, forKey: .description)
        
        code = try container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: AddBeneficiaryViaOtpVerificationRequest,
    Service: Payment
*/

public struct AddBeneficiaryViaOtpVerificationRequest: Codable {
    
    public var otp: String
    
    public var requestId: String
    
    public var hashKey: String
    

    enum CodingKeys: String, CodingKey {
        
        case otp = "otp"
        
        case requestId = "request_id"
        
        case hashKey = "hash_key"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        otp = try container.decode(String.self, forKey: .otp)
        
        requestId = try container.decode(String.self, forKey: .requestId)
        
        hashKey = try container.decode(String.self, forKey: .hashKey)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(otp, forKey: .otp)
        
        try? container.encodeIfPresent(requestId, forKey: .requestId)
        
        try? container.encodeIfPresent(hashKey, forKey: .hashKey)
        
    }
}

/*
    Model: AddBeneficiaryViaOtpVerificationResponse,
    Service: Payment
*/

public struct AddBeneficiaryViaOtpVerificationResponse: Codable {
    
    public var otp: String
    
    public var requestId: String
    
    public var hashKey: String
    

    enum CodingKeys: String, CodingKey {
        
        case otp = "otp"
        
        case requestId = "request_id"
        
        case hashKey = "hash_key"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        otp = try container.decode(String.self, forKey: .otp)
        
        requestId = try container.decode(String.self, forKey: .requestId)
        
        hashKey = try container.decode(String.self, forKey: .hashKey)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(otp, forKey: .otp)
        
        try? container.encodeIfPresent(requestId, forKey: .requestId)
        
        try? container.encodeIfPresent(hashKey, forKey: .hashKey)
        
    }
}

/*
    Model: WrongOtpError,
    Service: Payment
*/

public struct WrongOtpError: Codable {
    
    public var success: String
    
    public var description: String
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case description = "description"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try container.decode(String.self, forKey: .success)
        
        description = try container.decode(String.self, forKey: .description)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
    }
}

/*
    Model: BankDetails,
    Service: Payment
*/

public struct BankDetails: Codable {
    
    public var mobile: String
    
    public var bankName: String
    
    public var email: String
    
    public var accountHolder: String
    
    public var accountNo: String
    
    public var comment: String?
    
    public var branchName: String
    
    public var ifscCode: String
    
    public var address: String
    

    enum CodingKeys: String, CodingKey {
        
        case mobile = "mobile"
        
        case bankName = "bank_name"
        
        case email = "email"
        
        case accountHolder = "account_holder"
        
        case accountNo = "account_no"
        
        case comment = "comment"
        
        case branchName = "branch_name"
        
        case ifscCode = "ifsc_code"
        
        case address = "address"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        mobile = try container.decode(String.self, forKey: .mobile)
        
        bankName = try container.decode(String.self, forKey: .bankName)
        
        email = try container.decode(String.self, forKey: .email)
        
        accountHolder = try container.decode(String.self, forKey: .accountHolder)
        
        accountNo = try container.decode(String.self, forKey: .accountNo)
        
        comment = try? container.decode(String.self, forKey: .comment)
        
        branchName = try container.decode(String.self, forKey: .branchName)
        
        ifscCode = try container.decode(String.self, forKey: .ifscCode)
        
        address = try container.decode(String.self, forKey: .address)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(mobile, forKey: .mobile)
        
        try? container.encodeIfPresent(bankName, forKey: .bankName)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        
        try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        
        try? container.encodeIfPresent(comment, forKey: .comment)
        
        try? container.encodeIfPresent(branchName, forKey: .branchName)
        
        try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
    }
}

/*
    Model: AddBeneficiaryDetailsRequest,
    Service: Payment
*/

public struct AddBeneficiaryDetailsRequest: Codable {
    
    public var transferMode: String
    
    public var delights: Bool
    
    public var details: BankDetails
    
    public var shipmentId: String
    
    public var orderId: String
    

    enum CodingKeys: String, CodingKey {
        
        case transferMode = "transfer_mode"
        
        case delights = "delights"
        
        case details = "details"
        
        case shipmentId = "shipment_id"
        
        case orderId = "order_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        transferMode = try container.decode(String.self, forKey: .transferMode)
        
        delights = try container.decode(Bool.self, forKey: .delights)
        
        details = try container.decode(BankDetails.self, forKey: .details)
        
        shipmentId = try container.decode(String.self, forKey: .shipmentId)
        
        orderId = try container.decode(String.self, forKey: .orderId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        
        try? container.encodeIfPresent(delights, forKey: .delights)
        
        try? container.encodeIfPresent(details, forKey: .details)
        
        try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
    }
}

/*
    Model: WalletOtpRequest,
    Service: Payment
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
    Service: Payment
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
    Service: Payment
*/

public struct SetDefaultBeneficiaryRequest: Codable {
    
    public var orderId: String
    
    public var beneficiaryId: String
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: SetDefaultBeneficiaryResponse,
    Service: Payment
*/

public struct SetDefaultBeneficiaryResponse: Codable {
    
    public var success: Bool?
    
    public var isBeneficiarySet: Bool
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case isBeneficiarySet = "is_beneficiary_set"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
        
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
    Model: Action,
    Service: Rewards
*/

public struct Action: Codable {
    
    public var page: [String: Any]?
    
    public var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode([String: Any].self, forKey: .page)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
    }
}

/*
    Model: Article,
    Service: Rewards
*/

public struct Article: Codable {
    
    public var id: String?
    
    public var points: Double?
    
    public var price: Double?
    

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
    Model: Asset,
    Service: Rewards
*/

public struct Asset: Codable {
    
    public var aspectRatio: String?
    
    public var id: String?
    
    public var secureUrl: String?
    

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
    Model: CatalogueOrderRequest,
    Service: Rewards
*/

public struct CatalogueOrderRequest: Codable {
    
    public var articles: [Article]?
    

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
    Model: CatalogueOrderResponse,
    Service: Rewards
*/

public struct CatalogueOrderResponse: Codable {
    
    public var articles: [Article]?
    

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
    Model: CursorPage,
    Service: Rewards
*/

public struct CursorPage: Codable {
    
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
    Model: Discount,
    Service: Rewards
*/

public struct Discount: Codable {
    
    public var absolute: Double?
    
    public var currency: String?
    
    public var displayAbsolute: String?
    
    public var displayPercent: String?
    
    public var percent: Double?
    

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
    Model: Error,
    Service: Rewards
*/

public struct Error: Codable {
    
    public var code: Int?
    
    public var exception: String?
    
    public var info: String?
    
    public var message: String?
    

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
    Model: Offer,
    Service: Rewards
*/

public struct Offer: Codable {
    
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
    Model: OrderDiscountRequest,
    Service: Rewards
*/

public struct OrderDiscountRequest: Codable {
    
    public var currency: String?
    
    public var orderAmount: Double
    

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
    Model: OrderDiscountResponse,
    Service: Rewards
*/

public struct OrderDiscountResponse: Codable {
    
    public var appliedRuleBucket: OrderDiscountRuleBucket?
    
    public var baseDiscount: Discount?
    
    public var discount: Discount?
    
    public var orderAmount: Double?
    
    public var points: Double?
    

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
    Model: OrderDiscountRuleBucket,
    Service: Rewards
*/

public struct OrderDiscountRuleBucket: Codable {
    
    public var high: Double?
    
    public var low: Double?
    
    public var max: Double?
    
    public var value: Double?
    
    public var valueType: String?
    

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
    Model: PointsHistory,
    Service: Rewards
*/

public struct PointsHistory: Codable {
    
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
    Model: PointsHistoryResponse,
    Service: Rewards
*/

public struct PointsHistoryResponse: Codable {
    
    public var history: [PointsHistory]?
    
    public var page: CursorPage?
    

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
    Model: PointsResponse,
    Service: Rewards
*/

public struct PointsResponse: Codable {
    
    public var points: Double?
    

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
    Model: RedeemReferralCodeRequest,
    Service: Rewards
*/

public struct RedeemReferralCodeRequest: Codable {
    
    public var deviceId: String
    
    public var referralCode: String
    

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
    Model: RedeemReferralCodeResponse,
    Service: Rewards
*/

public struct RedeemReferralCodeResponse: Codable {
    
    public var message: String?
    
    public var points: Double?
    
    public var redeemed: Bool?
    
    public var referrerId: String?
    
    public var referrerInfo: String?
    

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
    Model: ReferralDetailsResponse,
    Service: Rewards
*/

public struct ReferralDetailsResponse: Codable {
    
    public var referral: Offer?
    
    public var referrerInfo: String?
    
    public var share: ShareMessages?
    
    public var user: [String: Any]?
    

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
    Model: ShareMessages,
    Service: Rewards
*/

public struct ShareMessages: Codable {
    
    public var default: String?
    
    public var email: String?
    
    public var facebook: String?
    
    public var fallback: String?
    
    public var message: String?
    
    public var messenger: String?
    
    public var sms: String?
    
    public var twitter: String?
    
    public var whatsapp: String?
    

    enum CodingKeys: String, CodingKey {
        
        case default = "default"
        
        case email = "email"
        
        case facebook = "facebook"
        
        case fallback = "fallback"
        
        case message = "message"
        
        case messenger = "messenger"
        
        case sms = "sms"
        
        case twitter = "twitter"
        
        case whatsapp = "whatsapp"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        default = try? container.decode(String.self, forKey: .default)
        
        email = try? container.decode(String.self, forKey: .email)
        
        facebook = try? container.decode(String.self, forKey: .facebook)
        
        fallback = try? container.decode(String.self, forKey: .fallback)
        
        message = try? container.decode(String.self, forKey: .message)
        
        messenger = try? container.decode(String.self, forKey: .messenger)
        
        sms = try? container.decode(String.self, forKey: .sms)
        
        twitter = try? container.decode(String.self, forKey: .twitter)
        
        whatsapp = try? container.decode(String.self, forKey: .whatsapp)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(default, forKey: .default)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(facebook, forKey: .facebook)
        
        try? container.encodeIfPresent(fallback, forKey: .fallback)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(messenger, forKey: .messenger)
        
        try? container.encodeIfPresent(sms, forKey: .sms)
        
        try? container.encodeIfPresent(twitter, forKey: .twitter)
        
        try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
        
    }
}



/*
    Model: Access,
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Model: ErrorResponse,
    Service: Feedback
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
    Model: MediaCloud,
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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
    Service: Feedback
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



/*
    Model: GetCartResponse,
    Service: PosCart
*/

public struct GetCartResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var restrictCheckout: Bool?
    
    public var couponDetails: String?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var lastModified: String?
    
    public var breakupValuesAnalytics: String?
    
    public var codAvailable: Bool?
    
    public var breakupValues: [String: Any]?
    
    public var gstin: String?
    
    public var couponText: String?
    
    public var items: [[String: Any]]?
    
    public var creditDetails: String?
    
    public var checkoutMode: String?
    
    public var cartId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case restrictCheckout = "restrict_checkout"
        
        case couponDetails = "coupon_details"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case lastModified = "last_modified"
        
        case breakupValuesAnalytics = "breakup_values_analytics"
        
        case codAvailable = "cod_available"
        
        case breakupValues = "breakup_values"
        
        case gstin = "gstin"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case creditDetails = "credit_details"
        
        case checkoutMode = "checkout_mode"
        
        case cartId = "cart_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        couponDetails = try? container.decode(String.self, forKey: .couponDetails)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        breakupValuesAnalytics = try? container.decode(String.self, forKey: .breakupValuesAnalytics)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        breakupValues = try? container.decode([String: Any].self, forKey: .breakupValues)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([[String: Any]].self, forKey: .items)
        
        creditDetails = try? container.decode(String.self, forKey: .creditDetails)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(couponDetails, forKey: .couponDetails)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(breakupValuesAnalytics, forKey: .breakupValuesAnalytics)
        
        try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(creditDetails, forKey: .creditDetails)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
    }
}

/*
    Model: AddProductCart,
    Service: PosCart
*/

public struct AddProductCart: Codable {
    
    public var pos: Bool?
    
    public var articleId: String?
    
    public var storeId: Int?
    
    public var itemId: Int?
    
    public var sellerId: Int?
    
    public var quantity: Int?
    
    public var display: String?
    
    public var itemSize: Int?
    
    public var articleAssignment: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case pos = "pos"
        
        case articleId = "article_id"
        
        case storeId = "store_id"
        
        case itemId = "item_id"
        
        case sellerId = "seller_id"
        
        case quantity = "quantity"
        
        case display = "display"
        
        case itemSize = "item_size"
        
        case articleAssignment = "article_assignment"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pos = try? container.decode(Bool.self, forKey: .pos)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        storeId = try? container.decode(Int.self, forKey: .storeId)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        sellerId = try? container.decode(Int.self, forKey: .sellerId)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        display = try? container.decode(String.self, forKey: .display)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
        articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pos, forKey: .pos)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(storeId, forKey: .storeId)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(sellerId, forKey: .sellerId)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
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
    Model: PaymentFlow,
    Service: PosCart
*/

public struct PaymentFlow: Codable {
    
    public var data: [String: Any]?
    
    public var apiLink: String?
    
    public var paymentFlow: String?
    

    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
        case apiLink = "api_link"
        
        case paymentFlow = "payment_flow"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
        apiLink = try? container.decode(String.self, forKey: .apiLink)
        
        paymentFlow = try? container.decode(String.self, forKey: .paymentFlow)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(data, forKey: .data)
        
        try? container.encodeIfPresent(apiLink, forKey: .apiLink)
        
        try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
        
    }
}

/*
    Model: PaymentFlows,
    Service: PosCart
*/

public struct PaymentFlows: Codable {
    
    public var fynd: PaymentFlow?
    
    public var juspay: PaymentFlow?
    
    public var simpl: PaymentFlow?
    
    public var upiRazorpay: PaymentFlow?
    
    public var razorpay: PaymentFlow?
    

    enum CodingKeys: String, CodingKey {
        
        case fynd = "Fynd"
        
        case juspay = "Juspay"
        
        case simpl = "Simpl"
        
        case upiRazorpay = "UPI_Razorpay"
        
        case razorpay = "Razorpay"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
        
        juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
        
        simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
        
        upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
        
        razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(fynd, forKey: .fynd)
        
        try? container.encodeIfPresent(juspay, forKey: .juspay)
        
        try? container.encodeIfPresent(simpl, forKey: .simpl)
        
        try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
        
        try? container.encodeIfPresent(razorpay, forKey: .razorpay)
        
    }
}

/*
    Model: PaymentOption,
    Service: PosCart
*/

public struct PaymentOption: Codable {
    
    public var displayName: String?
    
    public var paymentModeId: Int?
    
    public var list: [[String: Any]]?
    
    public var displayPriority: Int?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case displayName = "display_name"
        
        case paymentModeId = "payment_mode_id"
        
        case list = "list"
        
        case displayPriority = "display_priority"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        displayName = try? container.decode(String.self, forKey: .displayName)
        
        paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
        
        list = try? container.decode([[String: Any]].self, forKey: .list)
        
        displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(displayName, forKey: .displayName)
        
        try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
        
        try? container.encodeIfPresent(list, forKey: .list)
        
        try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: PaymentOptions,
    Service: PosCart
*/

public struct PaymentOptions: Codable {
    
    public var paymentFlows: PaymentFlows?
    
    public var default: [String: Any]?
    
    public var paymentOption: [PaymentOption]?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentFlows = "payment_flows"
        
        case default = "default"
        
        case paymentOption = "payment_option"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentFlows = try? container.decode(PaymentFlows.self, forKey: .paymentFlows)
        
        default = try? container.decode([String: Any].self, forKey: .default)
        
        paymentOption = try? container.decode([PaymentOption].self, forKey: .paymentOption)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
        
        try? container.encodeIfPresent(default, forKey: .default)
        
        try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
        
    }
}

/*
    Model: CartCurrency,
    Service: PosCart
*/

public struct CartCurrency: Codable {
    
    public var symbol: String?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case symbol = "symbol"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        symbol = try? container.decode(String.self, forKey: .symbol)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(symbol, forKey: .symbol)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: BaseLoyaltyPoints,
    Service: PosCart
*/

public struct BaseLoyaltyPoints: Codable {
    
    public var isApplied: Bool?
    
    public var description: String?
    
    public var total: Double?
    
    public var applicable: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isApplied = "is_applied"
        
        case description = "description"
        
        case total = "total"
        
        case applicable = "applicable"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        applicable = try? container.decode(Int.self, forKey: .applicable)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(applicable, forKey: .applicable)
        
    }
}

/*
    Model: CouponBreakup,
    Service: PosCart
*/

public struct CouponBreakup: Codable {
    
    public var message: String?
    
    public var type: String?
    
    public var isApplied: Bool?
    
    public var uid: Int?
    
    public var value: Int?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case type = "type"
        
        case isApplied = "is_applied"
        
        case uid = "uid"
        
        case value = "value"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        type = try? container.decode(String.self, forKey: .type)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: RawBreakup,
    Service: PosCart
*/

public struct RawBreakup: Codable {
    
    public var youSaved: Int?
    
    public var coupon: Int?
    
    public var subtotal: Int?
    
    public var codCharge: Int?
    
    public var fyndCash: Int?
    
    public var deliveryCharge: Int?
    
    public var total: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case youSaved = "you_saved"
        
        case coupon = "coupon"
        
        case subtotal = "subtotal"
        
        case codCharge = "cod_charge"
        
        case fyndCash = "fynd_cash"
        
        case deliveryCharge = "delivery_charge"
        
        case total = "total"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        youSaved = try? container.decode(Int.self, forKey: .youSaved)
        
        coupon = try? container.decode(Int.self, forKey: .coupon)
        
        subtotal = try? container.decode(Int.self, forKey: .subtotal)
        
        codCharge = try? container.decode(Int.self, forKey: .codCharge)
        
        fyndCash = try? container.decode(Int.self, forKey: .fyndCash)
        
        deliveryCharge = try? container.decode(Int.self, forKey: .deliveryCharge)
        
        total = try? container.decode(Int.self, forKey: .total)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(youSaved, forKey: .youSaved)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(subtotal, forKey: .subtotal)
        
        try? container.encodeIfPresent(codCharge, forKey: .codCharge)
        
        try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
        
        try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
    }
}

/*
    Model: DisplayBreakup,
    Service: PosCart
*/

public struct DisplayBreakup: Codable {
    
    public var key: String?
    
    public var currencySymbol: String?
    
    public var currencyCode: String?
    
    public var value: Int?
    
    public var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
        case value = "value"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: BaseCartBreakup,
    Service: PosCart
*/

public struct BaseCartBreakup: Codable {
    
    public var loyaltyPoints: BaseLoyaltyPoints?
    
    public var coupon: CouponBreakup?
    
    public var raw: RawBreakup?
    
    public var display: DisplayBreakup?
    

    enum CodingKeys: String, CodingKey {
        
        case loyaltyPoints = "loyalty_points"
        
        case coupon = "coupon"
        
        case raw = "raw"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        loyaltyPoints = try? container.decode(BaseLoyaltyPoints.self, forKey: .loyaltyPoints)
        
        coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
        
        raw = try? container.decode(RawBreakup.self, forKey: .raw)
        
        display = try? container.decode(DisplayBreakup.self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(raw, forKey: .raw)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
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
    
    public var type: String?
    
    public var query: ActionQuery?
    
    public var url: String?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case query = "query"
        
        case url = "url"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        query = try? container.decode(ActionQuery.self, forKey: .query)
        
        url = try? container.decode(String.self, forKey: .url)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(url, forKey: .url)
        
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
    Model: Image,
    Service: PosCart
*/

public struct Image: Codable {
    
    public var secureUrl: String?
    
    public var aspectRatio: String?
    
    public var url: String?
    

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
    Model: Product,
    Service: PosCart
*/

public struct Product: Codable {
    
    public var action: Action?
    
    public var type: String?
    
    public var brand: BaseInfo?
    
    public var slug: String?
    
    public var uid: Int?
    
    public var categories: [CategoryInfo]?
    
    public var images: [Image]?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case action = "action"
        
        case type = "type"
        
        case brand = "brand"
        
        case slug = "slug"
        
        case uid = "uid"
        
        case categories = "categories"
        
        case images = "images"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(Action.self, forKey: .action)
        
        type = try? container.decode(String.self, forKey: .type)
        
        brand = try? container.decode(BaseInfo.self, forKey: .brand)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        categories = try? container.decode([CategoryInfo].self, forKey: .categories)
        
        images = try? container.decode([Image].self, forKey: .images)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(images, forKey: .images)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: ProductPrice,
    Service: PosCart
*/

public struct ProductPrice: Codable {
    
    public var effective: Double?
    
    public var addOn: Double?
    
    public var currencySymbol: String?
    
    public var currencyCode: String?
    
    public var selling: Double?
    
    public var marked: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case addOn = "add_on"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
        case selling = "selling"
        
        case marked = "marked"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
        addOn = try? container.decode(Double.self, forKey: .addOn)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        selling = try? container.decode(Double.self, forKey: .selling)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
        try? container.encodeIfPresent(addOn, forKey: .addOn)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(selling, forKey: .selling)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
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
    
    public var isValid: Bool?
    
    public var sizes: [String]?
    
    public var deliverable: Bool?
    
    public var outOfStock: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case otherStoreQuantity = "other_store_quantity"
        
        case isValid = "is_valid"
        
        case sizes = "sizes"
        
        case deliverable = "deliverable"
        
        case outOfStock = "out_of_stock"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        sizes = try? container.decode([String].self, forKey: .sizes)
        
        deliverable = try? container.decode(Bool.self, forKey: .deliverable)
        
        outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(sizes, forKey: .sizes)
        
        try? container.encodeIfPresent(deliverable, forKey: .deliverable)
        
        try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
        
    }
}

/*
    Model: CartProductInfo,
    Service: PosCart
*/

public struct CartProductInfo: Codable {
    
    public var key: String?
    
    public var product: Product?
    
    public var message: String?
    
    public var couponMessage: String?
    
    public var discount: String?
    
    public var bulkOffer: String?
    
    public var article: String?
    
    public var quantity: Int?
    
    public var price: ProductPriceInfo?
    
    public var availability: ProductAvailability?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case product = "product"
        
        case message = "message"
        
        case couponMessage = "coupon_message"
        
        case discount = "discount"
        
        case bulkOffer = "bulk_offer"
        
        case article = "article"
        
        case quantity = "quantity"
        
        case price = "price"
        
        case availability = "availability"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        product = try? container.decode(Product.self, forKey: .product)
        
        message = try? container.decode(String.self, forKey: .message)
        
        couponMessage = try? container.decode(String.self, forKey: .couponMessage)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
        
        article = try? container.decode(String.self, forKey: .article)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        price = try? container.decode(ProductPriceInfo.self, forKey: .price)
        
        availability = try? container.decode(ProductAvailability.self, forKey: .availability)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(product, forKey: .product)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
        
        try? container.encodeIfPresent(article, forKey: .article)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(availability, forKey: .availability)
        
    }
}

/*
    Model: CartResponse,
    Service: PosCart
*/

public struct CartResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var restrictCheckout: Bool?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var lastModified: String?
    
    public var currency: CartCurrency?
    
    public var breakupValues: BaseCartBreakup?
    
    public var gstin: String?
    
    public var couponText: String?
    
    public var items: [CartProductInfo]?
    
    public var uid: String?
    
    public var checkoutMode: String?
    
    public var cartId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case restrictCheckout = "restrict_checkout"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case breakupValues = "breakup_values"
        
        case gstin = "gstin"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case uid = "uid"
        
        case checkoutMode = "checkout_mode"
        
        case cartId = "cart_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
    }
}

/*
    Model: UpdateProductCart,
    Service: PosCart
*/

public struct UpdateProductCart: Codable {
    
    public var itemIndex: Int?
    
    public var articleId: String?
    
    public var itemId: Int?
    
    public var quantity: Int?
    
    public var itemSize: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case itemIndex = "item_index"
        
        case articleId = "article_id"
        
        case itemId = "item_id"
        
        case quantity = "quantity"
        
        case itemSize = "item_size"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        
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
    Model: PageCoupon,
    Service: PosCart
*/

public struct PageCoupon: Codable {
    
    public var hasNext: Bool?
    
    public var current: Int?
    
    public var hasPrevious: Bool?
    
    public var totalItemCount: Int?
    
    public var total: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case hasNext = "has_next"
        
        case current = "current"
        
        case hasPrevious = "has_previous"
        
        case totalItemCount = "total_item_count"
        
        case total = "total"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
        
        total = try? container.decode(Int.self, forKey: .total)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        
        try? container.encodeIfPresent(current, forKey: .current)
        
        try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        
        try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
    }
}

/*
    Model: Coupon,
    Service: PosCart
*/

public struct Coupon: Codable {
    
    public var maxDiscountValue: Double?
    
    public var expiresOn: String?
    
    public var message: String?
    
    public var couponCode: String?
    
    public var title: String?
    
    public var isApplied: Bool?
    
    public var minimumCartValue: Double?
    
    public var couponValue: Double?
    
    public var uid: Int?
    
    public var isApplicable: Bool?
    
    public var subTitle: String?
    

    enum CodingKeys: String, CodingKey {
        
        case maxDiscountValue = "max_discount_value"
        
        case expiresOn = "expires_on"
        
        case message = "message"
        
        case couponCode = "coupon_code"
        
        case title = "title"
        
        case isApplied = "is_applied"
        
        case minimumCartValue = "minimum_cart_value"
        
        case couponValue = "coupon_value"
        
        case uid = "uid"
        
        case isApplicable = "is_applicable"
        
        case subTitle = "sub_title"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
        
        expiresOn = try? container.decode(String.self, forKey: .expiresOn)
        
        message = try? container.decode(String.self, forKey: .message)
        
        couponCode = try? container.decode(String.self, forKey: .couponCode)
        
        title = try? container.decode(String.self, forKey: .title)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
        
        couponValue = try? container.decode(Double.self, forKey: .couponValue)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
        
        subTitle = try? container.decode(String.self, forKey: .subTitle)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
        
        try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(couponCode, forKey: .couponCode)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
        
        try? container.encodeIfPresent(couponValue, forKey: .couponValue)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
        
        try? container.encodeIfPresent(subTitle, forKey: .subTitle)
        
    }
}

/*
    Model: GetCouponResponse,
    Service: PosCart
*/

public struct GetCouponResponse: Codable {
    
    public var page: PageCoupon?
    
    public var availableCouponList: [Coupon]?
    

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
    Model: LoyaltyPoints,
    Service: PosCart
*/

public struct LoyaltyPoints: Codable {
    
    public var isApplied: Bool?
    
    public var description: String?
    
    public var total: Int?
    
    public var applicable: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isApplied = "is_applied"
        
        case description = "description"
        
        case total = "total"
        
        case applicable = "applicable"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        applicable = try? container.decode(String.self, forKey: .applicable)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(applicable, forKey: .applicable)
        
    }
}

/*
    Model: CartCoupon,
    Service: PosCart
*/

public struct CartCoupon: Codable {
    
    public var message: String?
    
    public var type: String?
    
    public var isApplied: Bool?
    
    public var uid: Int?
    
    public var value: Int?
    
    public var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case type = "type"
        
        case isApplied = "is_applied"
        
        case uid = "uid"
        
        case value = "value"
        
        case code = "code"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        type = try? container.decode(String.self, forKey: .type)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(isApplied, forKey: .isApplied)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
    }
}

/*
    Model: RawCartCoupon,
    Service: PosCart
*/

public struct RawCartCoupon: Codable {
    
    public var discount: Double?
    
    public var vog: Double?
    
    public var youSaved: Double?
    
    public var coupon: Double?
    
    public var subtotal: Double?
    
    public var convenienceFee: Double?
    
    public var mrpTotal: Double?
    
    public var gstCharges: Double?
    
    public var codCharge: Double?
    
    public var fyndCash: Double?
    
    public var deliveryCharge: Double?
    
    public var total: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case discount = "discount"
        
        case vog = "vog"
        
        case youSaved = "you_saved"
        
        case coupon = "coupon"
        
        case subtotal = "subtotal"
        
        case convenienceFee = "convenience_fee"
        
        case mrpTotal = "mrp_total"
        
        case gstCharges = "gst_charges"
        
        case codCharge = "cod_charge"
        
        case fyndCash = "fynd_cash"
        
        case deliveryCharge = "delivery_charge"
        
        case total = "total"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        discount = try? container.decode(Double.self, forKey: .discount)
        
        vog = try? container.decode(Double.self, forKey: .vog)
        
        youSaved = try? container.decode(Double.self, forKey: .youSaved)
        
        coupon = try? container.decode(Double.self, forKey: .coupon)
        
        subtotal = try? container.decode(Double.self, forKey: .subtotal)
        
        convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
        
        mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
        
        gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
        
        codCharge = try? container.decode(Double.self, forKey: .codCharge)
        
        fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
        
        deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
        
        total = try? container.decode(Double.self, forKey: .total)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(vog, forKey: .vog)
        
        try? container.encodeIfPresent(youSaved, forKey: .youSaved)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(subtotal, forKey: .subtotal)
        
        try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
        
        try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
        
        try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
        
        try? container.encodeIfPresent(codCharge, forKey: .codCharge)
        
        try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
        
        try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
    }
}

/*
    Model: SaveCoupon,
    Service: PosCart
*/

public struct SaveCoupon: Codable {
    
    public var loyaltyPoints: LoyaltyPoints?
    
    public var coupon: CartCoupon?
    
    public var raw: RawCartCoupon?
    
    public var display: [String]?
    

    enum CodingKeys: String, CodingKey {
        
        case loyaltyPoints = "loyalty_points"
        
        case coupon = "coupon"
        
        case raw = "raw"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
        
        coupon = try? container.decode(CartCoupon.self, forKey: .coupon)
        
        raw = try? container.decode(RawCartCoupon.self, forKey: .raw)
        
        display = try? container.decode([String].self, forKey: .display)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
        
        try? container.encodeIfPresent(coupon, forKey: .coupon)
        
        try? container.encodeIfPresent(raw, forKey: .raw)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: SaveCouponResponse,
    Service: PosCart
*/

public struct SaveCouponResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var restrictCheckout: Bool?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var lastModified: String?
    
    public var breakupValues: SaveCoupon?
    
    public var gstin: String?
    
    public var couponText: String?
    
    public var items: [String]?
    
    public var uid: Int?
    
    public var checkoutMode: String?
    
    public var cartId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case restrictCheckout = "restrict_checkout"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case lastModified = "last_modified"
        
        case breakupValues = "breakup_values"
        
        case gstin = "gstin"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case uid = "uid"
        
        case checkoutMode = "checkout_mode"
        
        case cartId = "cart_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([String].self, forKey: .items)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
    }
}

/*
    Model: OfferPrice,
    Service: PosCart
*/

public struct OfferPrice: Codable {
    
    public var effective: Int?
    
    public var currencySymbol: String?
    
    public var bulkEffective: Double?
    
    public var currencyCode: String?
    
    public var marked: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case currencySymbol = "currency_symbol"
        
        case bulkEffective = "bulk_effective"
        
        case currencyCode = "currency_code"
        
        case marked = "marked"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Int.self, forKey: .effective)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        marked = try? container.decode(Int.self, forKey: .marked)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
    }
}

/*
    Model: OfferItem,
    Service: PosCart
*/

public struct OfferItem: Codable {
    
    public var type: String?
    
    public var best: Bool?
    
    public var autoApplied: Bool?
    
    public var total: Double?
    
    public var quantity: Int?
    
    public var price: OfferPrice?
    
    public var margin: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case best = "best"
        
        case autoApplied = "auto_applied"
        
        case total = "total"
        
        case quantity = "quantity"
        
        case price = "price"
        
        case margin = "margin"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        best = try? container.decode(Bool.self, forKey: .best)
        
        autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        price = try? container.decode(OfferPrice.self, forKey: .price)
        
        margin = try? container.decode(Int.self, forKey: .margin)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(best, forKey: .best)
        
        try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
        
        try? container.encodeIfPresent(total, forKey: .total)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
        try? container.encodeIfPresent(margin, forKey: .margin)
        
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
    Model: BulkPriceOffer,
    Service: PosCart
*/

public struct BulkPriceOffer: Codable {
    
    public var offers: [OfferItem]?
    
    public var seller: OfferSeller?
    

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
    Model: Address,
    Service: PosCart
*/

public struct Address: Codable {
    
    public var isDefaultAddress: Bool?
    
    public var isActive: Bool?
    
    public var landmark: String?
    
    public var city: String?
    
    public var userId: String?
    
    public var uid: Int?
    
    public var countryCode: String?
    
    public var email: String?
    
    public var geoLocation: [String: Any]?
    
    public var areaCodeSlug: String?
    
    public var addressType: String?
    
    public var country: String?
    
    public var addressId: Int?
    
    public var areaCode: String?
    
    public var name: String?
    
    public var phone: Int?
    
    public var meta: [String: Any]?
    
    public var state: String?
    
    public var area: String?
    
    public var address: String?
    
    public var checkoutMode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isDefaultAddress = "is_default_address"
        
        case isActive = "is_active"
        
        case landmark = "landmark"
        
        case city = "city"
        
        case userId = "user_id"
        
        case uid = "uid"
        
        case countryCode = "country_code"
        
        case email = "email"
        
        case geoLocation = "geo_location"
        
        case areaCodeSlug = "area_code_slug"
        
        case addressType = "address_type"
        
        case country = "country"
        
        case addressId = "address_id"
        
        case areaCode = "area_code"
        
        case name = "name"
        
        case phone = "phone"
        
        case meta = "meta"
        
        case state = "state"
        
        case area = "area"
        
        case address = "address"
        
        case checkoutMode = "checkout_mode"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        city = try? container.decode(String.self, forKey: .city)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        countryCode = try? container.decode(String.self, forKey: .countryCode)
        
        email = try? container.decode(String.self, forKey: .email)
        
        geoLocation = try? container.decode([String: Any].self, forKey: .geoLocation)
        
        areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        country = try? container.decode(String.self, forKey: .country)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        areaCode = try? container.decode(String.self, forKey: .areaCode)
        
        name = try? container.decode(String.self, forKey: .name)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        state = try? container.decode(String.self, forKey: .state)
        
        area = try? container.decode(String.self, forKey: .area)
        
        address = try? container.decode(String.self, forKey: .address)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(userId, forKey: .userId)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
        
        try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(country, forKey: .country)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(areaCode, forKey: .areaCode)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(state, forKey: .state)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
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
    
    public var isDefaultAddress: Bool?
    
    public var phone: Int?
    
    public var addressType: String?
    
    public var landmark: String?
    
    public var area: String?
    
    public var email: String?
    
    public var address: String?
    
    public var name: String?
    
    public var pincode: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isDefaultAddress = "is_default_address"
        
        case phone = "phone"
        
        case addressType = "address_type"
        
        case landmark = "landmark"
        
        case area = "area"
        
        case email = "email"
        
        case address = "address"
        
        case name = "name"
        
        case pincode = "pincode"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        area = try? container.decode(String.self, forKey: .area)
        
        email = try? container.decode(String.self, forKey: .email)
        
        address = try? container.decode(String.self, forKey: .address)
        
        name = try? container.decode(String.self, forKey: .name)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
    }
}

/*
    Model: SaveAddressResponse,
    Service: PosCart
*/

public struct SaveAddressResponse: Codable {
    
    public var isDefaultAddress: Bool?
    
    public var addressId: Int?
    
    public var success: String?
    

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
    Model: UpdateAddressRequest,
    Service: PosCart
*/

public struct UpdateAddressRequest: Codable {
    
    public var isDefaultAddress: Bool?
    
    public var phone: Int?
    
    public var addressType: String?
    
    public var landmark: String?
    
    public var area: String?
    
    public var email: String?
    
    public var address: String?
    
    public var name: String?
    
    public var pincode: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isDefaultAddress = "is_default_address"
        
        case phone = "phone"
        
        case addressType = "address_type"
        
        case landmark = "landmark"
        
        case area = "area"
        
        case email = "email"
        
        case address = "address"
        
        case name = "name"
        
        case pincode = "pincode"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        area = try? container.decode(String.self, forKey: .area)
        
        email = try? container.decode(String.self, forKey: .email)
        
        address = try? container.decode(String.self, forKey: .address)
        
        name = try? container.decode(String.self, forKey: .name)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        
        try? container.encodeIfPresent(phone, forKey: .phone)
        
        try? container.encodeIfPresent(addressType, forKey: .addressType)
        
        try? container.encodeIfPresent(landmark, forKey: .landmark)
        
        try? container.encodeIfPresent(area, forKey: .area)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
    }
}

/*
    Model: UpdateAddressResponse,
    Service: PosCart
*/

public struct UpdateAddressResponse: Codable {
    
    public var isDefaultAddress: Bool?
    
    public var addressId: Int?
    
    public var isUpdated: Bool?
    
    public var success: Bool?
    

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
    
    public var addressId: String?
    
    public var uid: String?
    
    public var billingAddressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case uid = "uid"
        
        case billingAddressId = "billing_address_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(String.self, forKey: .addressId)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        
    }
}

/*
    Model: UpdateCartPaymentRequest,
    Service: PosCart
*/

public struct UpdateCartPaymentRequest: Codable {
    
    public var paymentMode: String?
    
    public var aggregatorName: String?
    
    public var merchantCode: String?
    
    public var paymentIdentifier: String?
    
    public var addressId: Int?
    
    public var uid: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentMode = "payment_mode"
        
        case aggregatorName = "aggregator_name"
        
        case merchantCode = "merchant_code"
        
        case paymentIdentifier = "payment_identifier"
        
        case addressId = "address_id"
        
        case uid = "uid"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentMode = try? container.decode(String.self, forKey: .paymentMode)
        
        aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        
        try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        
        try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        
        try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
    }
}

/*
    Model: ShipmentResponse,
    Service: PosCart
*/

public struct ShipmentResponse: Codable {
    
    public var dpOptions: [String: Any]?
    
    public var fulfillmentType: String?
    
    public var boxType: String?
    
    public var promise: String?
    
    public var shipmentType: String?
    
    public var shipments: Int?
    
    public var items: [CartProductInfo]?
    
    public var fulfillmentId: Int?
    
    public var dpId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case dpOptions = "dp_options"
        
        case fulfillmentType = "fulfillment_type"
        
        case boxType = "box_type"
        
        case promise = "promise"
        
        case shipmentType = "shipment_type"
        
        case shipments = "shipments"
        
        case items = "items"
        
        case fulfillmentId = "fulfillment_id"
        
        case dpId = "dp_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
        
        fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
        
        boxType = try? container.decode(String.self, forKey: .boxType)
        
        promise = try? container.decode(String.self, forKey: .promise)
        
        shipmentType = try? container.decode(String.self, forKey: .shipmentType)
        
        shipments = try? container.decode(Int.self, forKey: .shipments)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
        
        dpId = try? container.decode(Int.self, forKey: .dpId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
        
        try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
        
        try? container.encodeIfPresent(boxType, forKey: .boxType)
        
        try? container.encodeIfPresent(promise, forKey: .promise)
        
        try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
        
        try? container.encodeIfPresent(shipments, forKey: .shipments)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        
        try? container.encodeIfPresent(dpId, forKey: .dpId)
        
    }
}

/*
    Model: CartShipmentsResponse,
    Service: PosCart
*/

public struct CartShipmentsResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var restrictCheckout: Bool?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var lastModified: String?
    
    public var currency: CartCurrency?
    
    public var breakupValues: BaseCartBreakup?
    
    public var gstin: String?
    
    public var couponText: String?
    
    public var uid: String?
    
    public var shipments: [ShipmentResponse]?
    
    public var checkoutMode: String?
    
    public var cartId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case restrictCheckout = "restrict_checkout"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case breakupValues = "breakup_values"
        
        case gstin = "gstin"
        
        case couponText = "coupon_text"
        
        case uid = "uid"
        
        case shipments = "shipments"
        
        case checkoutMode = "checkout_mode"
        
        case cartId = "cart_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(shipments, forKey: .shipments)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
    }
}

/*
    Model: CartCheckoutRequest,
    Service: PosCart
*/

public struct CartCheckoutRequest: Codable {
    
    public var paymentMode: String
    
    public var staff: [String: Any]?
    
    public var paymentAutoConfirm: Bool?
    
    public var billingAddressId: Int?
    
    public var aggregator: String?
    
    public var billingAddress: [String: Any]?
    
    public var meta: [String: Any]?
    
    public var fyndstoreEmpId: String?
    
    public var merchantCode: String?
    
    public var paymentIdentifier: String?
    
    public var paymentParams: [String: Any]?
    
    public var addressId: Int?
    
    public var extraMeta: [String: Any]?
    
    public var orderingStore: Int?
    
    public var callbackUrl: String?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentMode = "payment_mode"
        
        case staff = "staff"
        
        case paymentAutoConfirm = "payment_auto_confirm"
        
        case billingAddressId = "billing_address_id"
        
        case aggregator = "aggregator"
        
        case billingAddress = "billing_address"
        
        case meta = "meta"
        
        case fyndstoreEmpId = "fyndstore_emp_id"
        
        case merchantCode = "merchant_code"
        
        case paymentIdentifier = "payment_identifier"
        
        case paymentParams = "payment_params"
        
        case addressId = "address_id"
        
        case extraMeta = "extra_meta"
        
        case orderingStore = "ordering_store"
        
        case callbackUrl = "callback_url"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentMode = try container.decode(String.self, forKey: .paymentMode)
        
        staff = try? container.decode([String: Any].self, forKey: .staff)
        
        paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
        billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        
        try? container.encodeIfPresent(staff, forKey: .staff)
        
        try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
        
        try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        
        try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        
        try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
        
        try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        
        try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        
        try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
        
        try? container.encodeIfPresent(addressId, forKey: .addressId)
        
        try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        
        try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        
        try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        
    }
}

/*
    Model: DeliverySlot,
    Service: PosCart
*/

public struct DeliverySlot: Codable {
    
    public var deliverySlotTiming: String?
    
    public var default: Bool?
    
    public var deliverySlotId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliverySlotTiming = "delivery_slot_timing"
        
        case default = "default"
        
        case deliverySlotId = "delivery_slot_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliverySlotTiming = try? container.decode(String.self, forKey: .deliverySlotTiming)
        
        default = try? container.decode(Bool.self, forKey: .default)
        
        deliverySlotId = try? container.decode(Int.self, forKey: .deliverySlotId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliverySlotTiming, forKey: .deliverySlotTiming)
        
        try? container.encodeIfPresent(default, forKey: .default)
        
        try? container.encodeIfPresent(deliverySlotId, forKey: .deliverySlotId)
        
    }
}

/*
    Model: DeliverySlotDate,
    Service: PosCart
*/

public struct DeliverySlotDate: Codable {
    
    public var date: String?
    
    public var deliverySlot: [DeliverySlot]?
    

    enum CodingKeys: String, CodingKey {
        
        case date = "date"
        
        case deliverySlot = "delivery_slot"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        date = try? container.decode(String.self, forKey: .date)
        
        deliverySlot = try? container.decode([DeliverySlot].self, forKey: .deliverySlot)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(date, forKey: .date)
        
        try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
        
    }
}

/*
    Model: CheckCart,
    Service: PosCart
*/

public struct CheckCart: Codable {
    
    public var codCharges: Int?
    
    public var codAvailable: Bool?
    
    public var deliveryChargeOrderValue: Int?
    
    public var breakupValues: BaseCartBreakup?
    
    public var couponText: String?
    
    public var items: [CartProductInfo]?
    
    public var uid: String?
    
    public var deliverySlots: [DeliverySlotDate]?
    
    public var errorMessage: String?
    
    public var cartId: Int?
    
    public var deliveryChargeInfo: String?
    
    public var lastModified: String?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var currency: CartCurrency?
    
    public var orderId: String?
    
    public var success: Bool?
    
    public var gstin: String?
    
    public var restrictCheckout: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var codMessage: String?
    
    public var storeCode: String?
    
    public var storeEmps: [[String: Any]]?
    
    public var userType: String?
    
    public var deliveryCharges: Int?
    
    public var checkoutMode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case codCharges = "cod_charges"
        
        case codAvailable = "cod_available"
        
        case deliveryChargeOrderValue = "delivery_charge_order_value"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case uid = "uid"
        
        case deliverySlots = "delivery_slots"
        
        case errorMessage = "error_message"
        
        case cartId = "cart_id"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case lastModified = "last_modified"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case currency = "currency"
        
        case orderId = "order_id"
        
        case success = "success"
        
        case gstin = "gstin"
        
        case restrictCheckout = "restrict_checkout"
        
        case paymentOptions = "payment_options"
        
        case codMessage = "cod_message"
        
        case storeCode = "store_code"
        
        case storeEmps = "store_emps"
        
        case userType = "user_type"
        
        case deliveryCharges = "delivery_charges"
        
        case checkoutMode = "checkout_mode"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        codCharges = try? container.decode(Int.self, forKey: .codCharges)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        deliverySlots = try? container.decode([DeliverySlotDate].self, forKey: .deliverySlots)
        
        errorMessage = try? container.decode(String.self, forKey: .errorMessage)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        codMessage = try? container.decode(String.self, forKey: .codMessage)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
        
        userType = try? container.decode(String.self, forKey: .userType)
        
        deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        
        try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
        
        try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
        
        try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(codMessage, forKey: .codMessage)
        
        try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        
        try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
        
        try? container.encodeIfPresent(userType, forKey: .userType)
        
        try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
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
    
    public var message: String?
    
    public var cart: CheckCart?
    
    public var orderId: String?
    
    public var success: Bool?
    
    public var data: OrderData?
    
    public var callbackUrl: String?
    

    enum CodingKeys: String, CodingKey {
        
        case appInterceptUrl = "app_intercept_url"
        
        case message = "message"
        
        case cart = "cart"
        
        case orderId = "order_id"
        
        case success = "success"
        
        case data = "data"
        
        case callbackUrl = "callback_url"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
        
        message = try? container.decode(String.self, forKey: .message)
        
        cart = try? container.decode(CheckCart.self, forKey: .cart)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        data = try? container.decode(OrderData.self, forKey: .data)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(cart, forKey: .cart)
        
        try? container.encodeIfPresent(orderId, forKey: .orderId)
        
        try? container.encodeIfPresent(success, forKey: .success)
        
        try? container.encodeIfPresent(data, forKey: .data)
        
        try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
        
    }
}

/*
    Model: Meta,
    Service: PosCart
*/

public struct Meta: Codable {
    
    public var orderingStore: Int?
    
    public var selectedStaff: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderingStore = "ordering_store"
        
        case selectedStaff = "selected_staff"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        selectedStaff = try? container.decode(String.self, forKey: .selectedStaff)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        
        try? container.encodeIfPresent(selectedStaff, forKey: .selectedStaff)
        
    }
}

/*
    Model: SharedCartDetails,
    Service: PosCart
*/

public struct SharedCartDetails: Codable {
    
    public var createdOn: String?
    
    public var source: [String: Any]?
    
    public var meta: Meta?
    
    public var token: String?
    
    public var user: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case createdOn = "created_on"
        
        case source = "source"
        
        case meta = "meta"
        
        case token = "token"
        
        case user = "user"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
        source = try? container.decode([String: Any].self, forKey: .source)
        
        meta = try? container.decode(Meta.self, forKey: .meta)
        
        token = try? container.decode(String.self, forKey: .token)
        
        user = try? container.decode([String: Any].self, forKey: .user)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        
        try? container.encodeIfPresent(source, forKey: .source)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(token, forKey: .token)
        
        try? container.encodeIfPresent(user, forKey: .user)
        
    }
}

/*
    Model: SharedCartResponse,
    Service: PosCart
*/

public struct SharedCartResponse: Codable {
    
    public var deliveryChargeInfo: String?
    
    public var restrictCheckout: Bool?
    
    public var message: String?
    
    public var isValid: Bool?
    
    public var paymentOptions: PaymentOptions?
    
    public var lastModified: String?
    
    public var currency: CartCurrency?
    
    public var breakupValues: BaseCartBreakup?
    
    public var gstin: String?
    
    public var couponText: String?
    
    public var items: [CartProductInfo]?
    
    public var uid: String?
    
    public var sharedCartDetails: SharedCartDetails?
    
    public var checkoutMode: String?
    
    public var cartId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case restrictCheckout = "restrict_checkout"
        
        case message = "message"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case breakupValues = "breakup_values"
        
        case gstin = "gstin"
        
        case couponText = "coupon_text"
        
        case items = "items"
        
        case uid = "uid"
        
        case sharedCartDetails = "shared_cart_details"
        
        case checkoutMode = "checkout_mode"
        
        case cartId = "cart_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        items = try? container.decode([CartProductInfo].self, forKey: .items)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        
        try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(isValid, forKey: .isValid)
        
        try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        
        try? container.encodeIfPresent(lastModified, forKey: .lastModified)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
        try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        
        try? container.encodeIfPresent(gstin, forKey: .gstin)
        
        try? container.encodeIfPresent(couponText, forKey: .couponText)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
        
        try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        
        try? container.encodeIfPresent(cartId, forKey: .cartId)
        
    }
}

