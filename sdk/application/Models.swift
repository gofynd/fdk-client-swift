

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
    
    public var uid: Int?
    
    public var action: ProductListingAction?
    
    public var logo: Media?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case action = "action"
        
        case logo = "logo"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
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
    
    public var categories: [ProductBrand]?
    
    public var slug: String?
    
    public var hasVariant: Bool?
    
    public var ratingCount: Int?
    
    public var teaserTag: [String: Any]?
    
    public var tryouts: [String]?
    
    public var productOnlineDate: String?
    
    public var attributes: [String: Any]?
    
    public var rating: Double?
    
    public var imageNature: String?
    
    public var color: String?
    
    public var itemType: String?
    
    public var similars: [String]?
    
    public var brand: ProductBrand?
    
    public var medias: [Media]?
    
    public var promoMeta: [String: Any]?
    
    public var type: String?
    
    public var name: String?
    
    public var uid: Int?
    
    public var groupedAttributes: [ProductDetailGroupedAttribute]?
    
    public var highlights: [String]?
    

    enum CodingKeys: String, CodingKey {
        
        case categories = "categories"
        
        case slug = "slug"
        
        case hasVariant = "has_variant"
        
        case ratingCount = "rating_count"
        
        case teaserTag = "teaser_tag"
        
        case tryouts = "tryouts"
        
        case productOnlineDate = "product_online_date"
        
        case attributes = "attributes"
        
        case rating = "rating"
        
        case imageNature = "image_nature"
        
        case color = "color"
        
        case itemType = "item_type"
        
        case similars = "similars"
        
        case brand = "brand"
        
        case medias = "medias"
        
        case promoMeta = "promo_meta"
        
        case type = "type"
        
        case name = "name"
        
        case uid = "uid"
        
        case groupedAttributes = "grouped_attributes"
        
        case highlights = "highlights"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        categories = try? container.decode([ProductBrand].self, forKey: .categories)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
        
        ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
        
        teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
        
        tryouts = try? container.decode([String].self, forKey: .tryouts)
        
        productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
        
        attributes = try? container.decode([String: Any].self, forKey: .attributes)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        imageNature = try? container.decode(String.self, forKey: .imageNature)
        
        color = try? container.decode(String.self, forKey: .color)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        similars = try? container.decode([String].self, forKey: .similars)
        
        brand = try? container.decode(ProductBrand.self, forKey: .brand)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        type = try? container.decode(String.self, forKey: .type)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
        
        highlights = try? container.decode([String].self, forKey: .highlights)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(categories, forKey: .categories)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
        
        try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        
        try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        
        try? container.encodeIfPresent(tryouts, forKey: .tryouts)
        
        try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
        
        try? container.encodeIfPresent(attributes, forKey: .attributes)
        
        try? container.encodeIfPresent(rating, forKey: .rating)
        
        try? container.encodeIfPresent(imageNature, forKey: .imageNature)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(similars, forKey: .similars)
        
        try? container.encodeIfPresent(brand, forKey: .brand)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
        
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
    Model: ProductSize,
    Service: Catalog
*/

public struct ProductSize: Codable {
    
    public var isAvailable: Bool?
    
    public var display: String?
    
    public var quantity: Int?
    
    public var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isAvailable = "is_available"
        
        case display = "display"
        
        case quantity = "quantity"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        display = try? container.decode(String.self, forKey: .display)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
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
    
    public var currencyCode: String?
    
    public var currencySymbol: String?
    
    public var min: Double?
    
    public var max: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case currencyCode = "currency_code"
        
        case currencySymbol = "currency_symbol"
        
        case min = "min"
        
        case max = "max"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        min = try? container.decode(Double.self, forKey: .min)
        
        max = try? container.decode(Double.self, forKey: .max)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        
        try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        
        try? container.encodeIfPresent(min, forKey: .min)
        
        try? container.encodeIfPresent(max, forKey: .max)
        
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
    
    public var sizes: [ProductSize]?
    
    public var sellable: Bool?
    
    public var promoMeta: [String: Any]?
    
    public var sizeChart: [String: Any]?
    
    public var stores: ProductSizeStores?
    
    public var discount: String?
    
    public var price: ProductListingPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case sizes = "sizes"
        
        case sellable = "sellable"
        
        case promoMeta = "promo_meta"
        
        case sizeChart = "size_chart"
        
        case stores = "stores"
        
        case discount = "discount"
        
        case price = "price"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        sizes = try? container.decode([ProductSize].self, forKey: .sizes)
        
        sellable = try? container.decode(Bool.self, forKey: .sellable)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
        
        stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        price = try? container.decode(ProductListingPrice.self, forKey: .price)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(sizes, forKey: .sizes)
        
        try? container.encodeIfPresent(sellable, forKey: .sellable)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
        
        try? container.encodeIfPresent(stores, forKey: .stores)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
    }
}

/*
    Model: Store,
    Service: Catalog
*/

public struct Store: Codable {
    
    public var uid: Int?
    
    public var count: Int?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case count = "count"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: Seller,
    Service: Catalog
*/

public struct Seller: Codable {
    
    public var uid: Int?
    
    public var count: Int?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case count = "count"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: ProductStockPrice,
    Service: Catalog
*/

public struct ProductStockPrice: Codable {
    
    public var marked: Double?
    
    public var effective: Double?
    
    public var currency: String?
    

    enum CodingKeys: String, CodingKey {
        
        case marked = "marked"
        
        case effective = "effective"
        
        case currency = "currency"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
        currency = try? container.decode(String.self, forKey: .currency)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(marked, forKey: .marked)
        
        try? container.encodeIfPresent(effective, forKey: .effective)
        
        try? container.encodeIfPresent(currency, forKey: .currency)
        
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
    Model: ProductSizePriceResponse,
    Service: Catalog
*/

public struct ProductSizePriceResponse: Codable {
    
    public var specialBadge: String?
    
    public var store: Store?
    
    public var set: [String: Any]?
    
    public var sellerCount: Int?
    
    public var seller: Seller?
    
    public var strategyWiseListing: [[String: Any]]?
    
    public var promoMeta: [String: Any]?
    
    public var pricePerPrice: ProductStockPrice?
    
    public var pincode: Int?
    
    public var articleId: String?
    
    public var quantity: Int?
    
    public var discount: String?
    
    public var itemType: String?
    
    public var articleAssignment: ArticleAssignment?
    
    public var longLat: [Double]?
    
    public var price: ProductStockPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case specialBadge = "special_badge"
        
        case store = "store"
        
        case set = "set"
        
        case sellerCount = "seller_count"
        
        case seller = "seller"
        
        case strategyWiseListing = "strategy_wise_listing"
        
        case promoMeta = "promo_meta"
        
        case pricePerPrice = "price_per_price"
        
        case pincode = "pincode"
        
        case articleId = "article_id"
        
        case quantity = "quantity"
        
        case discount = "discount"
        
        case itemType = "item_type"
        
        case articleAssignment = "article_assignment"
        
        case longLat = "long_lat"
        
        case price = "price"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        specialBadge = try? container.decode(String.self, forKey: .specialBadge)
        
        store = try? container.decode(Store.self, forKey: .store)
        
        set = try? container.decode([String: Any].self, forKey: .set)
        
        sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
        
        longLat = try? container.decode([Double].self, forKey: .longLat)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
        try? container.encodeIfPresent(set, forKey: .set)
        
        try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
        
        try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
        
        try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(articleId, forKey: .articleId)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(itemType, forKey: .itemType)
        
        try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        
        try? container.encodeIfPresent(longLat, forKey: .longLat)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
    }
}

/*
    Model: ProductPage,
    Service: Catalog
*/

public struct ProductPage: Codable {
    
    public var hasNext: Bool?
    
    public var totalItem: Int?
    
    public var nextId: String?
    
    public var hasPrevious: Bool?
    
    public var current: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case hasNext = "has_next"
        
        case totalItem = "total_item"
        
        case nextId = "next_id"
        
        case hasPrevious = "has_previous"
        
        case current = "current"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        totalItem = try? container.decode(Int.self, forKey: .totalItem)
        
        nextId = try? container.decode(String.self, forKey: .nextId)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        current = try? container.decode(Int.self, forKey: .current)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        
        try? container.encodeIfPresent(totalItem, forKey: .totalItem)
        
        try? container.encodeIfPresent(nextId, forKey: .nextId)
        
        try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        
        try? container.encodeIfPresent(current, forKey: .current)
        
    }
}

/*
    Model: ProductSizeSellerFilter,
    Service: Catalog
*/

public struct ProductSizeSellerFilter: Codable {
    
    public var value: String?
    
    public var name: String?
    
    public var isSelected: Bool?
    

    enum CodingKeys: String, CodingKey {
        
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
    
    public var subtitle: String?
    
    public var attributesMetadata: [AttributeDetail]?
    
    public var title: String?
    
    public var items: [ProductDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case subtitle = "subtitle"
        
        case attributesMetadata = "attributes_metadata"
        
        case title = "title"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
        
        title = try? container.decode(String.self, forKey: .title)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
        try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
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
    
    public var subtitle: String?
    
    public var title: String?
    
    public var items: [ProductDetail]?
    

    enum CodingKeys: String, CodingKey {
        
        case subtitle = "subtitle"
        
        case title = "title"
        
        case items = "items"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        title = try? container.decode(String.self, forKey: .title)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
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
    
    public var action: ProductListingAction?
    
    public var medias: [Media]?
    
    public var uid: Int?
    
    public var colorName: String?
    
    public var isAvailable: Bool?
    
    public var slug: String?
    
    public var color: String?
    
    public var name: String?
    
    public var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case action = "action"
        
        case medias = "medias"
        
        case uid = "uid"
        
        case colorName = "color_name"
        
        case isAvailable = "is_available"
        
        case slug = "slug"
        
        case color = "color"
        
        case name = "name"
        
        case value = "value"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        medias = try? container.decode([Media].self, forKey: .medias)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        colorName = try? container.decode(String.self, forKey: .colorName)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        color = try? container.decode(String.self, forKey: .color)
        
        name = try? container.decode(String.self, forKey: .name)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(medias, forKey: .medias)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(colorName, forKey: .colorName)
        
        try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
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
    
    public var id: Int?
    
    public var city: String?
    
    public var code: String?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case city = "city"
        
        case code = "code"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(Int.self, forKey: .id)
        
        city = try? container.decode(String.self, forKey: .city)
        
        code = try? container.decode(String.self, forKey: .code)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: CompanyDetail,
    Service: Catalog
*/

public struct CompanyDetail: Codable {
    
    public var id: Int?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(Int.self, forKey: .id)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(id, forKey: .id)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
    }
}

/*
    Model: ProductStockStatusItem,
    Service: Catalog
*/

public struct ProductStockStatusItem: Codable {
    
    public var store: StoreDetail?
    
    public var identifier: [String: Any]?
    
    public var uid: String?
    
    public var company: CompanyDetail?
    
    public var size: String?
    
    public var quantity: Int?
    
    public var itemId: Int?
    
    public var seller: Seller?
    
    public var price: ProductStockPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case store = "store"
        
        case identifier = "identifier"
        
        case uid = "uid"
        
        case company = "company"
        
        case size = "size"
        
        case quantity = "quantity"
        
        case itemId = "item_id"
        
        case seller = "seller"
        
        case price = "price"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        store = try? container.decode(StoreDetail.self, forKey: .store)
        
        identifier = try? container.decode([String: Any].self, forKey: .identifier)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        company = try? container.decode(CompanyDetail.self, forKey: .company)
        
        size = try? container.decode(String.self, forKey: .size)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(store, forKey: .store)
        
        try? container.encodeIfPresent(identifier, forKey: .identifier)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(company, forKey: .company)
        
        try? container.encodeIfPresent(size, forKey: .size)
        
        try? container.encodeIfPresent(quantity, forKey: .quantity)
        
        try? container.encodeIfPresent(itemId, forKey: .itemId)
        
        try? container.encodeIfPresent(seller, forKey: .seller)
        
        try? container.encodeIfPresent(price, forKey: .price)
        
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
    Model: ProductFiltersValue,
    Service: Catalog
*/

public struct ProductFiltersValue: Codable {
    
    public var display: String
    
    public var count: Int?
    
    public var isSelected: Bool
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case count = "count"
        
        case isSelected = "is_selected"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try container.decode(String.self, forKey: .display)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        isSelected = try container.decode(Bool.self, forKey: .isSelected)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(count, forKey: .count)
        
        try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        
    }
}

/*
    Model: ProductFiltersKey,
    Service: Catalog
*/

public struct ProductFiltersKey: Codable {
    
    public var display: String
    
    public var name: String
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try container.decode(String.self, forKey: .display)
        
        name = try container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
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
    
    public var value: String?
    
    public var name: String?
    
    public var isSelected: Bool?
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: ProductListingResponse,
    Service: Catalog
*/

public struct ProductListingResponse: Codable {
    
    public var items: [ProductDetail]?
    
    public var filter: [ProductFilters]?
    
    public var sortOn: [ProductSortOn]?
    
    public var page: ProductPage?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case filter = "filter"
        
        case sortOn = "sort_on"
        
        case page = "page"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
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
    
    public var action: ProductListingAction?
    
    public var departments: [String]?
    
    public var uid: Int?
    
    public var banners: ImageUrls?
    
    public var slug: String?
    
    public var logo: Media?
    
    public var discount: String?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case action = "action"
        
        case departments = "departments"
        
        case uid = "uid"
        
        case banners = "banners"
        
        case slug = "slug"
        
        case logo = "logo"
        
        case discount = "discount"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        departments = try? container.decode([String].self, forKey: .departments)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(departments, forKey: .departments)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(discount, forKey: .discount)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
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
    
    public var logo: Media?
    
    public var uid: Int?
    
    public var name: String?
    
    public var banners: ImageUrls?
    

    enum CodingKeys: String, CodingKey {
        
        case logo = "logo"
        
        case uid = "uid"
        
        case name = "name"
        
        case banners = "banners"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
    }
}

/*
    Model: CategoryItems,
    Service: Catalog
*/

public struct CategoryItems: Codable {
    
    public var action: ProductListingAction?
    
    public var uid: Int?
    
    public var childs: [[String: Any]]?
    
    public var banners: ImageUrls?
    
    public var slug: String?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case action = "action"
        
        case uid = "uid"
        
        case childs = "childs"
        
        case banners = "banners"
        
        case slug = "slug"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        childs = try? container.decode([[String: Any]].self, forKey: .childs)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(childs, forKey: .childs)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
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
    
    public var logo: Media?
    
    public var uid: Int?
    
    public var name: String?
    
    public var banners: ImageUrls?
    

    enum CodingKeys: String, CodingKey {
        
        case logo = "logo"
        
        case uid = "uid"
        
        case name = "name"
        
        case banners = "banners"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
    }
}

/*
    Model: Page,
    Service: Catalog
*/

public struct Page: Codable {
    
    public var page: Int
    
    public var pageSize: Int
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case pageSize = "page_size"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try container.decode(Int.self, forKey: .page)
        
        pageSize = try container.decode(Int.self, forKey: .pageSize)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        
    }
}

/*
    Model: HomeListingResponse,
    Service: Catalog
*/

public struct HomeListingResponse: Codable {
    
    public var items: [ProductDetail]?
    
    public var page: Page?
    
    public var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
        case message = "message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
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
    
    public var uid: Int?
    
    public var priorityOrder: Int?
    
    public var slug: String?
    
    public var logo: Media?
    
    public var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case priorityOrder = "priority_order"
        
        case slug = "slug"
        
        case logo = "logo"
        
        case name = "name"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
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
    
    public var logo: Media?
    
    public var display: String?
    
    public var action: [String: Any]?
    
    public var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case logo = "logo"
        
        case display = "display"
        
        case action = "action"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        display = try? container.decode(String.self, forKey: .display)
        
        action = try? container.decode([String: Any].self, forKey: .action)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
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
    
    public var tag: [String]?
    
    public var badge: [String: Any]?
    
    public var allowSort: Bool?
    
    public var cron: [String: Any]?
    
    public var action: ProductListingAction?
    
    public var visibleFacetsKeys: [String]?
    
    public var meta: [String: Any]?
    
    public var schedule: [String: Any]?
    
    public var appId: String?
    
    public var isActive: Bool?
    
    public var description: String?
    
    public var banners: ImageUrls?
    
    public var query: [String: Any]?
    
    public var allowFacets: Bool?
    
    public var seo: SeoDetail?
    
    public var type: String?
    
    public var name: String?
    
    public var uid: String?
    
    public var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case tag = "tag"
        
        case badge = "badge"
        
        case allowSort = "allow_sort"
        
        case cron = "cron"
        
        case action = "action"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case meta = "meta"
        
        case schedule = "_schedule"
        
        case appId = "app_id"
        
        case isActive = "is_active"
        
        case description = "description"
        
        case banners = "banners"
        
        case query = "query"
        
        case allowFacets = "allow_facets"
        
        case seo = "seo"
        
        case type = "type"
        
        case name = "name"
        
        case uid = "uid"
        
        case logo = "logo"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        description = try? container.decode(String.self, forKey: .description)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        type = try? container.decode(String.self, forKey: .type)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(action, forKey: .action)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
    }
}

/*
    Model: CollectionListingFilterType,
    Service: Catalog
*/

public struct CollectionListingFilterType: Codable {
    
    public var display: String?
    
    public var name: String?
    
    public var isSelected: Bool?
    

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
    Model: CollectionListingFilterTag,
    Service: Catalog
*/

public struct CollectionListingFilterTag: Codable {
    
    public var display: String?
    
    public var name: String?
    
    public var isSelected: Bool?
    

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
    Model: UserInfo,
    Service: Catalog
*/

public struct UserInfo: Codable {
    
    public var uid: String?
    
    public var username: String?
    
    public var userId: String?
    
    public var email: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case username = "username"
        
        case userId = "user_id"
        
        case email = "email"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        username = try? container.decode(String.self, forKey: .username)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        email = try? container.decode(String.self, forKey: .email)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(username, forKey: .username)
        
        try? container.encodeIfPresent(userId, forKey: .userId)
        
        try? container.encodeIfPresent(email, forKey: .email)
        
    }
}

/*
    Model: Schedule,
    Service: Catalog
*/

public struct Schedule: Codable {
    
    public var cron: String?
    
    public var end: String?
    
    public var duration: Int?
    
    public var start: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cron = "cron"
        
        case end = "end"
        
        case duration = "duration"
        
        case start = "start"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cron = try? container.decode(String.self, forKey: .cron)
        
        end = try? container.decode(String.self, forKey: .end)
        
        duration = try? container.decode(Int.self, forKey: .duration)
        
        start = try? container.decode(String.self, forKey: .start)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(end, forKey: .end)
        
        try? container.encodeIfPresent(duration, forKey: .duration)
        
        try? container.encodeIfPresent(start, forKey: .start)
        
    }
}

/*
    Model: CollectionImage,
    Service: Catalog
*/

public struct CollectionImage: Codable {
    
    public var url: String
    
    public var aspectRatio: String
    

    enum CodingKeys: String, CodingKey {
        
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
    Model: CreateCollection,
    Service: Catalog
*/

public struct CreateCollection: Codable {
    
    public var localeLanguage: [String: Any]?
    
    public var slug: String
    
    public var customJson: [String: Any]?
    
    public var sortOn: String?
    
    public var badge: CollectionBadge?
    
    public var allowSort: Bool?
    
    public var visibleFacetsKeys: [String]?
    
    public var modifiedBy: UserInfo?
    
    public var meta: [String: Any]?
    
    public var schedule: Schedule?
    
    public var tags: [String]?
    
    public var appId: String
    
    public var banners: CollectionBanner
    
    public var query: [String: Any]?
    
    public var isActive: Bool?
    
    public var description: String?
    
    public var allowFacets: Bool?
    
    public var seo: SeoDetail?
    
    public var type: String
    
    public var name: String
    
    public var logo: CollectionImage
    
    public var published: Bool?
    
    public var createdBy: UserInfo?
    

    enum CodingKeys: String, CodingKey {
        
        case localeLanguage = "_locale_language"
        
        case slug = "slug"
        
        case customJson = "_custom_json"
        
        case sortOn = "sort_on"
        
        case badge = "badge"
        
        case allowSort = "allow_sort"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case modifiedBy = "modified_by"
        
        case meta = "meta"
        
        case schedule = "_schedule"
        
        case tags = "tags"
        
        case appId = "app_id"
        
        case banners = "banners"
        
        case query = "query"
        
        case isActive = "is_active"
        
        case description = "description"
        
        case allowFacets = "allow_facets"
        
        case seo = "seo"
        
        case type = "type"
        
        case name = "name"
        
        case logo = "logo"
        
        case published = "published"
        
        case createdBy = "created_by"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
        
        slug = try container.decode(String.self, forKey: .slug)
        
        customJson = try? container.decode([String: Any].self, forKey: .customJson)
        
        sortOn = try? container.decode(String.self, forKey: .sortOn)
        
        badge = try? container.decode(CollectionBadge.self, forKey: .badge)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        modifiedBy = try? container.decode(UserInfo.self, forKey: .modifiedBy)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        schedule = try? container.decode(Schedule.self, forKey: .schedule)
        
        tags = try? container.decode([String].self, forKey: .tags)
        
        appId = try container.decode(String.self, forKey: .appId)
        
        banners = try container.decode(CollectionBanner.self, forKey: .banners)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        description = try? container.decode(String.self, forKey: .description)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        type = try container.decode(String.self, forKey: .type)
        
        name = try container.decode(String.self, forKey: .name)
        
        logo = try container.decode(CollectionImage.self, forKey: .logo)
        
        published = try? container.decode(Bool.self, forKey: .published)
        
        createdBy = try? container.decode(UserInfo.self, forKey: .createdBy)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(customJson, forKey: .customJson)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(tags, forKey: .tags)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(published, forKey: .published)
        
        try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        
    }
}

/*
    Model: CollectionDetailResponse,
    Service: Catalog
*/

public struct CollectionDetailResponse: Codable {
    
    public var meta: [String: Any]?
    
    public var cron: [String: Any]?
    
    public var appId: String?
    
    public var visibleFacetsKeys: [String]?
    
    public var isActive: Bool?
    
    public var description: String?
    
    public var banners: ImageUrls?
    
    public var query: [String: Any]?
    
    public var slug: String?
    
    public var allowFacets: Bool?
    
    public var logo: Media?
    
    public var seo: SeoDetail?
    
    public var tag: [String]?
    
    public var type: String?
    
    public var badge: [String: Any]?
    
    public var schedule: [String: Any]?
    
    public var name: String?
    
    public var allowSort: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case meta = "meta"
        
        case cron = "cron"
        
        case appId = "app_id"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case isActive = "is_active"
        
        case description = "description"
        
        case banners = "banners"
        
        case query = "query"
        
        case slug = "slug"
        
        case allowFacets = "allow_facets"
        
        case logo = "logo"
        
        case seo = "seo"
        
        case tag = "tag"
        
        case type = "type"
        
        case badge = "badge"
        
        case schedule = "_schedule"
        
        case name = "name"
        
        case allowSort = "allow_sort"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        description = try? container.decode(String.self, forKey: .description)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        seo = try? container.decode(SeoDetail.self, forKey: .seo)
        
        tag = try? container.decode([String].self, forKey: .tag)
        
        type = try? container.decode(String.self, forKey: .type)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        name = try? container.decode(String.self, forKey: .name)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(meta, forKey: .meta)
        
        try? container.encodeIfPresent(cron, forKey: .cron)
        
        try? container.encodeIfPresent(appId, forKey: .appId)
        
        try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
        
        try? container.encodeIfPresent(isActive, forKey: .isActive)
        
        try? container.encodeIfPresent(description, forKey: .description)
        
        try? container.encodeIfPresent(banners, forKey: .banners)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(slug, forKey: .slug)
        
        try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
        
        try? container.encodeIfPresent(logo, forKey: .logo)
        
        try? container.encodeIfPresent(seo, forKey: .seo)
        
        try? container.encodeIfPresent(tag, forKey: .tag)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
        try? container.encodeIfPresent(badge, forKey: .badge)
        
        try? container.encodeIfPresent(schedule, forKey: .schedule)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(allowSort, forKey: .allowSort)
        
    }
}

/*
    Model: GetCollectionListingItemsResponse,
    Service: Catalog
*/

public struct GetCollectionListingItemsResponse: Codable {
    
    public var items: [ProductDetail]?
    
    public var page: ProductPage?
    
    public var sortOn: [ProductSortOn]?
    
    public var filters: [ProductFilters]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
        case sortOn = "sort_on"
        
        case filters = "filters"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([ProductDetail].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
        
        filters = try? container.decode([ProductFilters].self, forKey: .filters)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(page, forKey: .page)
        
        try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        
        try? container.encodeIfPresent(filters, forKey: .filters)
        
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
    
    public var pageSize: Int
    
    public var query: [String: Any]?
    
    public var items: [CollectionItem]?
    
    public var pageNo: Int
    
    public var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case pageSize = "page_size"
        
        case query = "query"
        
        case items = "items"
        
        case pageNo = "page_no"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pageSize = try container.decode(Int.self, forKey: .pageSize)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        items = try? container.decode([CollectionItem].self, forKey: .items)
        
        pageNo = try container.decode(Int.self, forKey: .pageNo)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        
        try? container.encodeIfPresent(query, forKey: .query)
        
        try? container.encodeIfPresent(items, forKey: .items)
        
        try? container.encodeIfPresent(pageNo, forKey: .pageNo)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
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
    
    public var brands: [Int]?
    
    public var collections: [Int]?
    
    public var products: [Int]?
    

    enum CodingKeys: String, CodingKey {
        
        case brands = "brands"
        
        case collections = "collections"
        
        case products = "products"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        brands = try? container.decode([Int].self, forKey: .brands)
        
        collections = try? container.decode([Int].self, forKey: .collections)
        
        products = try? container.decode([Int].self, forKey: .products)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(brands, forKey: .brands)
        
        try? container.encodeIfPresent(collections, forKey: .collections)
        
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
    
    public var storeCode: String?
    
    public var storeEmail: String?
    
    public var uid: Int?
    
    public var city: String?
    
    public var latLong: LatLong?
    
    public var pincode: Int?
    
    public var state: String?
    
    public var name: String?
    
    public var address: String?
    
    public var country: String?
    

    enum CodingKeys: String, CodingKey {
        
        case storeCode = "store_code"
        
        case storeEmail = "store_email"
        
        case uid = "uid"
        
        case city = "city"
        
        case latLong = "lat_long"
        
        case pincode = "pincode"
        
        case state = "state"
        
        case name = "name"
        
        case address = "address"
        
        case country = "country"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        storeEmail = try? container.decode(String.self, forKey: .storeEmail)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        city = try? container.decode(String.self, forKey: .city)
        
        latLong = try? container.decode(LatLong.self, forKey: .latLong)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        state = try? container.decode(String.self, forKey: .state)
        
        name = try? container.decode(String.self, forKey: .name)
        
        address = try? container.decode(String.self, forKey: .address)
        
        country = try? container.decode(String.self, forKey: .country)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        
        try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
        
        try? container.encodeIfPresent(uid, forKey: .uid)
        
        try? container.encodeIfPresent(city, forKey: .city)
        
        try? container.encodeIfPresent(latLong, forKey: .latLong)
        
        try? container.encodeIfPresent(pincode, forKey: .pincode)
        
        try? container.encodeIfPresent(state, forKey: .state)
        
        try? container.encodeIfPresent(name, forKey: .name)
        
        try? container.encodeIfPresent(address, forKey: .address)
        
        try? container.encodeIfPresent(country, forKey: .country)
        
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
    
    public var participants: [Any]
    

    enum CodingKeys: String, CodingKey {
        
        case participants = "participants"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        participants = try container.decode([Any].self, forKey: .participants)
        
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

