

/*
    Model: ProductDetailAttribute,
*/

struct ProductDetailAttribute: Decodable {
    
    var key: String?
    
    var type: String?
    
    var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case type = "type"
        
        case value = "value"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
}

/*
    Model: ProductDetailGroupedAttribute,
*/

struct ProductDetailGroupedAttribute: Decodable {
    
    var details: [Any]?
    
    var title: String?
    

    enum CodingKeys: String, CodingKey {
        
        case details = "details"
        
        case title = "title"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        details = try? container.decode([Any].self, forKey: .details)
        
        title = try? container.decode(String.self, forKey: .title)
        
    }
}

/*
    Model: ProductListingActionPage,
*/

struct ProductListingActionPage: Decodable {
    
    var query: [String: Any]?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case query = "query"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: ProductListingAction,
*/

struct ProductListingAction: Decodable {
    
    var type: String?
    
    var page: ProductListingActionPage?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        page = try? container.decode(ProductListingActionPage.self, forKey: .page)
        
    }
}

/*
    Model: Media,
*/

struct Media: Decodable {
    
    var type: String?
    
    var url: String?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case url = "url"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        url = try? container.decode(String.self, forKey: .url)
        
    }
}

/*
    Model: ProductBrand,
*/

struct ProductBrand: Decodable {
    
    var action: ProductListingAction?
    
    var uid: Int?
    
    var name: String?
    
    var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case action = "action"
        
        case uid = "uid"
        
        case name = "name"
        
        case logo = "logo"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
}

/*
    Model: ProductDetail,
*/

struct ProductDetail: Decodable {
    
    var highlights: [Any]?
    
    var hasVariant: Bool?
    
    var similars: [Any]?
    
    var groupedAttributes: [Any]?
    
    var teaserTag: [String: Any]?
    
    var name: String?
    
    var promoMeta: [String: Any]?
    
    var brand: ProductBrand?
    
    var type: String?
    
    var attributes: [String: Any]?
    
    var tryouts: [Any]?
    
    var rating: Double?
    
    var productOnlineDate: String?
    
    var uid: Int?
    
    var medias: [Any]?
    
    var itemType: String?
    
    var slug: String?
    
    var categories: [Any]?
    
    var imageNature: String?
    
    var ratingCount: Int?
    
    var color: String?
    

    enum CodingKeys: String, CodingKey {
        
        case highlights = "highlights"
        
        case hasVariant = "has_variant"
        
        case similars = "similars"
        
        case groupedAttributes = "grouped_attributes"
        
        case teaserTag = "teaser_tag"
        
        case name = "name"
        
        case promoMeta = "promo_meta"
        
        case brand = "brand"
        
        case type = "type"
        
        case attributes = "attributes"
        
        case tryouts = "tryouts"
        
        case rating = "rating"
        
        case productOnlineDate = "product_online_date"
        
        case uid = "uid"
        
        case medias = "medias"
        
        case itemType = "item_type"
        
        case slug = "slug"
        
        case categories = "categories"
        
        case imageNature = "image_nature"
        
        case ratingCount = "rating_count"
        
        case color = "color"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        highlights = try? container.decode([Any].self, forKey: .highlights)
        
        hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
        
        similars = try? container.decode([Any].self, forKey: .similars)
        
        groupedAttributes = try? container.decode([Any].self, forKey: .groupedAttributes)
        
        teaserTag = try? container.decode([String: Any].self, forKey: .teaserTag)
        
        name = try? container.decode(String.self, forKey: .name)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        brand = try? container.decode(ProductBrand.self, forKey: .brand)
        
        type = try? container.decode(String.self, forKey: .type)
        
        attributes = try? container.decode([String: Any].self, forKey: .attributes)
        
        tryouts = try? container.decode([Any].self, forKey: .tryouts)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        medias = try? container.decode([Any].self, forKey: .medias)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        categories = try? container.decode([Any].self, forKey: .categories)
        
        imageNature = try? container.decode(String.self, forKey: .imageNature)
        
        ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
        
        color = try? container.decode(String.self, forKey: .color)
        
    }
}

/*
    Model: Error,
*/

struct Error: Decodable {
    
    var error: String?
    

    enum CodingKeys: String, CodingKey {
        
        case error = "error"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        error = try? container.decode(String.self, forKey: .error)
        
    }
}

/*
    Model: ProductSize,
*/

struct ProductSize: Decodable {
    
    var isAvailable: Bool?
    
    var display: String?
    
    var quantity: Int?
    
    var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isAvailable = "is_available"
        
        case display = "display"
        
        case quantity = "quantity"
        
        case value = "value"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        display = try? container.decode(String.self, forKey: .display)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
}

/*
    Model: Price,
*/

struct Price: Decodable {
    
    var currencyCode: String?
    
    var max: Double?
    
    var currencySymbol: String?
    
    var min: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case currencyCode = "currency_code"
        
        case max = "max"
        
        case currencySymbol = "currency_symbol"
        
        case min = "min"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        max = try? container.decode(Double.self, forKey: .max)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        min = try? container.decode(Double.self, forKey: .min)
        
    }
}

/*
    Model: ProductListingPrice,
*/

struct ProductListingPrice: Decodable {
    
    var effective: Price?
    
    var marked: Price?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case marked = "marked"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Price.self, forKey: .effective)
        
        marked = try? container.decode(Price.self, forKey: .marked)
        
    }
}

/*
    Model: ProductSizeStores,
*/

struct ProductSizeStores: Decodable {
    
    var count: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case count = "count"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        count = try? container.decode(Int.self, forKey: .count)
        
    }
}

/*
    Model: ProductSizes,
*/

struct ProductSizes: Decodable {
    
    var sellable: Bool?
    
    var sizes: [Any]?
    
    var promoMeta: [String: Any]?
    
    var price: ProductListingPrice?
    
    var stores: ProductSizeStores?
    
    var sizeChart: [String: Any]?
    
    var discount: String?
    

    enum CodingKeys: String, CodingKey {
        
        case sellable = "sellable"
        
        case sizes = "sizes"
        
        case promoMeta = "promo_meta"
        
        case price = "price"
        
        case stores = "stores"
        
        case sizeChart = "size_chart"
        
        case discount = "discount"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        sellable = try? container.decode(Bool.self, forKey: .sellable)
        
        sizes = try? container.decode([Any].self, forKey: .sizes)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        price = try? container.decode(ProductListingPrice.self, forKey: .price)
        
        stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
        
        sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
    }
}

/*
    Model: ProductStockPrice,
*/

struct ProductStockPrice: Decodable {
    
    var effective: Double?
    
    var currency: String?
    
    var marked: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case currency = "currency"
        
        case marked = "marked"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
        currency = try? container.decode(String.self, forKey: .currency)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
    }
}

/*
    Model: ArticleAssignment,
*/

struct ArticleAssignment: Decodable {
    
    var strategy: String?
    
    var level: String?
    

    enum CodingKeys: String, CodingKey {
        
        case strategy = "strategy"
        
        case level = "level"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        strategy = try? container.decode(String.self, forKey: .strategy)
        
        level = try? container.decode(String.self, forKey: .level)
        
    }
}

/*
    Model: Seller,
*/

struct Seller: Decodable {
    
    var uid: Int?
    
    var name: String?
    
    var count: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
        case count = "count"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        count = try? container.decode(Int.self, forKey: .count)
        
    }
}

/*
    Model: Store,
*/

struct Store: Decodable {
    
    var uid: Int?
    
    var name: String?
    
    var count: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
        case count = "count"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
        count = try? container.decode(Int.self, forKey: .count)
        
    }
}

/*
    Model: ProductSizePriceResponse,
*/

struct ProductSizePriceResponse: Decodable {
    
    var set: [String: Any]?
    
    var promoMeta: [String: Any]?
    
    var specialBadge: String?
    
    var price: ProductStockPrice?
    
    var longLat: [Any]?
    
    var quantity: Int?
    
    var pincode: Int?
    
    var articleAssignment: ArticleAssignment?
    
    var strategyWiseListing: [Any]?
    
    var articleId: String?
    
    var pricePerPrice: ProductStockPrice?
    
    var seller: Seller?
    
    var sellerCount: Int?
    
    var store: Store?
    
    var itemType: String?
    
    var discount: String?
    

    enum CodingKeys: String, CodingKey {
        
        case set = "set"
        
        case promoMeta = "promo_meta"
        
        case specialBadge = "special_badge"
        
        case price = "price"
        
        case longLat = "long_lat"
        
        case quantity = "quantity"
        
        case pincode = "pincode"
        
        case articleAssignment = "article_assignment"
        
        case strategyWiseListing = "strategy_wise_listing"
        
        case articleId = "article_id"
        
        case pricePerPrice = "price_per_price"
        
        case seller = "seller"
        
        case sellerCount = "seller_count"
        
        case store = "store"
        
        case itemType = "item_type"
        
        case discount = "discount"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        set = try? container.decode([String: Any].self, forKey: .set)
        
        promoMeta = try? container.decode([String: Any].self, forKey: .promoMeta)
        
        specialBadge = try? container.decode(String.self, forKey: .specialBadge)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        longLat = try? container.decode([Any].self, forKey: .longLat)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
        
        strategyWiseListing = try? container.decode([Any].self, forKey: .strategyWiseListing)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
        
        store = try? container.decode(Store.self, forKey: .store)
        
        itemType = try? container.decode(String.self, forKey: .itemType)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
    }
}

/*
    Model: ProductPage,
*/

struct ProductPage: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        nextId = try? container.decode(String.self, forKey: .nextId)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        totalItem = try? container.decode(Int.self, forKey: .totalItem)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
    }
}

/*
    Model: ProductSizeSellerFilter,
*/

struct ProductSizeSellerFilter: Decodable {
    
    var isSelected: Bool?
    
    var name: String?
    
    var value: String?
    
    var default: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case isSelected = "is_selected"
        
        case name = "name"
        
        case value = "value"
        
        case default = "default"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        name = try? container.decode(String.self, forKey: .name)
        
        value = try? container.decode(String.self, forKey: .value)
        
        default = try? container.decode(Bool.self, forKey: .default)
        
    }
}

/*
    Model: ProductSizeSellersResponse,
*/

struct ProductSizeSellersResponse: Decodable {
    
    var items: [Any]?
    
    var page: ProductPage?
    
    var sortOn: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
        case sortOn = "sort_on"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        sortOn = try? container.decode([Any].self, forKey: .sortOn)
        
    }
}

/*
    Model: AttributeDetail,
*/

struct AttributeDetail: Decodable {
    
    var key: String?
    
    var description: String?
    
    var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case description = "description"
        
        case display = "display"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        description = try? container.decode(String.self, forKey: .description)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
}

/*
    Model: ProductsComparisonResponse,
*/

struct ProductsComparisonResponse: Decodable {
    
    var attributesMetadata: [Any]?
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case attributesMetadata = "attributes_metadata"
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        attributesMetadata = try? container.decode([Any].self, forKey: .attributesMetadata)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: ProductCompareResponse,
*/

struct ProductCompareResponse: Decodable {
    
    var attributesMetadata: [Any]?
    
    var items: [Any]?
    
    var subtitle: String?
    
    var title: String?
    

    enum CodingKeys: String, CodingKey {
        
        case attributesMetadata = "attributes_metadata"
        
        case items = "items"
        
        case subtitle = "subtitle"
        
        case title = "title"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        attributesMetadata = try? container.decode([Any].self, forKey: .attributesMetadata)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        title = try? container.decode(String.self, forKey: .title)
        
    }
}

/*
    Model: ProductFrequentlyComparedSimilarResponse,
*/

struct ProductFrequentlyComparedSimilarResponse: Decodable {
    
    var similars: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case similars = "similars"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        similars = try? container.decode([Any].self, forKey: .similars)
        
    }
}

/*
    Model: ProductSimilarItem,
*/

struct ProductSimilarItem: Decodable {
    
    var items: [Any]?
    
    var subtitle: String?
    
    var title: String?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case subtitle = "subtitle"
        
        case title = "title"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        title = try? container.decode(String.self, forKey: .title)
        
    }
}

/*
    Model: SimilarProductByTypeResponse,
*/

struct SimilarProductByTypeResponse: Decodable {
    
    var similars: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case similars = "similars"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        similars = try? container.decode([Any].self, forKey: .similars)
        
    }
}

/*
    Model: ProductVariantItemResponse,
*/

struct ProductVariantItemResponse: Decodable {
    
    var slug: String?
    
    var medias: [Any]?
    
    var value: String?
    
    var isAvailable: Bool?
    
    var action: ProductListingAction?
    
    var uid: Int?
    
    var color: String?
    
    var colorName: String?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case medias = "medias"
        
        case value = "value"
        
        case isAvailable = "is_available"
        
        case action = "action"
        
        case uid = "uid"
        
        case color = "color"
        
        case colorName = "color_name"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        medias = try? container.decode([Any].self, forKey: .medias)
        
        value = try? container.decode(String.self, forKey: .value)
        
        isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        color = try? container.decode(String.self, forKey: .color)
        
        colorName = try? container.decode(String.self, forKey: .colorName)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: ProductVariantResponse,
*/

struct ProductVariantResponse: Decodable {
    
    var items: [Any]?
    
    var displayType: String?
    
    var header: String?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case displayType = "display_type"
        
        case header = "header"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        displayType = try? container.decode(String.self, forKey: .displayType)
        
        header = try? container.decode(String.self, forKey: .header)
        
    }
}

/*
    Model: ProductVariantsResponse,
*/

struct ProductVariantsResponse: Decodable {
    
    var variants: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case variants = "variants"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        variants = try? container.decode([Any].self, forKey: .variants)
        
    }
}

/*
    Model: CompanyDetail,
*/

struct CompanyDetail: Decodable {
    
    var id: Int?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(Int.self, forKey: .id)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: StoreDetail,
*/

struct StoreDetail: Decodable {
    
    var id: Int?
    
    var code: String?
    
    var name: String?
    
    var city: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case code = "code"
        
        case name = "name"
        
        case city = "city"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(Int.self, forKey: .id)
        
        code = try? container.decode(String.self, forKey: .code)
        
        name = try? container.decode(String.self, forKey: .name)
        
        city = try? container.decode(String.self, forKey: .city)
        
    }
}

/*
    Model: ProductStockStatusItem,
*/

struct ProductStockStatusItem: Decodable {
    
    var identifier: [String: Any]?
    
    var price: ProductStockPrice?
    
    var quantity: Int?
    
    var company: CompanyDetail?
    
    var size: String?
    
    var itemId: Int?
    
    var uid: String?
    
    var seller: Seller?
    
    var store: StoreDetail?
    

    enum CodingKeys: String, CodingKey {
        
        case identifier = "identifier"
        
        case price = "price"
        
        case quantity = "quantity"
        
        case company = "company"
        
        case size = "size"
        
        case itemId = "item_id"
        
        case uid = "uid"
        
        case seller = "seller"
        
        case store = "store"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        identifier = try? container.decode([String: Any].self, forKey: .identifier)
        
        price = try? container.decode(ProductStockPrice.self, forKey: .price)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        company = try? container.decode(CompanyDetail.self, forKey: .company)
        
        size = try? container.decode(String.self, forKey: .size)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        seller = try? container.decode(Seller.self, forKey: .seller)
        
        store = try? container.decode(StoreDetail.self, forKey: .store)
        
    }
}

/*
    Model: ProductStockStatusResponse,
*/

struct ProductStockStatusResponse: Decodable {
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: ProductStockPolling,
*/

struct ProductStockPolling: Decodable {
    
    var items: [Any]?
    
    var page: ProductPage?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
    }
}

/*
    Model: ProductSortOn,
*/

struct ProductSortOn: Decodable {
    
    var isSelected: Bool?
    
    var name: String?
    
    var value: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isSelected = "is_selected"
        
        case name = "name"
        
        case value = "value"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        name = try? container.decode(String.self, forKey: .name)
        
        value = try? container.decode(String.self, forKey: .value)
        
    }
}

/*
    Model: ProductFiltersKey,
*/

struct ProductFiltersKey: Decodable {
    
    var display: String?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try? container.decode(String.self, forKey: .display)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: ProductFiltersValue,
*/

struct ProductFiltersValue: Decodable {
    
    var isSelected: Bool?
    
    var count: Int?
    
    var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isSelected = "is_selected"
        
        case count = "count"
        
        case display = "display"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        count = try? container.decode(Int.self, forKey: .count)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
}

/*
    Model: ProductFilters,
*/

struct ProductFilters: Decodable {
    
    var key: ProductFiltersKey?
    
    var values: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case values = "values"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(ProductFiltersKey.self, forKey: .key)
        
        values = try? container.decode([Any].self, forKey: .values)
        
    }
}

/*
    Model: ProductListingResponse,
*/

struct ProductListingResponse: Decodable {
    
    var items: [Any]?
    
    var page: ProductPage?
    
    var sortOn: [Any]?
    
    var filter: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
        case sortOn = "sort_on"
        
        case filter = "filter"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        sortOn = try? container.decode([Any].self, forKey: .sortOn)
        
        filter = try? container.decode([Any].self, forKey: .filter)
        
    }
}

/*
    Model: ImageUrls,
*/

struct ImageUrls: Decodable {
    
    var landscape: Media?
    
    var portrait: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case landscape = "landscape"
        
        case portrait = "portrait"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        landscape = try? container.decode(Media.self, forKey: .landscape)
        
        portrait = try? container.decode(Media.self, forKey: .portrait)
        
    }
}

/*
    Model: BrandItem,
*/

struct BrandItem: Decodable {
    
    var slug: String?
    
    var banners: ImageUrls?
    
    var action: ProductListingAction?
    
    var uid: Int?
    
    var logo: Media?
    
    var departments: [Any]?
    
    var name: String?
    
    var discount: String?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case banners = "banners"
        
        case action = "action"
        
        case uid = "uid"
        
        case logo = "logo"
        
        case departments = "departments"
        
        case name = "name"
        
        case discount = "discount"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        departments = try? container.decode([Any].self, forKey: .departments)
        
        name = try? container.decode(String.self, forKey: .name)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
    }
}

/*
    Model: BrandListingResponse,
*/

struct BrandListingResponse: Decodable {
    
    var items: [Any]?
    
    var page: ProductPage?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
    }
}

/*
    Model: BrandDetailResponse,
*/

struct BrandDetailResponse: Decodable {
    
    var uid: Int?
    
    var banners: ImageUrls?
    
    var name: String?
    
    var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case banners = "banners"
        
        case name = "name"
        
        case logo = "logo"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
}

/*
    Model: DepartmentIdentifier,
*/

struct DepartmentIdentifier: Decodable {
    
    var uid: Int?
    
    var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case slug = "slug"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
}

/*
    Model: CategoryItems,
*/

struct CategoryItems: Decodable {
    
    var slug: String?
    
    var childs: [Any]?
    
    var banners: ImageUrls?
    
    var action: ProductListingAction?
    
    var uid: Int?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case childs = "childs"
        
        case banners = "banners"
        
        case action = "action"
        
        case uid = "uid"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        childs = try? container.decode([Any].self, forKey: .childs)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: DepartmentCategoryTree,
*/

struct DepartmentCategoryTree: Decodable {
    
    var items: [Any]?
    
    var department: String?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case department = "department"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        department = try? container.decode(String.self, forKey: .department)
        
    }
}

/*
    Model: CategoryListingResponse,
*/

struct CategoryListingResponse: Decodable {
    
    var departments: [Any]?
    
    var data: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case departments = "departments"
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        departments = try? container.decode([Any].self, forKey: .departments)
        
        data = try? container.decode([Any].self, forKey: .data)
        
    }
}

/*
    Model: CategoryMetaResponse,
*/

struct CategoryMetaResponse: Decodable {
    
    var uid: Int?
    
    var banners: ImageUrls?
    
    var name: String?
    
    var logo: Media?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case banners = "banners"
        
        case name = "name"
        
        case logo = "logo"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        name = try? container.decode(String.self, forKey: .name)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
    }
}

/*
    Model: Page,
*/

struct Page: Decodable {
    
    var page: Int?
    
    var pageSize: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case pageSize = "page_size"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode(Int.self, forKey: .page)
        
        pageSize = try? container.decode(Int.self, forKey: .pageSize)
        
    }
}

/*
    Model: HomeListingResponse,
*/

struct HomeListingResponse: Decodable {
    
    var message: String?
    
    var items: [Any]?
    
    var page: Page?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case items = "items"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(Page.self, forKey: .page)
        
    }
}

/*
    Model: Department,
*/

struct Department: Decodable {
    
    var priorityOrder: Int?
    
    var slug: String?
    
    var uid: Int?
    
    var logo: Media?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case priorityOrder = "priority_order"
        
        case slug = "slug"
        
        case uid = "uid"
        
        case logo = "logo"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: DepartmentResponse,
*/

struct DepartmentResponse: Decodable {
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: AutocompleteItem,
*/

struct AutocompleteItem: Decodable {
    
    var logo: Media?
    
    var action: [String: Any]?
    
    var type: String?
    
    var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case logo = "logo"
        
        case action = "action"
        
        case type = "type"
        
        case display = "display"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        action = try? container.decode([String: Any].self, forKey: .action)
        
        type = try? container.decode(String.self, forKey: .type)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
}

/*
    Model: AutoCompleteResponse,
*/

struct AutoCompleteResponse: Decodable {
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: GetCollectionDetailNest,
*/

struct GetCollectionDetailNest: Decodable {
    
    var appId: String?
    
    var banners: ImageUrls?
    
    var query: [String: Any]?
    
    var name: String?
    
    var allowSort: Bool?
    
    var visibleFacetsKeys: [Any]?
    
    var action: ProductListingAction?
    
    var type: String?
    
    var logo: Media?
    
    var allowFacets: Bool?
    
    var isActive: Bool?
    
    var schedule: [String: Any]?
    
    var uid: String?
    
    var meta: [String: Any]?
    
    var cron: [String: Any]?
    
    var slug: String?
    
    var description: String?
    
    var badge: [String: Any]?
    
    var tag: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case appId = "app_id"
        
        case banners = "banners"
        
        case query = "query"
        
        case name = "name"
        
        case allowSort = "allow_sort"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case action = "action"
        
        case type = "type"
        
        case logo = "logo"
        
        case allowFacets = "allow_facets"
        
        case isActive = "is_active"
        
        case schedule = "_schedule"
        
        case uid = "uid"
        
        case meta = "meta"
        
        case cron = "cron"
        
        case slug = "slug"
        
        case description = "description"
        
        case badge = "badge"
        
        case tag = "tag"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        name = try? container.decode(String.self, forKey: .name)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        visibleFacetsKeys = try? container.decode([Any].self, forKey: .visibleFacetsKeys)
        
        action = try? container.decode(ProductListingAction.self, forKey: .action)
        
        type = try? container.decode(String.self, forKey: .type)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        description = try? container.decode(String.self, forKey: .description)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        tag = try? container.decode([Any].self, forKey: .tag)
        
    }
}

/*
    Model: CollectionListingFilterTag,
*/

struct CollectionListingFilterTag: Decodable {
    
    var isSelected: Bool?
    
    var display: String?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isSelected = "is_selected"
        
        case display = "display"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        display = try? container.decode(String.self, forKey: .display)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: CollectionListingFilterType,
*/

struct CollectionListingFilterType: Decodable {
    
    var isSelected: Bool?
    
    var display: String?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isSelected = "is_selected"
        
        case display = "display"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isSelected = try? container.decode(Bool.self, forKey: .isSelected)
        
        display = try? container.decode(String.self, forKey: .display)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: CollectionListingFilter,
*/

struct CollectionListingFilter: Decodable {
    
    var tags: [Any]?
    
    var type: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case tags = "tags"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
        type = try? container.decode([Any].self, forKey: .type)
        
    }
}

/*
    Model: GetCollectionListingResponse,
*/

struct GetCollectionListingResponse: Decodable {
    
    var items: [Any]?
    
    var page: ProductPage?
    
    var filters: CollectionListingFilter?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
        case filters = "filters"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        filters = try? container.decode(CollectionListingFilter.self, forKey: .filters)
        
    }
}

/*
    Model: GetCollectionListingItemsResponse,
*/

struct GetCollectionListingItemsResponse: Decodable {
    
    var items: [Any]?
    
    var page: ProductPage?
    
    var sortOn: [Any]?
    
    var filters: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
        case sortOn = "sort_on"
        
        case filters = "filters"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
        sortOn = try? container.decode([Any].self, forKey: .sortOn)
        
        filters = try? container.decode([Any].self, forKey: .filters)
        
    }
}

/*
    Model: CollectionDetailResponse,
*/

struct CollectionDetailResponse: Decodable {
    
    var appId: String?
    
    var isActive: Bool?
    
    var allowSort: Bool?
    
    var meta: [String: Any]?
    
    var slug: String?
    
    var banners: ImageUrls?
    
    var schedule: [String: Any]?
    
    var visibleFacetsKeys: [Any]?
    
    var query: [String: Any]?
    
    var description: String?
    
    var type: String?
    
    var logo: Media?
    
    var badge: [String: Any]?
    
    var allowFacets: Bool?
    
    var tag: [Any]?
    
    var name: String?
    
    var cron: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case appId = "app_id"
        
        case isActive = "is_active"
        
        case allowSort = "allow_sort"
        
        case meta = "meta"
        
        case slug = "slug"
        
        case banners = "banners"
        
        case schedule = "_schedule"
        
        case visibleFacetsKeys = "visible_facets_keys"
        
        case query = "query"
        
        case description = "description"
        
        case type = "type"
        
        case logo = "logo"
        
        case badge = "badge"
        
        case allowFacets = "allow_facets"
        
        case tag = "tag"
        
        case name = "name"
        
        case cron = "cron"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        allowSort = try? container.decode(Bool.self, forKey: .allowSort)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        banners = try? container.decode(ImageUrls.self, forKey: .banners)
        
        schedule = try? container.decode([String: Any].self, forKey: .schedule)
        
        visibleFacetsKeys = try? container.decode([Any].self, forKey: .visibleFacetsKeys)
        
        query = try? container.decode([String: Any].self, forKey: .query)
        
        description = try? container.decode(String.self, forKey: .description)
        
        type = try? container.decode(String.self, forKey: .type)
        
        logo = try? container.decode(Media.self, forKey: .logo)
        
        badge = try? container.decode([String: Any].self, forKey: .badge)
        
        allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
        
        tag = try? container.decode([Any].self, forKey: .tag)
        
        name = try? container.decode(String.self, forKey: .name)
        
        cron = try? container.decode([String: Any].self, forKey: .cron)
        
    }
}

/*
    Model: GetFollowListingResponse,
*/

struct GetFollowListingResponse: Decodable {
    
    var items: [Any]?
    
    var page: ProductPage?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        page = try? container.decode(ProductPage.self, forKey: .page)
        
    }
}

/*
    Model: FollowPostResponse,
*/

struct FollowPostResponse: Decodable {
    
    var message: String?
    
    var id: String?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case id = "id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
}

/*
    Model: FollowerCountResponse,
*/

struct FollowerCountResponse: Decodable {
    
    var count: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case count = "count"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        count = try? container.decode(Int.self, forKey: .count)
        
    }
}

/*
    Model: FollowIdsData,
*/

struct FollowIdsData: Decodable {
    
    var brands: [Any]?
    
    var collections: [Any]?
    
    var products: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case brands = "brands"
        
        case collections = "collections"
        
        case products = "products"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        brands = try? container.decode([Any].self, forKey: .brands)
        
        collections = try? container.decode([Any].self, forKey: .collections)
        
        products = try? container.decode([Any].self, forKey: .products)
        
    }
}

/*
    Model: FollowIdsResponse,
*/

struct FollowIdsResponse: Decodable {
    
    var data: FollowIdsData?
    

    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try? container.decode(FollowIdsData.self, forKey: .data)
        
    }
}



/*
    Model: GetCartResponse,
*/

struct GetCartResponse: Decodable {
    
    var items: [Any]?
    
    var deliveryChargeInfo: String?
    
    var breakupValuesAnalytics: String?
    
    var gstin: String?
    
    var lastModified: String?
    
    var message: String?
    
    var creditDetails: String?
    
    var breakupValues: [String: Any]?
    
    var couponDetails: String?
    
    var couponText: String?
    
    var codAvailable: Bool?
    
    var checkoutMode: String?
    
    var restrictCheckout: Bool?
    
    var cartId: Int?
    
    var isValid: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case breakupValuesAnalytics = "breakup_values_analytics"
        
        case gstin = "gstin"
        
        case lastModified = "last_modified"
        
        case message = "message"
        
        case creditDetails = "credit_details"
        
        case breakupValues = "breakup_values"
        
        case couponDetails = "coupon_details"
        
        case couponText = "coupon_text"
        
        case codAvailable = "cod_available"
        
        case checkoutMode = "checkout_mode"
        
        case restrictCheckout = "restrict_checkout"
        
        case cartId = "cart_id"
        
        case isValid = "is_valid"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        breakupValuesAnalytics = try? container.decode(String.self, forKey: .breakupValuesAnalytics)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        message = try? container.decode(String.self, forKey: .message)
        
        creditDetails = try? container.decode(String.self, forKey: .creditDetails)
        
        breakupValues = try? container.decode([String: Any].self, forKey: .breakupValues)
        
        couponDetails = try? container.decode(String.self, forKey: .couponDetails)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
    }
}

/*
    Model: AddProductCart,
*/

struct AddProductCart: Decodable {
    
    var articleAssignment: [String: Any]?
    
    var itemId: Int?
    
    var itemSize: Int?
    
    var pos: Bool?
    
    var quantity: Int?
    
    var display: String?
    
    var articleId: String?
    
    var storeId: Int?
    
    var sellerId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case articleAssignment = "article_assignment"
        
        case itemId = "item_id"
        
        case itemSize = "item_size"
        
        case pos = "pos"
        
        case quantity = "quantity"
        
        case display = "display"
        
        case articleId = "article_id"
        
        case storeId = "store_id"
        
        case sellerId = "seller_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
        pos = try? container.decode(Bool.self, forKey: .pos)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        display = try? container.decode(String.self, forKey: .display)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        storeId = try? container.decode(Int.self, forKey: .storeId)
        
        sellerId = try? container.decode(Int.self, forKey: .sellerId)
        
    }
}

/*
    Model: AddCartRequest,
*/

struct AddCartRequest: Decodable {
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: ProductAvailability,
*/

struct ProductAvailability: Decodable {
    
    var deliverable: Bool?
    
    var outOfStock: Bool?
    
    var sizes: [Any]?
    
    var isValid: Bool?
    
    var otherStoreQuantity: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliverable = "deliverable"
        
        case outOfStock = "out_of_stock"
        
        case sizes = "sizes"
        
        case isValid = "is_valid"
        
        case otherStoreQuantity = "other_store_quantity"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliverable = try? container.decode(Bool.self, forKey: .deliverable)
        
        outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
        
        sizes = try? container.decode([Any].self, forKey: .sizes)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
        
    }
}

/*
    Model: ActionQuery,
*/

struct ActionQuery: Decodable {
    
    var productSlug: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case productSlug = "product_slug"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        productSlug = try? container.decode([Any].self, forKey: .productSlug)
        
    }
}

/*
    Model: Action,
*/

struct Action: Decodable {
    
    var type: String?
    
    var url: String?
    
    var query: ActionQuery?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case url = "url"
        
        case query = "query"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        url = try? container.decode(String.self, forKey: .url)
        
        query = try? container.decode(ActionQuery.self, forKey: .query)
        
    }
}

/*
    Model: CategoryInfo,
*/

struct CategoryInfo: Decodable {
    
    var uid: Int?
    
    var name: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(Int.self, forKey: .name)
        
    }
}

/*
    Model: BaseInfo,
*/

struct BaseInfo: Decodable {
    
    var uid: Int?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: Image,
*/

struct Image: Decodable {
    
    var secureUrl: String?
    
    var url: String?
    
    var aspectRatio: String?
    

    enum CodingKeys: String, CodingKey {
        
        case secureUrl = "secure_url"
        
        case url = "url"
        
        case aspectRatio = "aspect_ratio"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        secureUrl = try? container.decode(String.self, forKey: .secureUrl)
        
        url = try? container.decode(String.self, forKey: .url)
        
        aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
        
    }
}

/*
    Model: Product,
*/

struct Product: Decodable {
    
    var action: Action?
    
    var categories: [Any]?
    
    var name: String?
    
    var uid: Int?
    
    var brand: BaseInfo?
    
    var type: String?
    
    var images: [Any]?
    
    var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case action = "action"
        
        case categories = "categories"
        
        case name = "name"
        
        case uid = "uid"
        
        case brand = "brand"
        
        case type = "type"
        
        case images = "images"
        
        case slug = "slug"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(Action.self, forKey: .action)
        
        categories = try? container.decode([Any].self, forKey: .categories)
        
        name = try? container.decode(String.self, forKey: .name)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        brand = try? container.decode(BaseInfo.self, forKey: .brand)
        
        type = try? container.decode(String.self, forKey: .type)
        
        images = try? container.decode([Any].self, forKey: .images)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
}

/*
    Model: ProductPrice,
*/

struct ProductPrice: Decodable {
    
    var marked: Double?
    
    var addOn: Double?
    
    var effective: Double?
    
    var currencySymbol: String?
    
    var currencyCode: String?
    
    var selling: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case marked = "marked"
        
        case addOn = "add_on"
        
        case effective = "effective"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
        case selling = "selling"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
        addOn = try? container.decode(Double.self, forKey: .addOn)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        selling = try? container.decode(Double.self, forKey: .selling)
        
    }
}

/*
    Model: ProductPriceInfo,
*/

struct ProductPriceInfo: Decodable {
    
    var base: ProductPrice?
    
    var converted: ProductPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case base = "base"
        
        case converted = "converted"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        base = try? container.decode(ProductPrice.self, forKey: .base)
        
        converted = try? container.decode(ProductPrice.self, forKey: .converted)
        
    }
}

/*
    Model: CartProductInfo,
*/

struct CartProductInfo: Decodable {
    
    var bulkOffer: String?
    
    var availability: ProductAvailability?
    
    var product: Product?
    
    var quantity: Int?
    
    var discount: String?
    
    var article: String?
    
    var message: String?
    
    var key: String?
    
    var couponMessage: String?
    
    var price: ProductPriceInfo?
    

    enum CodingKeys: String, CodingKey {
        
        case bulkOffer = "bulk_offer"
        
        case availability = "availability"
        
        case product = "product"
        
        case quantity = "quantity"
        
        case discount = "discount"
        
        case article = "article"
        
        case message = "message"
        
        case key = "key"
        
        case couponMessage = "coupon_message"
        
        case price = "price"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
        
        availability = try? container.decode(ProductAvailability.self, forKey: .availability)
        
        product = try? container.decode(Product.self, forKey: .product)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        article = try? container.decode(String.self, forKey: .article)
        
        message = try? container.decode(String.self, forKey: .message)
        
        key = try? container.decode(String.self, forKey: .key)
        
        couponMessage = try? container.decode(String.self, forKey: .couponMessage)
        
        price = try? container.decode(ProductPriceInfo.self, forKey: .price)
        
    }
}

/*
    Model: PaymentFlow,
*/

struct PaymentFlow: Decodable {
    
    var apiLink: String?
    
    var data: [String: Any]?
    
    var paymentFlow: String?
    

    enum CodingKeys: String, CodingKey {
        
        case apiLink = "api_link"
        
        case data = "data"
        
        case paymentFlow = "payment_flow"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        apiLink = try? container.decode(String.self, forKey: .apiLink)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
        paymentFlow = try? container.decode(String.self, forKey: .paymentFlow)
        
    }
}

/*
    Model: PaymentFlows,
*/

struct PaymentFlows: Decodable {
    
    var simpl: PaymentFlow?
    
    var fynd: PaymentFlow?
    
    var razorpay: PaymentFlow?
    
    var upiRazorpay: PaymentFlow?
    
    var juspay: PaymentFlow?
    

    enum CodingKeys: String, CodingKey {
        
        case simpl = "Simpl"
        
        case fynd = "Fynd"
        
        case razorpay = "Razorpay"
        
        case upiRazorpay = "UPI_Razorpay"
        
        case juspay = "Juspay"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
        
        fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
        
        razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
        
        upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
        
        juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
        
    }
}

/*
    Model: PaymentOption,
*/

struct PaymentOption: Decodable {
    
    var paymentModeId: Int?
    
    var name: String?
    
    var displayPriority: Int?
    
    var list: [Any]?
    
    var displayName: String?
    

    enum CodingKeys: String, CodingKey {
        
        case paymentModeId = "payment_mode_id"
        
        case name = "name"
        
        case displayPriority = "display_priority"
        
        case list = "list"
        
        case displayName = "display_name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
        
        name = try? container.decode(String.self, forKey: .name)
        
        displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
        
        list = try? container.decode([Any].self, forKey: .list)
        
        displayName = try? container.decode(String.self, forKey: .displayName)
        
    }
}

/*
    Model: PaymentOptions,
*/

struct PaymentOptions: Decodable {
    
    var default: [String: Any]?
    
    var paymentFlows: PaymentFlows?
    
    var paymentOption: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case default = "default"
        
        case paymentFlows = "payment_flows"
        
        case paymentOption = "payment_option"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        default = try? container.decode([String: Any].self, forKey: .default)
        
        paymentFlows = try? container.decode(PaymentFlows.self, forKey: .paymentFlows)
        
        paymentOption = try? container.decode([Any].self, forKey: .paymentOption)
        
    }
}

/*
    Model: CartCurrency,
*/

struct CartCurrency: Decodable {
    
    var code: String?
    
    var symbol: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case symbol = "symbol"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(String.self, forKey: .code)
        
        symbol = try? container.decode(String.self, forKey: .symbol)
        
    }
}

/*
    Model: BaseLoyaltyPoints,
*/

struct BaseLoyaltyPoints: Decodable {
    
    var total: Double?
    
    var description: String?
    
    var isApplied: Bool?
    
    var applicable: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case total = "total"
        
        case description = "description"
        
        case isApplied = "is_applied"
        
        case applicable = "applicable"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        description = try? container.decode(String.self, forKey: .description)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        applicable = try? container.decode(Int.self, forKey: .applicable)
        
    }
}

/*
    Model: RawBreakup,
*/

struct RawBreakup: Decodable {
    
    var total: Int?
    
    var coupon: Int?
    
    var deliveryCharge: Int?
    
    var fyndCash: Int?
    
    var codCharge: Int?
    
    var youSaved: Int?
    
    var subtotal: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case total = "total"
        
        case coupon = "coupon"
        
        case deliveryCharge = "delivery_charge"
        
        case fyndCash = "fynd_cash"
        
        case codCharge = "cod_charge"
        
        case youSaved = "you_saved"
        
        case subtotal = "subtotal"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        coupon = try? container.decode(Int.self, forKey: .coupon)
        
        deliveryCharge = try? container.decode(Int.self, forKey: .deliveryCharge)
        
        fyndCash = try? container.decode(Int.self, forKey: .fyndCash)
        
        codCharge = try? container.decode(Int.self, forKey: .codCharge)
        
        youSaved = try? container.decode(Int.self, forKey: .youSaved)
        
        subtotal = try? container.decode(Int.self, forKey: .subtotal)
        
    }
}

/*
    Model: DisplayBreakup,
*/

struct DisplayBreakup: Decodable {
    
    var value: Int?
    
    var currencyCode: String?
    
    var display: String?
    
    var currencySymbol: String?
    
    var key: String?
    

    enum CodingKeys: String, CodingKey {
        
        case value = "value"
        
        case currencyCode = "currency_code"
        
        case display = "display"
        
        case currencySymbol = "currency_symbol"
        
        case key = "key"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        display = try? container.decode(String.self, forKey: .display)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        key = try? container.decode(String.self, forKey: .key)
        
    }
}

/*
    Model: CouponBreakup,
*/

struct CouponBreakup: Decodable {
    
    var code: String?
    
    var isApplied: Bool?
    
    var value: Int?
    
    var message: String?
    
    var uid: Int?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case isApplied = "is_applied"
        
        case value = "value"
        
        case message = "message"
        
        case uid = "uid"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(String.self, forKey: .code)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        message = try? container.decode(String.self, forKey: .message)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: BaseCartBreakup,
*/

struct BaseCartBreakup: Decodable {
    
    var loyaltyPoints: BaseLoyaltyPoints?
    
    var raw: RawBreakup?
    
    var display: DisplayBreakup?
    
    var coupon: CouponBreakup?
    

    enum CodingKeys: String, CodingKey {
        
        case loyaltyPoints = "loyalty_points"
        
        case raw = "raw"
        
        case display = "display"
        
        case coupon = "coupon"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        loyaltyPoints = try? container.decode(BaseLoyaltyPoints.self, forKey: .loyaltyPoints)
        
        raw = try? container.decode(RawBreakup.self, forKey: .raw)
        
        display = try? container.decode(DisplayBreakup.self, forKey: .display)
        
        coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
        
    }
}

/*
    Model: CartResponse,
*/

struct CartResponse: Decodable {
    
    var items: [Any]?
    
    var deliveryChargeInfo: String?
    
    var paymentOptions: PaymentOptions?
    
    var gstin: String?
    
    var lastModified: String?
    
    var currency: CartCurrency?
    
    var message: String?
    
    var breakupValues: BaseCartBreakup?
    
    var couponText: String?
    
    var checkoutMode: String?
    
    var uid: String?
    
    var restrictCheckout: Bool?
    
    var cartId: Int?
    
    var isValid: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case paymentOptions = "payment_options"
        
        case gstin = "gstin"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case message = "message"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case uid = "uid"
        
        case restrictCheckout = "restrict_checkout"
        
        case cartId = "cart_id"
        
        case isValid = "is_valid"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        message = try? container.decode(String.self, forKey: .message)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
    }
}

/*
    Model: UpdateProductCart,
*/

struct UpdateProductCart: Decodable {
    
    var itemId: Int?
    
    var itemSize: Int?
    
    var quantity: Int?
    
    var articleId: String?
    
    var itemIndex: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case itemId = "item_id"
        
        case itemSize = "item_size"
        
        case quantity = "quantity"
        
        case articleId = "article_id"
        
        case itemIndex = "item_index"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
        
    }
}

/*
    Model: UpdateCartRequest,
*/

struct UpdateCartRequest: Decodable {
    
    var items: [Any]?
    
    var operation: String?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case operation = "operation"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        operation = try? container.decode(String.self, forKey: .operation)
        
    }
}

/*
    Model: PageCoupon,
*/

struct PageCoupon: Decodable {
    
    var total: Int?
    
    var totalItemCount: Int?
    
    var hasPrevious: Bool?
    
    var hasNext: Bool?
    
    var current: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case total = "total"
        
        case totalItemCount = "total_item_count"
        
        case hasPrevious = "has_previous"
        
        case hasNext = "has_next"
        
        case current = "current"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        current = try? container.decode(Int.self, forKey: .current)
        
    }
}

/*
    Model: Coupon,
*/

struct Coupon: Decodable {
    
    var expiresOn: String?
    
    var couponCode: String?
    
    var isApplicable: Bool?
    
    var isApplied: Bool?
    
    var maxDiscountValue: Double?
    
    var subTitle: String?
    
    var message: String?
    
    var minimumCartValue: Double?
    
    var uid: Int?
    
    var couponValue: Double?
    
    var title: String?
    

    enum CodingKeys: String, CodingKey {
        
        case expiresOn = "expires_on"
        
        case couponCode = "coupon_code"
        
        case isApplicable = "is_applicable"
        
        case isApplied = "is_applied"
        
        case maxDiscountValue = "max_discount_value"
        
        case subTitle = "sub_title"
        
        case message = "message"
        
        case minimumCartValue = "minimum_cart_value"
        
        case uid = "uid"
        
        case couponValue = "coupon_value"
        
        case title = "title"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        expiresOn = try? container.decode(String.self, forKey: .expiresOn)
        
        couponCode = try? container.decode(String.self, forKey: .couponCode)
        
        isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
        
        subTitle = try? container.decode(String.self, forKey: .subTitle)
        
        message = try? container.decode(String.self, forKey: .message)
        
        minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        couponValue = try? container.decode(Double.self, forKey: .couponValue)
        
        title = try? container.decode(String.self, forKey: .title)
        
    }
}

/*
    Model: GetCouponResponse,
*/

struct GetCouponResponse: Decodable {
    
    var page: PageCoupon?
    
    var availableCouponList: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case availableCouponList = "available_coupon_list"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode(PageCoupon.self, forKey: .page)
        
        availableCouponList = try? container.decode([Any].self, forKey: .availableCouponList)
        
    }
}

/*
    Model: RawCartCoupon,
*/

struct RawCartCoupon: Decodable {
    
    var gstCharges: Double?
    
    var coupon: Double?
    
    var deliveryCharge: Double?
    
    var fyndCash: Double?
    
    var total: Double?
    
    var vog: Double?
    
    var codCharge: Double?
    
    var convenienceFee: Double?
    
    var discount: Double?
    
    var youSaved: Double?
    
    var subtotal: Double?
    
    var mrpTotal: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case gstCharges = "gst_charges"
        
        case coupon = "coupon"
        
        case deliveryCharge = "delivery_charge"
        
        case fyndCash = "fynd_cash"
        
        case total = "total"
        
        case vog = "vog"
        
        case codCharge = "cod_charge"
        
        case convenienceFee = "convenience_fee"
        
        case discount = "discount"
        
        case youSaved = "you_saved"
        
        case subtotal = "subtotal"
        
        case mrpTotal = "mrp_total"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
        
        coupon = try? container.decode(Double.self, forKey: .coupon)
        
        deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
        
        fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        vog = try? container.decode(Double.self, forKey: .vog)
        
        codCharge = try? container.decode(Double.self, forKey: .codCharge)
        
        convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
        
        discount = try? container.decode(Double.self, forKey: .discount)
        
        youSaved = try? container.decode(Double.self, forKey: .youSaved)
        
        subtotal = try? container.decode(Double.self, forKey: .subtotal)
        
        mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
        
    }
}

/*
    Model: LoyaltyPoints,
*/

struct LoyaltyPoints: Decodable {
    
    var total: Int?
    
    var description: String?
    
    var isApplied: Bool?
    
    var applicable: String?
    

    enum CodingKeys: String, CodingKey {
        
        case total = "total"
        
        case description = "description"
        
        case isApplied = "is_applied"
        
        case applicable = "applicable"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        description = try? container.decode(String.self, forKey: .description)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        applicable = try? container.decode(String.self, forKey: .applicable)
        
    }
}

/*
    Model: CartCoupon,
*/

struct CartCoupon: Decodable {
    
    var code: String?
    
    var isApplied: Bool?
    
    var value: Int?
    
    var message: String?
    
    var uid: Int?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case isApplied = "is_applied"
        
        case value = "value"
        
        case message = "message"
        
        case uid = "uid"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(String.self, forKey: .code)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        message = try? container.decode(String.self, forKey: .message)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: SaveCoupon,
*/

struct SaveCoupon: Decodable {
    
    var raw: RawCartCoupon?
    
    var loyaltyPoints: LoyaltyPoints?
    
    var display: [Any]?
    
    var coupon: CartCoupon?
    

    enum CodingKeys: String, CodingKey {
        
        case raw = "raw"
        
        case loyaltyPoints = "loyalty_points"
        
        case display = "display"
        
        case coupon = "coupon"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        raw = try? container.decode(RawCartCoupon.self, forKey: .raw)
        
        loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
        
        display = try? container.decode([Any].self, forKey: .display)
        
        coupon = try? container.decode(CartCoupon.self, forKey: .coupon)
        
    }
}

/*
    Model: SaveCouponResponse,
*/

struct SaveCouponResponse: Decodable {
    
    var items: [Any]?
    
    var deliveryChargeInfo: String?
    
    var gstin: String?
    
    var lastModified: String?
    
    var message: String?
    
    var breakupValues: SaveCoupon?
    
    var couponText: String?
    
    var checkoutMode: String?
    
    var uid: Int?
    
    var restrictCheckout: Bool?
    
    var cartId: Int?
    
    var isValid: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case gstin = "gstin"
        
        case lastModified = "last_modified"
        
        case message = "message"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case uid = "uid"
        
        case restrictCheckout = "restrict_checkout"
        
        case cartId = "cart_id"
        
        case isValid = "is_valid"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        message = try? container.decode(String.self, forKey: .message)
        
        breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
    }
}

/*
    Model: OfferSeller,
*/

struct OfferSeller: Decodable {
    
    var uid: Int?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: OfferPrice,
*/

struct OfferPrice: Decodable {
    
    var marked: Int?
    
    var bulkEffective: Double?
    
    var effective: Int?
    
    var currencySymbol: String?
    
    var currencyCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case marked = "marked"
        
        case bulkEffective = "bulk_effective"
        
        case effective = "effective"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        marked = try? container.decode(Int.self, forKey: .marked)
        
        bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
        
        effective = try? container.decode(Int.self, forKey: .effective)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
    }
}

/*
    Model: OfferItem,
*/

struct OfferItem: Decodable {
    
    var total: Double?
    
    var margin: Int?
    
    var autoApplied: Bool?
    
    var quantity: Int?
    
    var best: Bool?
    
    var price: OfferPrice?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case total = "total"
        
        case margin = "margin"
        
        case autoApplied = "auto_applied"
        
        case quantity = "quantity"
        
        case best = "best"
        
        case price = "price"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        margin = try? container.decode(Int.self, forKey: .margin)
        
        autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        best = try? container.decode(Bool.self, forKey: .best)
        
        price = try? container.decode(OfferPrice.self, forKey: .price)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: BulkPriceOffer,
*/

struct BulkPriceOffer: Decodable {
    
    var seller: OfferSeller?
    
    var offers: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case seller = "seller"
        
        case offers = "offers"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        seller = try? container.decode(OfferSeller.self, forKey: .seller)
        
        offers = try? container.decode([Any].self, forKey: .offers)
        
    }
}

/*
    Model: BulkPriceResponse,
*/

struct BulkPriceResponse: Decodable {
    
    var data: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try? container.decode([Any].self, forKey: .data)
        
    }
}

/*
    Model: Address,
*/

struct Address: Decodable {
    
    var meta: [String: Any]?
    
    var areaCodeSlug: String?
    
    var isDefaultAddress: Bool?
    
    var name: String?
    
    var geoLocation: [String: Any]?
    
    var addressType: String?
    
    var addressId: Int?
    
    var isActive: Bool?
    
    var landmark: String?
    
    var area: String?
    
    var countryCode: String?
    
    var areaCode: String?
    
    var email: String?
    
    var country: String?
    
    var phone: Int?
    
    var state: String?
    
    var uid: Int?
    
    var address: String?
    
    var checkoutMode: String?
    
    var userId: String?
    
    var city: String?
    

    enum CodingKeys: String, CodingKey {
        
        case meta = "meta"
        
        case areaCodeSlug = "area_code_slug"
        
        case isDefaultAddress = "is_default_address"
        
        case name = "name"
        
        case geoLocation = "geo_location"
        
        case addressType = "address_type"
        
        case addressId = "address_id"
        
        case isActive = "is_active"
        
        case landmark = "landmark"
        
        case area = "area"
        
        case countryCode = "country_code"
        
        case areaCode = "area_code"
        
        case email = "email"
        
        case country = "country"
        
        case phone = "phone"
        
        case state = "state"
        
        case uid = "uid"
        
        case address = "address"
        
        case checkoutMode = "checkout_mode"
        
        case userId = "user_id"
        
        case city = "city"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        name = try? container.decode(String.self, forKey: .name)
        
        geoLocation = try? container.decode([String: Any].self, forKey: .geoLocation)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        area = try? container.decode(String.self, forKey: .area)
        
        countryCode = try? container.decode(String.self, forKey: .countryCode)
        
        areaCode = try? container.decode(String.self, forKey: .areaCode)
        
        email = try? container.decode(String.self, forKey: .email)
        
        country = try? container.decode(String.self, forKey: .country)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        state = try? container.decode(String.self, forKey: .state)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        address = try? container.decode(String.self, forKey: .address)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        city = try? container.decode(String.self, forKey: .city)
        
    }
}

/*
    Model: GetAddressResponse,
*/

struct GetAddressResponse: Decodable {
    
    var address: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case address = "address"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        address = try? container.decode([Any].self, forKey: .address)
        
    }
}

/*
    Model: SaveAddressRequest,
*/

struct SaveAddressRequest: Decodable {
    
    var pincode: Int?
    
    var isDefaultAddress: Bool?
    
    var landmark: String?
    
    var address: String?
    
    var phone: Int?
    
    var area: String?
    
    var name: String?
    
    var addressType: String?
    
    var email: String?
    

    enum CodingKeys: String, CodingKey {
        
        case pincode = "pincode"
        
        case isDefaultAddress = "is_default_address"
        
        case landmark = "landmark"
        
        case address = "address"
        
        case phone = "phone"
        
        case area = "area"
        
        case name = "name"
        
        case addressType = "address_type"
        
        case email = "email"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        address = try? container.decode(String.self, forKey: .address)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        area = try? container.decode(String.self, forKey: .area)
        
        name = try? container.decode(String.self, forKey: .name)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        email = try? container.decode(String.self, forKey: .email)
        
    }
}

/*
    Model: SaveAddressResponse,
*/

struct SaveAddressResponse: Decodable {
    
    var addressId: Int?
    
    var isDefaultAddress: Bool?
    
    var success: String?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case isDefaultAddress = "is_default_address"
        
        case success = "success"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        success = try? container.decode(String.self, forKey: .success)
        
    }
}

/*
    Model: UpdateAddressRequest,
*/

struct UpdateAddressRequest: Decodable {
    
    var pincode: Int?
    
    var isDefaultAddress: Bool?
    
    var landmark: String?
    
    var address: String?
    
    var phone: Int?
    
    var area: String?
    
    var name: String?
    
    var addressType: String?
    
    var email: String?
    

    enum CodingKeys: String, CodingKey {
        
        case pincode = "pincode"
        
        case isDefaultAddress = "is_default_address"
        
        case landmark = "landmark"
        
        case address = "address"
        
        case phone = "phone"
        
        case area = "area"
        
        case name = "name"
        
        case addressType = "address_type"
        
        case email = "email"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        address = try? container.decode(String.self, forKey: .address)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        area = try? container.decode(String.self, forKey: .area)
        
        name = try? container.decode(String.self, forKey: .name)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        email = try? container.decode(String.self, forKey: .email)
        
    }
}

/*
    Model: UpdateAddressResponse,
*/

struct UpdateAddressResponse: Decodable {
    
    var addressId: Int?
    
    var isUpdated: Bool?
    
    var isDefaultAddress: Bool?
    
    var success: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case isUpdated = "is_updated"
        
        case isDefaultAddress = "is_default_address"
        
        case success = "success"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
    }
}

/*
    Model: DeleteAddressResponse,
*/

struct DeleteAddressResponse: Decodable {
    
    var addressId: Int?
    
    var isDeleted: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case isDeleted = "is_deleted"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        isDeleted = try? container.decode(Bool.self, forKey: .isDeleted)
        
    }
}

/*
    Model: SelectCartAddressRequest,
*/

struct SelectCartAddressRequest: Decodable {
    
    var addressId: String?
    
    var billingAddressId: Int?
    
    var uid: String?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case billingAddressId = "billing_address_id"
        
        case uid = "uid"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(String.self, forKey: .addressId)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
    }
}

/*
    Model: UpdateCartPaymentRequest,
*/

struct UpdateCartPaymentRequest: Decodable {
    
    var addressId: Int?
    
    var paymentMode: String?
    
    var merchantCode: String?
    
    var uid: Int?
    
    var aggregatorName: String?
    
    var paymentIdentifier: String?
    

    enum CodingKeys: String, CodingKey {
        
        case addressId = "address_id"
        
        case paymentMode = "payment_mode"
        
        case merchantCode = "merchant_code"
        
        case uid = "uid"
        
        case aggregatorName = "aggregator_name"
        
        case paymentIdentifier = "payment_identifier"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        paymentMode = try? container.decode(String.self, forKey: .paymentMode)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
    }
}

/*
    Model: ShipmentResponse,
*/

struct ShipmentResponse: Decodable {
    
    var items: [Any]?
    
    var promise: String?
    
    var dpOptions: [String: Any]?
    
    var dpId: Int?
    
    var boxType: String?
    
    var shipmentType: String?
    
    var shipments: Int?
    
    var fulfillmentType: String?
    
    var fulfillmentId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case promise = "promise"
        
        case dpOptions = "dp_options"
        
        case dpId = "dp_id"
        
        case boxType = "box_type"
        
        case shipmentType = "shipment_type"
        
        case shipments = "shipments"
        
        case fulfillmentType = "fulfillment_type"
        
        case fulfillmentId = "fulfillment_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        promise = try? container.decode(String.self, forKey: .promise)
        
        dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
        
        dpId = try? container.decode(Int.self, forKey: .dpId)
        
        boxType = try? container.decode(String.self, forKey: .boxType)
        
        shipmentType = try? container.decode(String.self, forKey: .shipmentType)
        
        shipments = try? container.decode(Int.self, forKey: .shipments)
        
        fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
        
        fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
        
    }
}

/*
    Model: CartShipmentsResponse,
*/

struct CartShipmentsResponse: Decodable {
    
    var deliveryChargeInfo: String?
    
    var paymentOptions: PaymentOptions?
    
    var gstin: String?
    
    var lastModified: String?
    
    var currency: CartCurrency?
    
    var message: String?
    
    var shipments: [Any]?
    
    var breakupValues: BaseCartBreakup?
    
    var couponText: String?
    
    var checkoutMode: String?
    
    var uid: String?
    
    var restrictCheckout: Bool?
    
    var cartId: Int?
    
    var isValid: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case paymentOptions = "payment_options"
        
        case gstin = "gstin"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case message = "message"
        
        case shipments = "shipments"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case uid = "uid"
        
        case restrictCheckout = "restrict_checkout"
        
        case cartId = "cart_id"
        
        case isValid = "is_valid"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        message = try? container.decode(String.self, forKey: .message)
        
        shipments = try? container.decode([Any].self, forKey: .shipments)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
    }
}

/*
    Model: CartCheckoutRequest,
*/

struct CartCheckoutRequest: Decodable {
    
    var meta: [String: Any]?
    
    var addressId: Int?
    
    var billingAddressId: Int?
    
    var paymentMode: String?
    
    var fyndstoreEmpId: String?
    
    var extraMeta: [String: Any]?
    
    var merchantCode: String?
    
    var staff: [String: Any]?
    
    var orderingStore: Int?
    
    var aggregator: String?
    
    var paymentAutoConfirm: Bool?
    
    var paymentIdentifier: String?
    
    var billingAddress: [String: Any]?
    
    var paymentParams: [String: Any]?
    
    var callbackUrl: String?
    

    enum CodingKeys: String, CodingKey {
        
        case meta = "meta"
        
        case addressId = "address_id"
        
        case billingAddressId = "billing_address_id"
        
        case paymentMode = "payment_mode"
        
        case fyndstoreEmpId = "fyndstore_emp_id"
        
        case extraMeta = "extra_meta"
        
        case merchantCode = "merchant_code"
        
        case staff = "staff"
        
        case orderingStore = "ordering_store"
        
        case aggregator = "aggregator"
        
        case paymentAutoConfirm = "payment_auto_confirm"
        
        case paymentIdentifier = "payment_identifier"
        
        case billingAddress = "billing_address"
        
        case paymentParams = "payment_params"
        
        case callbackUrl = "callback_url"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
        paymentMode = try? container.decode(String.self, forKey: .paymentMode)
        
        fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
        
        extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        staff = try? container.decode([String: Any].self, forKey: .staff)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
        paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
        
        paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
    }
}

/*
    Model: DeliverySlot,
*/

struct DeliverySlot: Decodable {
    
    var deliverySlotTiming: String?
    
    var default: Bool?
    
    var deliverySlotId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliverySlotTiming = "delivery_slot_timing"
        
        case default = "default"
        
        case deliverySlotId = "delivery_slot_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliverySlotTiming = try? container.decode(String.self, forKey: .deliverySlotTiming)
        
        default = try? container.decode(Bool.self, forKey: .default)
        
        deliverySlotId = try? container.decode(Int.self, forKey: .deliverySlotId)
        
    }
}

/*
    Model: DeliverySlotDate,
*/

struct DeliverySlotDate: Decodable {
    
    var date: String?
    
    var deliverySlot: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case date = "date"
        
        case deliverySlot = "delivery_slot"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        date = try? container.decode(String.self, forKey: .date)
        
        deliverySlot = try? container.decode([Any].self, forKey: .deliverySlot)
        
    }
}

/*
    Model: CheckCart,
*/

struct CheckCart: Decodable {
    
    var items: [Any]?
    
    var deliveryChargeInfo: String?
    
    var paymentOptions: PaymentOptions?
    
    var storeCode: String?
    
    var breakupValues: BaseCartBreakup?
    
    var codAvailable: Bool?
    
    var codCharges: Int?
    
    var deliveryCharges: Int?
    
    var success: Bool?
    
    var orderId: String?
    
    var deliverySlots: [Any]?
    
    var restrictCheckout: Bool?
    
    var cartId: Int?
    
    var userType: String?
    
    var gstin: String?
    
    var currency: CartCurrency?
    
    var message: String?
    
    var uid: String?
    
    var codMessage: String?
    
    var errorMessage: String?
    
    var deliveryChargeOrderValue: Int?
    
    var isValid: Bool?
    
    var lastModified: String?
    
    var couponText: String?
    
    var checkoutMode: String?
    
    var storeEmps: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case paymentOptions = "payment_options"
        
        case storeCode = "store_code"
        
        case breakupValues = "breakup_values"
        
        case codAvailable = "cod_available"
        
        case codCharges = "cod_charges"
        
        case deliveryCharges = "delivery_charges"
        
        case success = "success"
        
        case orderId = "order_id"
        
        case deliverySlots = "delivery_slots"
        
        case restrictCheckout = "restrict_checkout"
        
        case cartId = "cart_id"
        
        case userType = "user_type"
        
        case gstin = "gstin"
        
        case currency = "currency"
        
        case message = "message"
        
        case uid = "uid"
        
        case codMessage = "cod_message"
        
        case errorMessage = "error_message"
        
        case deliveryChargeOrderValue = "delivery_charge_order_value"
        
        case isValid = "is_valid"
        
        case lastModified = "last_modified"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case storeEmps = "store_emps"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        codCharges = try? container.decode(Int.self, forKey: .codCharges)
        
        deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        deliverySlots = try? container.decode([Any].self, forKey: .deliverySlots)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        userType = try? container.decode(String.self, forKey: .userType)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        message = try? container.decode(String.self, forKey: .message)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        codMessage = try? container.decode(String.self, forKey: .codMessage)
        
        errorMessage = try? container.decode(String.self, forKey: .errorMessage)
        
        deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        storeEmps = try? container.decode([Any].self, forKey: .storeEmps)
        
    }
}

/*
    Model: OrderData,
*/

struct OrderData: Decodable {
    
    var orderId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
    }
}

/*
    Model: CartCheckoutResponse,
*/

struct CartCheckoutResponse: Decodable {
    
    var orderId: String?
    
    var cart: CheckCart?
    
    var data: OrderData?
    
    var message: String?
    
    var appInterceptUrl: String?
    
    var callbackUrl: String?
    
    var success: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
        case cart = "cart"
        
        case data = "data"
        
        case message = "message"
        
        case appInterceptUrl = "app_intercept_url"
        
        case callbackUrl = "callback_url"
        
        case success = "success"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        cart = try? container.decode(CheckCart.self, forKey: .cart)
        
        data = try? container.decode(OrderData.self, forKey: .data)
        
        message = try? container.decode(String.self, forKey: .message)
        
        appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
    }
}

/*
    Model: Meta,
*/

struct Meta: Decodable {
    
    var orderingStore: Int?
    
    var selectedStaff: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderingStore = "ordering_store"
        
        case selectedStaff = "selected_staff"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        selectedStaff = try? container.decode(String.self, forKey: .selectedStaff)
        
    }
}

/*
    Model: SharedCartDetails,
*/

struct SharedCartDetails: Decodable {
    
    var meta: Meta?
    
    var source: [String: Any]?
    
    var user: [String: Any]?
    
    var token: String?
    
    var createdOn: String?
    

    enum CodingKeys: String, CodingKey {
        
        case meta = "meta"
        
        case source = "source"
        
        case user = "user"
        
        case token = "token"
        
        case createdOn = "created_on"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meta = try? container.decode(Meta.self, forKey: .meta)
        
        source = try? container.decode([String: Any].self, forKey: .source)
        
        user = try? container.decode([String: Any].self, forKey: .user)
        
        token = try? container.decode(String.self, forKey: .token)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
    }
}

/*
    Model: SharedCartResponse,
*/

struct SharedCartResponse: Decodable {
    
    var items: [Any]?
    
    var deliveryChargeInfo: String?
    
    var paymentOptions: PaymentOptions?
    
    var gstin: String?
    
    var lastModified: String?
    
    var currency: CartCurrency?
    
    var message: String?
    
    var breakupValues: BaseCartBreakup?
    
    var couponText: String?
    
    var checkoutMode: String?
    
    var uid: String?
    
    var sharedCartDetails: SharedCartDetails?
    
    var restrictCheckout: Bool?
    
    var cartId: Int?
    
    var isValid: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case paymentOptions = "payment_options"
        
        case gstin = "gstin"
        
        case lastModified = "last_modified"
        
        case currency = "currency"
        
        case message = "message"
        
        case breakupValues = "breakup_values"
        
        case couponText = "coupon_text"
        
        case checkoutMode = "checkout_mode"
        
        case uid = "uid"
        
        case sharedCartDetails = "shared_cart_details"
        
        case restrictCheckout = "restrict_checkout"
        
        case cartId = "cart_id"
        
        case isValid = "is_valid"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        message = try? container.decode(String.self, forKey: .message)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
    }
}



/*
    Model: Context,
*/

struct Context: Decodable {
    
    var applicationId: String?
    
    var companyId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case applicationId = "application_id"
        
        case companyId = "company_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicationId = try? container.decode(String.self, forKey: .applicationId)
        
        companyId = try? container.decode(String.self, forKey: .companyId)
        
    }
}

/*
    Model: CreatedOn,
*/

struct CreatedOn: Decodable {
    

    enum CodingKeys: String, CodingKey {
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
    }
}

/*
    Model: Asset,
*/

struct Asset: Decodable {
    
    var display: String?
    
    var value: String?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case value = "value"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try? container.decode(String.self, forKey: .display)
        
        value = try? container.decode(String.self, forKey: .value)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: Content,
*/

struct Content: Decodable {
    
    var title: String?
    
    var description: String?
    
    var attachments: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case title = "title"
        
        case description = "description"
        
        case attachments = "attachments"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
        description = try? container.decode(String.self, forKey: .description)
        
        attachments = try? container.decode([Any].self, forKey: .attachments)
        
    }
}

/*
    Model: APIError,
*/

struct APIError: Decodable {
    
    var code: Double?
    
    var error: [String: Any]?
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case error = "error"
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(Double.self, forKey: .code)
        
        error = try? container.decode([String: Any].self, forKey: .error)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: AddTicketPayload,
*/

struct AddTicketPayload: Decodable {
    
    var status: String?
    
    var priority: String?
    
    var category: String?
    
    var content: Content?
    

    enum CodingKeys: String, CodingKey {
        
        case status = "status"
        
        case priority = "priority"
        
        case category = "category"
        
        case content = "content"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        status = try? container.decode(String.self, forKey: .status)
        
        priority = try? container.decode(String.self, forKey: .priority)
        
        category = try? container.decode(String.self, forKey: .category)
        
        content = try? container.decode(Content.self, forKey: .content)
        
    }
}

/*
    Model: Priority,
*/

struct Priority: Decodable {
    
    var key: String?
    
    var display: String?
    
    var color: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
        case color = "color"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        color = try? container.decode(String.self, forKey: .color)
        
    }
}

/*
    Model: Status,
*/

struct Status: Decodable {
    
    var key: String?
    
    var display: String?
    
    var color: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
        case color = "color"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        color = try? container.decode(String.self, forKey: .color)
        
    }
}

/*
    Model: Category,
*/

struct Category: Decodable {
    
    var key: String?
    
    var display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
}

/*
    Model: SubmitButton,
*/

struct SubmitButton: Decodable {
    
    var title: String?
    
    var titleColor: String?
    
    var backgroundColor: String?
    

    enum CodingKeys: String, CodingKey {
        
        case title = "title"
        
        case titleColor = "title_color"
        
        case backgroundColor = "background_color"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
        titleColor = try? container.decode(String.self, forKey: .titleColor)
        
        backgroundColor = try? container.decode(String.self, forKey: .backgroundColor)
        
    }
}

/*
    Model: PollForAssignment,
*/

struct PollForAssignment: Decodable {
    
    var duration: Double?
    
    var message: String?
    
    var successMessage: String?
    
    var failureMessage: String?
    

    enum CodingKeys: String, CodingKey {
        
        case duration = "duration"
        
        case message = "message"
        
        case successMessage = "success_message"
        
        case failureMessage = "failure_message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        duration = try? container.decode(Double.self, forKey: .duration)
        
        message = try? container.decode(String.self, forKey: .message)
        
        successMessage = try? container.decode(String.self, forKey: .successMessage)
        
        failureMessage = try? container.decode(String.self, forKey: .failureMessage)
        
    }
}

/*
    Model: CustomForm,
*/

struct CustomForm: Decodable {
    
    var applicationId: String?
    
    var slug: String?
    
    var headerImage: String?
    
    var title: String?
    
    var description: String?
    
    var loginRequired: Bool?
    
    var shouldNotify: Bool?
    
    var successMessage: String?
    
    var submitButton: SubmitButton?
    
    var inputs: [Any]?
    
    var createdOn: CreatedOn?
    
    var createdBy: [String: Any]?
    
    var pollForAssignment: PollForAssignment?
    
    var id: String?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicationId = try? container.decode(String.self, forKey: .applicationId)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        headerImage = try? container.decode(String.self, forKey: .headerImage)
        
        title = try? container.decode(String.self, forKey: .title)
        
        description = try? container.decode(String.self, forKey: .description)
        
        loginRequired = try? container.decode(Bool.self, forKey: .loginRequired)
        
        shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
        
        successMessage = try? container.decode(String.self, forKey: .successMessage)
        
        submitButton = try? container.decode(SubmitButton.self, forKey: .submitButton)
        
        inputs = try? container.decode([Any].self, forKey: .inputs)
        
        createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
        
        id = try? container.decode(String.self, forKey: .id)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
    }
}

/*
    Model: TicketHistory,
*/

struct TicketHistory: Decodable {
    
    var type: String?
    
    var value: [String: Any]?
    
    var ticketId: String?
    
    var createdOn: CreatedOn?
    
    var createdBy: [String: Any]?
    
    var id: String?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode([String: Any].self, forKey: .value)
        
        ticketId = try? container.decode(String.self, forKey: .ticketId)
        
        createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        id = try? container.decode(String.self, forKey: .id)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
    }
}

/*
    Model: Ticket,
*/

struct Ticket: Decodable {
    
    var context: Context?
    
    var createdOn: CreatedOn?
    
    var responseId: String?
    
    var content: Content?
    
    var ticketId: String?
    
    var category: Category?
    
    var source: String?
    
    var status: Status?
    
    var priority: Priority?
    
    var createdBy: [String: Any]?
    
    var assignedTo: [String: Any]?
    
    var tags: [Any]?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        context = try? container.decode(Context.self, forKey: .context)
        
        createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
        
        responseId = try? container.decode(String.self, forKey: .responseId)
        
        content = try? container.decode(Content.self, forKey: .content)
        
        ticketId = try? container.decode(String.self, forKey: .ticketId)
        
        category = try? container.decode(Category.self, forKey: .category)
        
        source = try? container.decode(String.self, forKey: .source)
        
        status = try? container.decode(Status.self, forKey: .status)
        
        priority = try? container.decode(Priority.self, forKey: .priority)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        assignedTo = try? container.decode([String: Any].self, forKey: .assignedTo)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
        customJson = try? container.decode([String: Any].self, forKey: .customJson)
        
        id = try? container.decode(String.self, forKey: .id)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
    }
}



/*
    Model: ThemesSchema,
*/

struct ThemesSchema: Decodable {
    
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
    
    var tags: [Any]?
    
    var src: [String: Any]?
    
    var assets: [String: Any]?
    
    var availablePages: [Any]?
    
    var pages: [String: Any]?
    
    var availableSections: [Any]?
    
    var sections: [Any]?
    
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

    init(from decoder: Decoder) throws {
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
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
        src = try? container.decode([String: Any].self, forKey: .src)
        
        assets = try? container.decode([String: Any].self, forKey: .assets)
        
        availablePages = try? container.decode([Any].self, forKey: .availablePages)
        
        pages = try? container.decode([String: Any].self, forKey: .pages)
        
        availableSections = try? container.decode([Any].self, forKey: .availableSections)
        
        sections = try? container.decode([Any].self, forKey: .sections)
        
        constants = try? container.decode([String: Any].self, forKey: .constants)
        
        styles = try? container.decode([String: Any].self, forKey: .styles)
        
        config = try? container.decode([String: Any].self, forKey: .config)
        
        settings = try? container.decode([String: Any].self, forKey: .settings)
        
        font = try? container.decode([String: Any].self, forKey: .font)
        
        id = try? container.decode(String.self, forKey: .id)
        
        v = try? container.decode(Int.self, forKey: .v)
        
        colors = try? container.decode([String: Any].self, forKey: .colors)
        
    }
}

/*
    Model: pagesSchema,
*/

struct pagesSchema: Decodable {
    
    var text: String?
    
    var path: String?
    
    var type: String?
    
    var value: String?
    
    var sections: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case text = "text"
        
        case path = "path"
        
        case type = "type"
        
        case value = "value"
        
        case sections = "sections"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        text = try? container.decode(String.self, forKey: .text)
        
        path = try? container.decode(String.self, forKey: .path)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode(String.self, forKey: .value)
        
        sections = try? container.decode([Any].self, forKey: .sections)
        
    }
}

/*
    Model: availableSectionSchema,
*/

struct availableSectionSchema: Decodable {
    
    var blocks: [Any]?
    
    var name: String?
    
    var label: String?
    
    var props: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case blocks = "blocks"
        
        case name = "name"
        
        case label = "label"
        
        case props = "props"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        blocks = try? container.decode([Any].self, forKey: .blocks)
        
        name = try? container.decode(String.self, forKey: .name)
        
        label = try? container.decode(String.self, forKey: .label)
        
        props = try? container.decode([Any].self, forKey: .props)
        
    }
}

/*
    Model: sectionSchema,
*/

struct sectionSchema: Decodable {
    
    var pageKey: String?
    
    var pageSections: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case pageKey = "page_key"
        
        case pageSections = "page_sections"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        pageKey = try? container.decode(String.self, forKey: .pageKey)
        
        pageSections = try? container.decode([Any].self, forKey: .pageSections)
        
    }
}



/*
    Model: PlatformSchema,
*/

struct PlatformSchema: Decodable {
    
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

    init(from decoder: Decoder) throws {
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
}

/*
    Model: UserSchema,
*/

struct UserSchema: Decodable {
    
    var firstName: String?
    
    var lastName: String?
    
    var phoneNumbers: [Any]?
    
    var emails: [Any]?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        firstName = try? container.decode(String.self, forKey: .firstName)
        
        lastName = try? container.decode(String.self, forKey: .lastName)
        
        phoneNumbers = try? container.decode([Any].self, forKey: .phoneNumbers)
        
        emails = try? container.decode([Any].self, forKey: .emails)
        
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
}



/*
    Model: ApplicationLegal,
*/

struct ApplicationLegal: Decodable {
    
    var application: String?
    
    var tnc: String?
    
    var policy: String?
    
    var faq: [Any]?
    
    var id: String?
    
    var updatedAt: String?
    
    var createdAt: String?
    
    var v: Double?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        application = try? container.decode(String.self, forKey: .application)
        
        tnc = try? container.decode(String.self, forKey: .tnc)
        
        policy = try? container.decode(String.self, forKey: .policy)
        
        faq = try? container.decode([Any].self, forKey: .faq)
        
        id = try? container.decode(String.self, forKey: .id)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        v = try? container.decode(Double.self, forKey: .v)
        
    }
}

/*
    Model: Seo,
*/

struct Seo: Decodable {
    
    var app: String?
    
    var robotsTxt: String?
    
    var sitemapEnabled: Bool?
    
    var customMetaTags: [Any]?
    
    var appDetails: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case app = "app"
        
        case robotsTxt = "robots_txt"
        
        case sitemapEnabled = "sitemap_enabled"
        
        case customMetaTags = "custom_meta_tags"
        
        case appDetails = "app_details"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        app = try? container.decode(String.self, forKey: .app)
        
        robotsTxt = try? container.decode(String.self, forKey: .robotsTxt)
        
        sitemapEnabled = try? container.decode(Bool.self, forKey: .sitemapEnabled)
        
        customMetaTags = try? container.decode([Any].self, forKey: .customMetaTags)
        
        appDetails = try? container.decode([String: Any].self, forKey: .appDetails)
        
    }
}

/*
    Model: Announcement,
*/

struct Announcement: Decodable {
    
    var announcements: [String: Any]?
    
    var refreshRate: Int?
    
    var refreshPages: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case announcements = "announcements"
        
        case refreshRate = "refresh_rate"
        
        case refreshPages = "refresh_pages"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        announcements = try? container.decode([String: Any].self, forKey: .announcements)
        
        refreshRate = try? container.decode(Int.self, forKey: .refreshRate)
        
        refreshPages = try? container.decode([Any].self, forKey: .refreshPages)
        
    }
}

/*
    Model: Navigation,
*/

struct Navigation: Decodable {
    
    var name: String?
    
    var slug: String?
    
    var orientation: String?
    
    var createdBy: [String: Any]?
    
    var dateMeta: [String: Any]?
    
    var id: String?
    
    var position: String?
    
    var application: String?
    
    var platform: String?
    
    var navigation: NavigationRef?
    

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

    init(from decoder: Decoder) throws {
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
}

/*
    Model: NavigationRef,
*/

struct NavigationRef: Decodable {
    
    var acl: [Any]?
    
    var localeLanguage: [String: Any]?
    
    var image: String?
    
    var type: String?
    
    var action: [String: Any]?
    
    var active: Bool?
    
    var display: String?
    
    var sortOrder: Int?
    
    var subNavigation: [String: Any]?
    

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

    init(from decoder: Decoder) throws {
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
}

/*
    Model: LandingPage,
*/

struct LandingPage: Decodable {
    
    var slug: String?
    
    var action: [String: Any]?
    
    var platform: [Any]?
    
    var createdBy: [String: Any]?
    
    var dateMeta: [String: Any]?
    
    var id: String?
    
    var application: String?
    

    enum CodingKeys: String, CodingKey {
        
        case slug = "slug"
        
        case action = "action"
        
        case platform = "platform"
        
        case createdBy = "created_by"
        
        case dateMeta = "date_meta"
        
        case id = "_id"
        
        case application = "application"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        action = try? container.decode([String: Any].self, forKey: .action)
        
        platform = try? container.decode([Any].self, forKey: .platform)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
        
        id = try? container.decode(String.self, forKey: .id)
        
        application = try? container.decode(String.self, forKey: .application)
        
    }
}

/*
    Model: Slideshow,
*/

struct Slideshow: Decodable {
    
    var id: String?
    
    var slug: String?
    
    var dateMeta: [String: Any]?
    
    var application: String?
    
    var name: String?
    
    var platform: String?
    
    var configuration: [String: Any]?
    
    var media: [Any]?
    
    var active: Bool?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
        
        application = try? container.decode(String.self, forKey: .application)
        
        name = try? container.decode(String.self, forKey: .name)
        
        platform = try? container.decode(String.self, forKey: .platform)
        
        configuration = try? container.decode([String: Any].self, forKey: .configuration)
        
        media = try? container.decode([Any].self, forKey: .media)
        
        active = try? container.decode(Bool.self, forKey: .active)
        
    }
}

/*
    Model: Faq,
*/

struct Faq: Decodable {
    
    var id: String?
    
    var question: String?
    
    var answer: String?
    
    var slug: String?
    
    var application: String?
    
    var v: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "_id"
        
        case question = "question"
        
        case answer = "answer"
        
        case slug = "slug"
        
        case application = "application"
        
        case v = "__v"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        question = try? container.decode(String.self, forKey: .question)
        
        answer = try? container.decode(String.self, forKey: .answer)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        application = try? container.decode(String.self, forKey: .application)
        
        v = try? container.decode(Int.self, forKey: .v)
        
    }
}

/*
    Model: CustomPage,
*/

struct CustomPage: Decodable {
    
    var data: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
    }
}

/*
    Model: CustomBlog,
*/

struct CustomBlog: Decodable {
    
    var data: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
    }
}

/*
    Model: Support,
*/

struct Support: Decodable {
    
    var created: Bool?
    
    var id: String?
    
    var configType: String?
    
    var application: String?
    
    var createdAt: String?
    
    var updatedAt: String?
    
    var contact: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case created = "created"
        
        case id = "_id"
        
        case configType = "config_type"
        
        case application = "application"
        
        case createdAt = "created_at"
        
        case updatedAt = "updated_at"
        
        case contact = "contact"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        created = try? container.decode(Bool.self, forKey: .created)
        
        id = try? container.decode(String.self, forKey: .id)
        
        configType = try? container.decode(String.self, forKey: .configType)
        
        application = try? container.decode(String.self, forKey: .application)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        contact = try? container.decode([String: Any].self, forKey: .contact)
        
    }
}

/*
    Model: TagsSchema,
*/

struct TagsSchema: Decodable {
    
    var application: String?
    
    var id: String?
    
    var tags: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case application = "application"
        
        case id = "_id"
        
        case tags = "tags"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        application = try? container.decode(String.self, forKey: .application)
        
        id = try? container.decode(String.self, forKey: .id)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
    }
}



/*
    Model: CommunicationConsentReq,
*/

struct CommunicationConsentReq: Decodable {
    
    var response: String?
    
    var action: String?
    
    var channel: String?
    

    enum CodingKeys: String, CodingKey {
        
        case response = "response"
        
        case action = "action"
        
        case channel = "channel"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        response = try? container.decode(String.self, forKey: .response)
        
        action = try? container.decode(String.self, forKey: .action)
        
        channel = try? container.decode(String.self, forKey: .channel)
        
    }
}

/*
    Model: CommunicationConsentRes,
*/

struct CommunicationConsentRes: Decodable {
    
    var appId: String?
    
    var userId: String?
    
    var channels: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case appId = "appId"
        
        case userId = "userId"
        
        case channels = "channels"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        channels = try? container.decode([String: Any].self, forKey: .channels)
        
    }
}

/*
    Model: CommunicationConsent,
*/

struct CommunicationConsent: Decodable {
    
    var appId: String?
    
    var userId: String?
    
    var channels: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case appId = "appId"
        
        case userId = "userId"
        
        case channels = "channels"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appId = try? container.decode(String.self, forKey: .appId)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        channels = try? container.decode([String: Any].self, forKey: .channels)
        
    }
}

/*
    Model: PushtokenReq,
*/

struct PushtokenReq: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(String.self, forKey: .action)
        
        bundleIdentifier = try? container.decode(String.self, forKey: .bundleIdentifier)
        
        pushToken = try? container.decode(String.self, forKey: .pushToken)
        
        uniqueDeviceId = try? container.decode(String.self, forKey: .uniqueDeviceId)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: PushtokenRes,
*/

struct PushtokenRes: Decodable {
    
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

    init(from decoder: Decoder) throws {
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
}



/*
    Model: qrResp,
*/

struct qrResp: Decodable {
    
    var link: String?
    
    var svg: String?
    

    enum CodingKeys: String, CodingKey {
        
        case link = "link"
        
        case svg = "svg"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        link = try? container.decode(String.self, forKey: .link)
        
        svg = try? container.decode(String.self, forKey: .svg)
        
    }
}

/*
    Model: redirect_device,
*/

struct redirect_device: Decodable {
    
    var link: String?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case link = "link"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        link = try? container.decode(String.self, forKey: .link)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: redirects,
*/

struct redirects: Decodable {
    
    var ios: redirect_device?
    
    var android: redirect_device?
    
    var web: [String: Any]?
    
    var forceWeb: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case ios = "ios"
        
        case android = "android"
        
        case web = "web"
        
        case forceWeb = "force_web"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        ios = try? container.decode(redirect_device.self, forKey: .ios)
        
        android = try? container.decode(redirect_device.self, forKey: .android)
        
        web = try? container.decode([String: Any].self, forKey: .web)
        
        forceWeb = try? container.decode(Bool.self, forKey: .forceWeb)
        
    }
}

/*
    Model: shortUrlReq,
*/

struct shortUrlReq: Decodable {
    
    var title: String?
    
    var url: String?
    
    var hash: String?
    
    var active: String?
    
    var type: String?
    
    var expireAt: String?
    
    var enableTracking: Bool?
    
    var redirects: redirects?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
        url = try? container.decode(String.self, forKey: .url)
        
        hash = try? container.decode(String.self, forKey: .hash)
        
        active = try? container.decode(String.self, forKey: .active)
        
        type = try? container.decode(String.self, forKey: .type)
        
        expireAt = try? container.decode(String.self, forKey: .expireAt)
        
        enableTracking = try? container.decode(Bool.self, forKey: .enableTracking)
        
        redirects = try? container.decode(redirects.self, forKey: .redirects)
        
    }
}

/*
    Model: shortUrlRes,
*/

struct shortUrlRes: Decodable {
    
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
    
    var redirects: redirects?
    

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

    init(from decoder: Decoder) throws {
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
        
        redirects = try? container.decode(redirects.self, forKey: .redirects)
        
    }
}



/*
    Model: failedResponse,
*/

struct failedResponse: Decodable {
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: cdn,
*/

struct cdn: Decodable {
    
    var url: String?
    

    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        url = try? container.decode(String.self, forKey: .url)
        
    }
}

/*
    Model: upload,
*/

struct upload: Decodable {
    
    var expiry: Int?
    
    var url: String?
    

    enum CodingKeys: String, CodingKey {
        
        case expiry = "expiry"
        
        case url = "url"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        expiry = try? container.decode(Int.self, forKey: .expiry)
        
        url = try? container.decode(String.self, forKey: .url)
        
    }
}

/*
    Model: startResponse,
*/

struct startResponse: Decodable {
    
    var fileName: String?
    
    var filePath: String?
    
    var contentType: String?
    
    var method: String?
    
    var namespace: String?
    
    var operation: String?
    
    var size: Int?
    
    var upload: upload?
    
    var cdn: cdn?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        fileName = try? container.decode(String.self, forKey: .fileName)
        
        filePath = try? container.decode(String.self, forKey: .filePath)
        
        contentType = try? container.decode(String.self, forKey: .contentType)
        
        method = try? container.decode(String.self, forKey: .method)
        
        namespace = try? container.decode(String.self, forKey: .namespace)
        
        operation = try? container.decode(String.self, forKey: .operation)
        
        size = try? container.decode(Int.self, forKey: .size)
        
        upload = try? container.decode(upload.self, forKey: .upload)
        
        cdn = try? container.decode(cdn.self, forKey: .cdn)
        
    }
}

/*
    Model: startRequest,
*/

struct startRequest: Decodable {
    
    var fileName: String?
    
    var contentType: String?
    
    var size: Int?
    
    var tags: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case fileName = "file_name"
        
        case contentType = "content_type"
        
        case size = "size"
        
        case tags = "tags"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        fileName = try? container.decode(String.self, forKey: .fileName)
        
        contentType = try? container.decode(String.self, forKey: .contentType)
        
        size = try? container.decode(Int.self, forKey: .size)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
    }
}

/*
    Model: completeResponse,
*/

struct completeResponse: Decodable {
    
    var id: String?
    
    var fileName: String?
    
    var filePath: String?
    
    var contentType: String?
    
    var method: String?
    
    var namespace: String?
    
    var operation: String?
    
    var size: Int?
    
    var upload: upload?
    
    var cdn: cdn?
    
    var success: String?
    
    var tags: [Any]?
    
    var createdOn: String?
    
    var modifiedOn: String?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        fileName = try? container.decode(String.self, forKey: .fileName)
        
        filePath = try? container.decode(String.self, forKey: .filePath)
        
        contentType = try? container.decode(String.self, forKey: .contentType)
        
        method = try? container.decode(String.self, forKey: .method)
        
        namespace = try? container.decode(String.self, forKey: .namespace)
        
        operation = try? container.decode(String.self, forKey: .operation)
        
        size = try? container.decode(Int.self, forKey: .size)
        
        upload = try? container.decode(upload.self, forKey: .upload)
        
        cdn = try? container.decode(cdn.self, forKey: .cdn)
        
        success = try? container.decode(String.self, forKey: .success)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
        modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
        
    }
}



/*
    Model: Currency,
*/

struct Currency: Decodable {
    
    var id: String?
    
    var isActive: Bool?
    
    var name: String?
    
    var code: String?
    
    var createdAt: String?
    
    var updatedAt: String?
    
    var decimalDigits: Int?
    
    var symbol: String?
    

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

    init(from decoder: Decoder) throws {
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
}

/*
    Model: Domain,
*/

struct Domain: Decodable {
    
    var verified: Bool?
    
    var isPrimary: Bool?
    
    var isDefault: Bool?
    
    var isShortlink: Bool?
    
    var id: String?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case verified = "verified"
        
        case isPrimary = "is_primary"
        
        case isDefault = "is_default"
        
        case isShortlink = "is_shortlink"
        
        case id = "_id"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        verified = try? container.decode(Bool.self, forKey: .verified)
        
        isPrimary = try? container.decode(Bool.self, forKey: .isPrimary)
        
        isDefault = try? container.decode(Bool.self, forKey: .isDefault)
        
        isShortlink = try? container.decode(Bool.self, forKey: .isShortlink)
        
        id = try? container.decode(String.self, forKey: .id)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: Application,
*/

struct Application: Decodable {
    
    var website: [String: Any]?
    
    var cors: [String: Any]?
    
    var auth: [String: Any]?
    
    var description: String?
    
    var channelType: String?
    
    var cacheTtl: Int?
    
    var internal: Bool?
    
    var isActive: Bool?
    
    var id: String?
    
    var name: String?
    
    var owner: String?
    
    var companyId: Int?
    
    var token: String?
    
    var redirections: [Any]?
    
    var meta: [Any]?
    
    var createdAt: String?
    
    var updatedAt: String?
    
    var v: Int?
    
    var banner: [String: Any]?
    
    var logo: [String: Any]?
    
    var favicon: [String: Any]?
    
    var domains: [Any]?
    
    var appType: String?
    
    var mobileLogo: [String: Any]?
    
    var domain: Domain?
    
    var id: String?
    

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

    init(from decoder: Decoder) throws {
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
        
        redirections = try? container.decode([Any].self, forKey: .redirections)
        
        meta = try? container.decode([Any].self, forKey: .meta)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        v = try? container.decode(Int.self, forKey: .v)
        
        banner = try? container.decode([String: Any].self, forKey: .banner)
        
        logo = try? container.decode([String: Any].self, forKey: .logo)
        
        favicon = try? container.decode([String: Any].self, forKey: .favicon)
        
        domains = try? container.decode([Any].self, forKey: .domains)
        
        appType = try? container.decode(String.self, forKey: .appType)
        
        mobileLogo = try? container.decode([String: Any].self, forKey: .mobileLogo)
        
        domain = try? container.decode(Domain.self, forKey: .domain)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
}

/*
    Model: NotFound,
*/

struct NotFound: Decodable {
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: ApplicationAboutResponse,
*/

struct ApplicationAboutResponse: Decodable {
    
    var applicationInfo: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case applicationInfo = "application_info"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicationInfo = try? container.decode([String: Any].self, forKey: .applicationInfo)
        
    }
}

/*
    Model: ApplicationDetailResponse,
*/

struct ApplicationDetailResponse: Decodable {
    
    var name: String?
    
    var description: String?
    
    var logo: [String: Any]?
    
    var mobileLogo: [String: Any]?
    
    var favicon: [String: Any]?
    
    var banner: [String: Any]?
    
    var domain: Domain?
    
    var domains: [Any]?
    
    var companyId: Int?
    
    var id: String?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        description = try? container.decode(String.self, forKey: .description)
        
        logo = try? container.decode([String: Any].self, forKey: .logo)
        
        mobileLogo = try? container.decode([String: Any].self, forKey: .mobileLogo)
        
        favicon = try? container.decode([String: Any].self, forKey: .favicon)
        
        banner = try? container.decode([String: Any].self, forKey: .banner)
        
        domain = try? container.decode(Domain.self, forKey: .domain)
        
        domains = try? container.decode([Any].self, forKey: .domains)
        
        companyId = try? container.decode(Int.self, forKey: .companyId)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
}

/*
    Model: AppVersionRequest,
*/

struct AppVersionRequest: Decodable {
    
    var application: ApplicationVersionRequest?
    
    var device: Device?
    
    var locale: String?
    
    var timezone: String?
    

    enum CodingKeys: String, CodingKey {
        
        case application = "application"
        
        case device = "device"
        
        case locale = "locale"
        
        case timezone = "timezone"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        application = try? container.decode(ApplicationVersionRequest.self, forKey: .application)
        
        device = try? container.decode(Device.self, forKey: .device)
        
        locale = try? container.decode(String.self, forKey: .locale)
        
        timezone = try? container.decode(String.self, forKey: .timezone)
        
    }
}

/*
    Model: ApplicationVersionRequest,
*/

struct ApplicationVersionRequest: Decodable {
    
    var id: String?
    
    var name: String?
    
    var namespace: String?
    
    var token: String?
    
    var version: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case name = "name"
        
        case namespace = "namespace"
        
        case token = "token"
        
        case version = "version"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        name = try? container.decode(String.self, forKey: .name)
        
        namespace = try? container.decode(String.self, forKey: .namespace)
        
        token = try? container.decode(String.self, forKey: .token)
        
        version = try? container.decode(String.self, forKey: .version)
        
    }
}

/*
    Model: Device,
*/

struct Device: Decodable {
    
    var build: Int?
    
    var model: String?
    
    var os: OS?
    

    enum CodingKeys: String, CodingKey {
        
        case build = "build"
        
        case model = "model"
        
        case os = "os"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        build = try? container.decode(Int.self, forKey: .build)
        
        model = try? container.decode(String.self, forKey: .model)
        
        os = try? container.decode(OS.self, forKey: .os)
        
    }
}

/*
    Model: OS,
*/

struct OS: Decodable {
    
    var name: String?
    
    var version: String?
    

    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        
        case version = "version"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        
        version = try? container.decode(String.self, forKey: .version)
        
    }
}

/*
    Model: AppFeatureResponse,
*/

struct AppFeatureResponse: Decodable {
    
    var feature: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case feature = "feature"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        feature = try? container.decode([String: Any].self, forKey: .feature)
        
    }
}

/*
    Model: Store,
*/

struct Store: Decodable {
    
    var address: [String: Any]?
    
    var id: String?
    
    var uid: Int?
    
    var name: String?
    
    var displayName: String?
    
    var storeType: String?
    
    var storeCode: String?
    
    var pincode: Int?
    
    var code: String?
    

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

    init(from decoder: Decoder) throws {
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
}

/*
    Model: OrderingStores,
*/

struct OrderingStores: Decodable {
    
    var page: [String: Any]?
    
    var items: [Any]?
    
    var deployedStores: [Any]?
    
    var allStores: Bool?
    
    var enabled: Bool?
    
    var type: String?
    
    var id: String?
    
    var app: String?
    
    var v: Int?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode([String: Any].self, forKey: .page)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        deployedStores = try? container.decode([Any].self, forKey: .deployedStores)
        
        allStores = try? container.decode(Bool.self, forKey: .allStores)
        
        enabled = try? container.decode(Bool.self, forKey: .enabled)
        
        type = try? container.decode(String.self, forKey: .type)
        
        id = try? container.decode(String.self, forKey: .id)
        
        app = try? container.decode(String.self, forKey: .app)
        
        v = try? container.decode(Int.self, forKey: .v)
        
    }
}

/*
    Model: ApplicationInformation,
*/

struct ApplicationInformation: Decodable {
    
    var address: [String: Any]?
    
    var support: [String: Any]?
    
    var socialLinks: [String: Any]?
    
    var links: [Any]?
    
    var copyrightText: String?
    
    var id: String?
    
    var businessHighlights: [Any]?
    
    var application: String?
    
    var createdAt: String?
    
    var updatedAt: String?
    
    var v: Int?
    

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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        address = try? container.decode([String: Any].self, forKey: .address)
        
        support = try? container.decode([String: Any].self, forKey: .support)
        
        socialLinks = try? container.decode([String: Any].self, forKey: .socialLinks)
        
        links = try? container.decode([Any].self, forKey: .links)
        
        copyrightText = try? container.decode(String.self, forKey: .copyrightText)
        
        id = try? container.decode(String.self, forKey: .id)
        
        businessHighlights = try? container.decode([Any].self, forKey: .businessHighlights)
        
        application = try? container.decode(String.self, forKey: .application)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        v = try? container.decode(Int.self, forKey: .v)
        
    }
}

/*
    Model: LanguageResponse,
*/

struct LanguageResponse: Decodable {
    

    enum CodingKeys: String, CodingKey {
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
    }
}

/*
    Model: TokensResponse,
*/

struct TokensResponse: Decodable {
    
    var tokens: [String: Any]?
    
    var id: String?
    
    var application: String?
    
    var createdAt: String?
    
    var updatedAt: String?
    
    var v: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case tokens = "tokens"
        
        case id = "_id"
        
        case application = "application"
        
        case createdAt = "createdAt"
        
        case updatedAt = "updatedAt"
        
        case v = "__v"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        tokens = try? container.decode([String: Any].self, forKey: .tokens)
        
        id = try? container.decode(String.self, forKey: .id)
        
        application = try? container.decode(String.self, forKey: .application)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        v = try? container.decode(Int.self, forKey: .v)
        
    }
}



/*
    Model: AggregatorConfigDetail,
*/

struct AggregatorConfigDetail: Decodable {
    
    var key: String?
    
    var secret: String?
    
    var userId: String?
    
    var sdk: Bool?
    
    var merchantId: String?
    
    var pin: String?
    
    var verifyApi: String?
    
    var api: String?
    
    var configType: String?
    
    var merchantKey: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case secret = "secret"
        
        case userId = "user_id"
        
        case sdk = "sdk"
        
        case merchantId = "merchant_id"
        
        case pin = "pin"
        
        case verifyApi = "verify_api"
        
        case api = "api"
        
        case configType = "config_type"
        
        case merchantKey = "merchant_key"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        secret = try? container.decode(String.self, forKey: .secret)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        sdk = try? container.decode(Bool.self, forKey: .sdk)
        
        merchantId = try? container.decode(String.self, forKey: .merchantId)
        
        pin = try? container.decode(String.self, forKey: .pin)
        
        verifyApi = try? container.decode(String.self, forKey: .verifyApi)
        
        api = try? container.decode(String.self, forKey: .api)
        
        configType = try? container.decode(String.self, forKey: .configType)
        
        merchantKey = try? container.decode(String.self, forKey: .merchantKey)
        
    }
}

/*
    Model: AggregatorsConfigDetailResponse,
*/

struct AggregatorsConfigDetailResponse: Decodable {
    
    var juspay: AggregatorConfigDetail?
    
    var success: Bool?
    
    var ccavenue: AggregatorConfigDetail?
    
    var payumoney: AggregatorConfigDetail?
    
    var rupifi: AggregatorConfigDetail?
    
    var razorpay: AggregatorConfigDetail?
    
    var simpl: AggregatorConfigDetail?
    
    var env: String?
    
    var mswipe: AggregatorConfigDetail?
    
    var stripe: AggregatorConfigDetail?
    

    enum CodingKeys: String, CodingKey {
        
        case juspay = "juspay"
        
        case success = "success"
        
        case ccavenue = "ccavenue"
        
        case payumoney = "payumoney"
        
        case rupifi = "rupifi"
        
        case razorpay = "razorpay"
        
        case simpl = "simpl"
        
        case env = "env"
        
        case mswipe = "mswipe"
        
        case stripe = "stripe"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
        
        payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
        
        rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
        
        razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
        
        simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
        
        env = try? container.decode(String.self, forKey: .env)
        
        mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
        
        stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
        
    }
}

/*
    Model: ErrorCodeAndDescription,
*/

struct ErrorCodeAndDescription: Decodable {
    
    var description: String?
    
    var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case code = "code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
}

/*
    Model: HttpErrorCodeAndResponse,
*/

struct HttpErrorCodeAndResponse: Decodable {
    
    var error: ErrorCodeAndDescription?
    
    var success: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case error = "error"
        
        case success = "success"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        error = try? container.decode(ErrorCodeAndDescription.self, forKey: .error)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
    }
}

/*
    Model: AttachCardRequest,
*/

struct AttachCardRequest: Decodable {
    
    var cardId: String?
    
    var refresh: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case cardId = "card_id"
        
        case refresh = "refresh"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cardId = try? container.decode(String.self, forKey: .cardId)
        
        refresh = try? container.decode(Bool.self, forKey: .refresh)
        
    }
}

/*
    Model: AttachCardsResponse,
*/

struct AttachCardsResponse: Decodable {
    
    var success: Bool?
    
    var data: [String: Any]?
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case data = "data"
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: CardPaymentGateway,
*/

struct CardPaymentGateway: Decodable {
    
    var customerId: String?
    
    var api: String?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case customerId = "customer_id"
        
        case api = "api"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        customerId = try? container.decode(String.self, forKey: .customerId)
        
        api = try? container.decode(String.self, forKey: .api)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: ActiveCardPaymentGatewayResponse,
*/

struct ActiveCardPaymentGatewayResponse: Decodable {
    
    var cards: ?
    
    var success: Bool?
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cards = "cards"
        
        case success = "success"
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cards = try? container.decode(.self, forKey: .cards)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: ListCardsResponse,
*/

struct ListCardsResponse: Decodable {
    
    var success: Bool?
    
    var data: [Any]?
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case data = "data"
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        data = try? container.decode([Any].self, forKey: .data)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: DeletehCardRequest,
*/

struct DeletehCardRequest: Decodable {
    
    var cardId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case cardId = "card_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cardId = try? container.decode(String.self, forKey: .cardId)
        
    }
}

/*
    Model: DeleteCardsResponse,
*/

struct DeleteCardsResponse: Decodable {
    
    var success: Bool?
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: ValidateCustomerRequest,
*/

struct ValidateCustomerRequest: Decodable {
    
    var payload: String?
    
    var transactionAmountInPaise: Int?
    
    var phoneNumber: String?
    
    var merchantParams: [String: Any]?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case payload = "payload"
        
        case transactionAmountInPaise = "transaction_amount_in_paise"
        
        case phoneNumber = "phone_number"
        
        case merchantParams = "merchant_params"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        payload = try? container.decode(String.self, forKey: .payload)
        
        transactionAmountInPaise = try? container.decode(Int.self, forKey: .transactionAmountInPaise)
        
        phoneNumber = try? container.decode(String.self, forKey: .phoneNumber)
        
        merchantParams = try? container.decode([String: Any].self, forKey: .merchantParams)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: ValidateCustomerResponse,
*/

struct ValidateCustomerResponse: Decodable {
    
    var success: Bool?
    
    var data: [String: Any]?
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case data = "data"
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: ChargeCustomerRequest,
*/

struct ChargeCustomerRequest: Decodable {
    
    var orderId: String?
    
    var amount: Int?
    
    var verified: Bool?
    
    var transactionToken: String?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
        case amount = "amount"
        
        case verified = "verified"
        
        case transactionToken = "transaction_token"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        amount = try? container.decode(Int.self, forKey: .amount)
        
        verified = try? container.decode(Bool.self, forKey: .verified)
        
        transactionToken = try? container.decode(String.self, forKey: .transactionToken)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: ChargeCustomerResponse,
*/

struct ChargeCustomerResponse: Decodable {
    
    var orderId: String?
    
    var success: Bool?
    
    var deliveryAddressId: String?
    
    var status: String?
    
    var message: String?
    
    var cartId: String?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
        case success = "success"
        
        case deliveryAddressId = "delivery_address_id"
        
        case status = "status"
        
        case message = "message"
        
        case cartId = "cart_id"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
        
        status = try? container.decode(String.self, forKey: .status)
        
        message = try? container.decode(String.self, forKey: .message)
        
        cartId = try? container.decode(String.self, forKey: .cartId)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: PaymentInitializationRequest,
*/

struct PaymentInitializationRequest: Decodable {
    
    var virtualId: String?
    
    var customerId: String?
    
    var aggregatorOrderId: String?
    
    var timeout: Int?
    
    var pollingUrl: String?
    
    var merchantOrderId: String?
    
    var razorpayPaymentId: String?
    
    var method: String?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case virtualId = "virtual_id"
        
        case customerId = "customer_id"
        
        case aggregatorOrderId = "aggregator_order_id"
        
        case timeout = "timeout"
        
        case pollingUrl = "polling_url"
        
        case merchantOrderId = "merchant_order_id"
        
        case razorpayPaymentId = "razorpay_payment_id"
        
        case method = "method"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        virtualId = try? container.decode(String.self, forKey: .virtualId)
        
        customerId = try? container.decode(String.self, forKey: .customerId)
        
        aggregatorOrderId = try? container.decode(String.self, forKey: .aggregatorOrderId)
        
        timeout = try? container.decode(Int.self, forKey: .timeout)
        
        pollingUrl = try? container.decode(String.self, forKey: .pollingUrl)
        
        merchantOrderId = try? container.decode(String.self, forKey: .merchantOrderId)
        
        razorpayPaymentId = try? container.decode(String.self, forKey: .razorpayPaymentId)
        
        method = try? container.decode(String.self, forKey: .method)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: PaymentInitializationResponse,
*/

struct PaymentInitializationResponse: Decodable {
    
    var orderId: String?
    
    var currency: String?
    
    var customerId: String?
    
    var success: Bool?
    
    var amount: Int?
    
    var email: String?
    
    var vpa: String?
    
    var contact: String?
    
    var merchantOrderId: String?
    
    var status: String?
    
    var message: String?
    
    var method: String?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
        case currency = "currency"
        
        case customerId = "customer_id"
        
        case success = "success"
        
        case amount = "amount"
        
        case email = "email"
        
        case vpa = "vpa"
        
        case contact = "contact"
        
        case merchantOrderId = "merchant_order_id"
        
        case status = "status"
        
        case message = "message"
        
        case method = "method"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        currency = try? container.decode(String.self, forKey: .currency)
        
        customerId = try? container.decode(String.self, forKey: .customerId)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        amount = try? container.decode(Int.self, forKey: .amount)
        
        email = try? container.decode(String.self, forKey: .email)
        
        vpa = try? container.decode(String.self, forKey: .vpa)
        
        contact = try? container.decode(String.self, forKey: .contact)
        
        merchantOrderId = try? container.decode(String.self, forKey: .merchantOrderId)
        
        status = try? container.decode(String.self, forKey: .status)
        
        message = try? container.decode(String.self, forKey: .message)
        
        method = try? container.decode(String.self, forKey: .method)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: PaymentStatusUpdateRequest,
*/

struct PaymentStatusUpdateRequest: Decodable {
    
    var orderId: String?
    
    var currency: String?
    
    var customerId: String?
    
    var amount: Int?
    
    var email: String?
    
    var vpa: String?
    
    var contact: String?
    
    var merchantOrderId: String?
    
    var status: String?
    
    var method: String?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
        case currency = "currency"
        
        case customerId = "customer_id"
        
        case amount = "amount"
        
        case email = "email"
        
        case vpa = "vpa"
        
        case contact = "contact"
        
        case merchantOrderId = "merchant_order_id"
        
        case status = "status"
        
        case method = "method"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        currency = try? container.decode(String.self, forKey: .currency)
        
        customerId = try? container.decode(String.self, forKey: .customerId)
        
        amount = try? container.decode(Int.self, forKey: .amount)
        
        email = try? container.decode(String.self, forKey: .email)
        
        vpa = try? container.decode(String.self, forKey: .vpa)
        
        contact = try? container.decode(String.self, forKey: .contact)
        
        merchantOrderId = try? container.decode(String.self, forKey: .merchantOrderId)
        
        status = try? container.decode(String.self, forKey: .status)
        
        method = try? container.decode(String.self, forKey: .method)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: PaymentStatusUpdateResponse,
*/

struct PaymentStatusUpdateResponse: Decodable {
    
    var aggregatorName: String?
    
    var retry: Bool?
    
    var status: String?
    

    enum CodingKeys: String, CodingKey {
        
        case aggregatorName = "aggregator_name"
        
        case retry = "retry"
        
        case status = "status"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
        
        retry = try? container.decode(Bool.self, forKey: .retry)
        
        status = try? container.decode(String.self, forKey: .status)
        
    }
}

/*
    Model: OrderBeneficiaryDetails,
*/

struct OrderBeneficiaryDetails: Decodable {
    
    var isActive: Bool?
    
    var address: String?
    
    var transferMode: String?
    
    var ifscCode: String?
    
    var id: Int?
    
    var comment: Bool?
    
    var branchName: Bool?
    
    var beneficiaryId: String?
    
    var modifiedOn: String?
    
    var bankName: String?
    
    var delightsUserName: String?
    
    var displayName: String?
    
    var email: String?
    
    var accountNo: String?
    
    var mobile: Bool?
    
    var subtitle: String?
    
    var title: String?
    
    var accountHolder: String?
    
    var createdOn: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isActive = "is_active"
        
        case address = "address"
        
        case transferMode = "transfer_mode"
        
        case ifscCode = "ifsc_code"
        
        case id = "id"
        
        case comment = "comment"
        
        case branchName = "branch_name"
        
        case beneficiaryId = "beneficiary_id"
        
        case modifiedOn = "modified_on"
        
        case bankName = "bank_name"
        
        case delightsUserName = "delights_user_name"
        
        case displayName = "display_name"
        
        case email = "email"
        
        case accountNo = "account_no"
        
        case mobile = "mobile"
        
        case subtitle = "subtitle"
        
        case title = "title"
        
        case accountHolder = "account_holder"
        
        case createdOn = "created_on"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        address = try? container.decode(String.self, forKey: .address)
        
        transferMode = try? container.decode(String.self, forKey: .transferMode)
        
        ifscCode = try? container.decode(String.self, forKey: .ifscCode)
        
        id = try? container.decode(Int.self, forKey: .id)
        
        comment = try? container.decode(Bool.self, forKey: .comment)
        
        branchName = try? container.decode(Bool.self, forKey: .branchName)
        
        beneficiaryId = try? container.decode(String.self, forKey: .beneficiaryId)
        
        modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
        
        bankName = try? container.decode(String.self, forKey: .bankName)
        
        delightsUserName = try? container.decode(String.self, forKey: .delightsUserName)
        
        displayName = try? container.decode(String.self, forKey: .displayName)
        
        email = try? container.decode(String.self, forKey: .email)
        
        accountNo = try? container.decode(String.self, forKey: .accountNo)
        
        mobile = try? container.decode(Bool.self, forKey: .mobile)
        
        subtitle = try? container.decode(String.self, forKey: .subtitle)
        
        title = try? container.decode(String.self, forKey: .title)
        
        accountHolder = try? container.decode(String.self, forKey: .accountHolder)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
    }
}

/*
    Model: OrderBeneficiaryResponse,
*/

struct OrderBeneficiaryResponse: Decodable {
    
    var beneficiaries: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case beneficiaries = "beneficiaries"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        beneficiaries = try? container.decode([Any].self, forKey: .beneficiaries)
        
    }
}

/*
    Model: NotFoundResourceError,
*/

struct NotFoundResourceError: Decodable {
    
    var description: String?
    
    var success: Bool?
    
    var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case success = "success"
        
        case code = "code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
}

/*
    Model: IfscCodeResponse,
*/

struct IfscCodeResponse: Decodable {
    
    var success: Bool?
    
    var branchName: String?
    
    var bankName: String?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case branchName = "branch_name"
        
        case bankName = "bank_name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        branchName = try? container.decode(String.self, forKey: .branchName)
        
        bankName = try? container.decode(String.self, forKey: .bankName)
        
    }
}

/*
    Model: InternalErrorResponse,
*/

struct InternalErrorResponse: Decodable {
    
    var description: String?
    
    var success: Bool?
    
    var code: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case success = "success"
        
        case code = "code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        code = try? container.decode(String.self, forKey: .code)
        
    }
}

/*
    Model: AddBeneficiaryViaOtpVerificationRequest,
*/

struct AddBeneficiaryViaOtpVerificationRequest: Decodable {
    
    var hashKey: String?
    
    var requestId: String?
    
    var otp: String?
    

    enum CodingKeys: String, CodingKey {
        
        case hashKey = "hash_key"
        
        case requestId = "request_id"
        
        case otp = "otp"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        hashKey = try? container.decode(String.self, forKey: .hashKey)
        
        requestId = try? container.decode(String.self, forKey: .requestId)
        
        otp = try? container.decode(String.self, forKey: .otp)
        
    }
}

/*
    Model: AddBeneficiaryViaOtpVerificationResponse,
*/

struct AddBeneficiaryViaOtpVerificationResponse: Decodable {
    
    var hashKey: String?
    
    var requestId: String?
    
    var otp: String?
    

    enum CodingKeys: String, CodingKey {
        
        case hashKey = "hash_key"
        
        case requestId = "request_id"
        
        case otp = "otp"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        hashKey = try? container.decode(String.self, forKey: .hashKey)
        
        requestId = try? container.decode(String.self, forKey: .requestId)
        
        otp = try? container.decode(String.self, forKey: .otp)
        
    }
}

/*
    Model: WrongOtpError,
*/

struct WrongOtpError: Decodable {
    
    var description: String?
    
    var success: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case success = "success"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        success = try? container.decode(String.self, forKey: .success)
        
    }
}

/*
    Model: BankDetails,
*/

struct BankDetails: Decodable {
    
    var comment: String?
    
    var ifscCode: String?
    
    var branchName: String?
    
    var email: String?
    
    var accountNo: String?
    
    var mobile: String?
    
    var address: String?
    
    var bankName: String?
    
    var accountHolder: String?
    

    enum CodingKeys: String, CodingKey {
        
        case comment = "comment"
        
        case ifscCode = "ifsc_code"
        
        case branchName = "branch_name"
        
        case email = "email"
        
        case accountNo = "account_no"
        
        case mobile = "mobile"
        
        case address = "address"
        
        case bankName = "bank_name"
        
        case accountHolder = "account_holder"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        comment = try? container.decode(String.self, forKey: .comment)
        
        ifscCode = try? container.decode(String.self, forKey: .ifscCode)
        
        branchName = try? container.decode(String.self, forKey: .branchName)
        
        email = try? container.decode(String.self, forKey: .email)
        
        accountNo = try? container.decode(String.self, forKey: .accountNo)
        
        mobile = try? container.decode(String.self, forKey: .mobile)
        
        address = try? container.decode(String.self, forKey: .address)
        
        bankName = try? container.decode(String.self, forKey: .bankName)
        
        accountHolder = try? container.decode(String.self, forKey: .accountHolder)
        
    }
}

/*
    Model: AddBeneficiaryDetailsRequest,
*/

struct AddBeneficiaryDetailsRequest: Decodable {
    
    var orderId: String?
    
    var delights: Bool?
    
    var details: ?
    
    var shipmentId: String?
    
    var transferMode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
        case delights = "delights"
        
        case details = "details"
        
        case shipmentId = "shipment_id"
        
        case transferMode = "transfer_mode"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        delights = try? container.decode(Bool.self, forKey: .delights)
        
        details = try? container.decode(.self, forKey: .details)
        
        shipmentId = try? container.decode(String.self, forKey: .shipmentId)
        
        transferMode = try? container.decode(String.self, forKey: .transferMode)
        
    }
}

/*
    Model: WalletOtpRequest,
*/

struct WalletOtpRequest: Decodable {
    
    var mobile: Bool?
    
    var countryCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case mobile = "mobile"
        
        case countryCode = "country_code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        mobile = try? container.decode(Bool.self, forKey: .mobile)
        
        countryCode = try? container.decode(String.self, forKey: .countryCode)
        
    }
}

/*
    Model: WalletOtpResponse,
*/

struct WalletOtpResponse: Decodable {
    
    var isVerifiedFlag: String?
    
    var success: Bool?
    
    var requestId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case isVerifiedFlag = "is_verified_flag"
        
        case success = "success"
        
        case requestId = "request_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isVerifiedFlag = try? container.decode(String.self, forKey: .isVerifiedFlag)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        requestId = try? container.decode(String.self, forKey: .requestId)
        
    }
}

/*
    Model: SetDefaultBeneficiaryRequest,
*/

struct SetDefaultBeneficiaryRequest: Decodable {
    
    var orderId: String?
    
    var beneficiaryId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
        case beneficiaryId = "beneficiary_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        beneficiaryId = try? container.decode(String.self, forKey: .beneficiaryId)
        
    }
}

/*
    Model: SetDefaultBeneficiaryResponse,
*/

struct SetDefaultBeneficiaryResponse: Decodable {
    
    var success: Bool?
    
    var isBeneficiarySet: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case success = "success"
        
        case isBeneficiarySet = "is_beneficiary_set"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        isBeneficiarySet = try? container.decode(Bool.self, forKey: .isBeneficiarySet)
        
    }
}



/*
    Model: ApefaceApiError,
*/

struct ApefaceApiError: Decodable {
    
    var message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: OrderById,
*/

struct OrderById: Decodable {
    
    var order: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case order = "order"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        order = try? container.decode([String: Any].self, forKey: .order)
        
    }
}

/*
    Model: OrderList,
*/

struct OrderList: Decodable {
    
    var orders: [Any]?
    
    var page: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case orders = "orders"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orders = try? container.decode([Any].self, forKey: .orders)
        
        page = try? container.decode([String: Any].self, forKey: .page)
        
    }
}

/*
    Model: ShipmentById,
*/

struct ShipmentById: Decodable {
    
    var shipment: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case shipment = "shipment"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        shipment = try? container.decode([String: Any].self, forKey: .shipment)
        
    }
}

/*
    Model: ShipmentReasons,
*/

struct ShipmentReasons: Decodable {
    
    var reasons: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case reasons = "reasons"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        reasons = try? container.decode([Any].self, forKey: .reasons)
        
    }
}

/*
    Model: ShipmentStatusUpdateBody,
*/

struct ShipmentStatusUpdateBody: Decodable {
    
    var shipments: [String: Any]?
    
    var forceTransition: Bool?
    
    var task: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case shipments = "shipments"
        
        case forceTransition = "force_transition"
        
        case task = "task"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        shipments = try? container.decode([String: Any].self, forKey: .shipments)
        
        forceTransition = try? container.decode(Bool.self, forKey: .forceTransition)
        
        task = try? container.decode(Bool.self, forKey: .task)
        
    }
}

/*
    Model: ShipmentStatusUpdate,
*/

struct ShipmentStatusUpdate: Decodable {
    
    var shipments: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case shipments = "shipments"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        shipments = try? container.decode([String: Any].self, forKey: .shipments)
        
    }
}

/*
    Model: ShipmentTrack,
*/

struct ShipmentTrack: Decodable {
    
    var results: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case results = "results"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        results = try? container.decode([Any].self, forKey: .results)
        
    }
}



/*
    Model: Action,
*/

struct Action: Decodable {
    
    var page: [String: Any]?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case page = "page"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        page = try? container.decode([String: Any].self, forKey: .page)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: Article,
*/

struct Article: Decodable {
    
    var id: String?
    
    var points: Double?
    
    var price: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case points = "points"
        
        case price = "price"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        points = try? container.decode(Double.self, forKey: .points)
        
        price = try? container.decode(Double.self, forKey: .price)
        
    }
}

/*
    Model: Asset,
*/

struct Asset: Decodable {
    
    var aspectRatio: String?
    
    var id: String?
    
    var secureUrl: String?
    

    enum CodingKeys: String, CodingKey {
        
        case aspectRatio = "aspect_ratio"
        
        case id = "id"
        
        case secureUrl = "secure_url"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
        
        id = try? container.decode(String.self, forKey: .id)
        
        secureUrl = try? container.decode(String.self, forKey: .secureUrl)
        
    }
}

/*
    Model: CatalogueOrderRequest,
*/

struct CatalogueOrderRequest: Decodable {
    
    var articles: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case articles = "articles"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        articles = try? container.decode([Any].self, forKey: .articles)
        
    }
}

/*
    Model: CatalogueOrderResponse,
*/

struct CatalogueOrderResponse: Decodable {
    
    var articles: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case articles = "articles"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        articles = try? container.decode([Any].self, forKey: .articles)
        
    }
}

/*
    Model: CursorPage,
*/

struct CursorPage: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
        
        nextId = try? container.decode(String.self, forKey: .nextId)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: Discount,
*/

struct Discount: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        absolute = try? container.decode(Double.self, forKey: .absolute)
        
        currency = try? container.decode(String.self, forKey: .currency)
        
        displayAbsolute = try? container.decode(String.self, forKey: .displayAbsolute)
        
        displayPercent = try? container.decode(String.self, forKey: .displayPercent)
        
        percent = try? container.decode(Double.self, forKey: .percent)
        
    }
}

/*
    Model: Error,
*/

struct Error: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(Int.self, forKey: .code)
        
        exception = try? container.decode(String.self, forKey: .exception)
        
        info = try? container.decode(String.self, forKey: .info)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: Offer,
*/

struct Offer: Decodable {
    
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

    init(from decoder: Decoder) throws {
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
}

/*
    Model: OrderDiscountRequest,
*/

struct OrderDiscountRequest: Decodable {
    
    var currency: String?
    
    var orderAmount: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case currency = "currency"
        
        case orderAmount = "order_amount"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currency = try? container.decode(String.self, forKey: .currency)
        
        orderAmount = try? container.decode(Double.self, forKey: .orderAmount)
        
    }
}

/*
    Model: OrderDiscountResponse,
*/

struct OrderDiscountResponse: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appliedRuleBucket = try? container.decode(OrderDiscountRuleBucket.self, forKey: .appliedRuleBucket)
        
        baseDiscount = try? container.decode(Discount.self, forKey: .baseDiscount)
        
        discount = try? container.decode(Discount.self, forKey: .discount)
        
        orderAmount = try? container.decode(Double.self, forKey: .orderAmount)
        
        points = try? container.decode(Double.self, forKey: .points)
        
    }
}

/*
    Model: OrderDiscountRuleBucket,
*/

struct OrderDiscountRuleBucket: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        high = try? container.decode(Double.self, forKey: .high)
        
        low = try? container.decode(Double.self, forKey: .low)
        
        max = try? container.decode(Double.self, forKey: .max)
        
        value = try? container.decode(Double.self, forKey: .value)
        
        valueType = try? container.decode(String.self, forKey: .valueType)
        
    }
}

/*
    Model: PointsHistory,
*/

struct PointsHistory: Decodable {
    
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

    init(from decoder: Decoder) throws {
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
}

/*
    Model: PointsHistoryResponse,
*/

struct PointsHistoryResponse: Decodable {
    
    var history: [Any]?
    
    var page: CursorPage?
    

    enum CodingKeys: String, CodingKey {
        
        case history = "history"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        history = try? container.decode([Any].self, forKey: .history)
        
        page = try? container.decode(CursorPage.self, forKey: .page)
        
    }
}

/*
    Model: PointsResponse,
*/

struct PointsResponse: Decodable {
    
    var points: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case points = "points"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        points = try? container.decode(Double.self, forKey: .points)
        
    }
}

/*
    Model: RedeemReferralCodeRequest,
*/

struct RedeemReferralCodeRequest: Decodable {
    
    var deviceId: String?
    
    var referralCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deviceId = "device_id"
        
        case referralCode = "referral_code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deviceId = try? container.decode(String.self, forKey: .deviceId)
        
        referralCode = try? container.decode(String.self, forKey: .referralCode)
        
    }
}

/*
    Model: RedeemReferralCodeResponse,
*/

struct RedeemReferralCodeResponse: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        points = try? container.decode(Double.self, forKey: .points)
        
        redeemed = try? container.decode(Bool.self, forKey: .redeemed)
        
        referrerId = try? container.decode(String.self, forKey: .referrerId)
        
        referrerInfo = try? container.decode(String.self, forKey: .referrerInfo)
        
    }
}

/*
    Model: ReferralDetailsResponse,
*/

struct ReferralDetailsResponse: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        referral = try? container.decode(Offer.self, forKey: .referral)
        
        referrerInfo = try? container.decode(String.self, forKey: .referrerInfo)
        
        share = try? container.decode(ShareMessages.self, forKey: .share)
        
        user = try? container.decode([String: Any].self, forKey: .user)
        
    }
}

/*
    Model: ShareMessages,
*/

struct ShareMessages: Decodable {
    
    var default: String?
    
    var email: String?
    
    var facebook: String?
    
    var fallback: String?
    
    var message: String?
    
    var messenger: String?
    
    var sms: String?
    
    var twitter: String?
    
    var whatsapp: String?
    

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

    init(from decoder: Decoder) throws {
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
}



/*
    Model: Access,
*/

struct Access: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        answer = try? container.decode(Bool.self, forKey: .answer)
        
        askQuestion = try? container.decode(Bool.self, forKey: .askQuestion)
        
        comment = try? container.decode(Bool.self, forKey: .comment)
        
        rnr = try? container.decode(Bool.self, forKey: .rnr)
        
    }
}

/*
    Model: AddMediaListRequest,
*/

struct AddMediaListRequest: Decodable {
    
    var entityId: String?
    
    var entityType: String?
    
    var mediaList: [Any]?
    
    var refId: String?
    
    var refType: String?
    

    enum CodingKeys: String, CodingKey {
        
        case entityId = "entity_id"
        
        case entityType = "entity_type"
        
        case mediaList = "media_list"
        
        case refId = "ref_id"
        
        case refType = "ref_type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
        mediaList = try? container.decode([Any].self, forKey: .mediaList)
        
        refId = try? container.decode(String.self, forKey: .refId)
        
        refType = try? container.decode(String.self, forKey: .refType)
        
    }
}

/*
    Model: AddMediaRequest,
*/

struct AddMediaRequest: Decodable {
    
    var cloudId: String?
    
    var cloudName: String?
    
    var cloudProvider: String?
    
    var entityId: String?
    
    var entityType: String?
    
    var mediaUrl: String?
    
    var refId: String?
    
    var refType: String?
    
    var tags: [Any]?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cloudId = try? container.decode(String.self, forKey: .cloudId)
        
        cloudName = try? container.decode(String.self, forKey: .cloudName)
        
        cloudProvider = try? container.decode(String.self, forKey: .cloudProvider)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
        mediaUrl = try? container.decode(String.self, forKey: .mediaUrl)
        
        refId = try? container.decode(String.self, forKey: .refId)
        
        refType = try? container.decode(String.self, forKey: .refType)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
        thumbnailUrl = try? container.decode(String.self, forKey: .thumbnailUrl)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: Attribute,
*/

struct Attribute: Decodable {
    
    var createdOn: String?
    
    var description: String?
    
    var id: String?
    
    var modifiedOn: String?
    
    var name: String?
    
    var slug: String?
    
    var tags: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case createdOn = "created_on"
        
        case description = "description"
        
        case id = "id"
        
        case modifiedOn = "modified_on"
        
        case name = "name"
        
        case slug = "slug"
        
        case tags = "tags"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
        description = try? container.decode(String.self, forKey: .description)
        
        id = try? container.decode(String.self, forKey: .id)
        
        modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
        
        name = try? container.decode(String.self, forKey: .name)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
    }
}

/*
    Model: AttributeObject,
*/

struct AttributeObject: Decodable {
    
    var description: String?
    
    var name: String?
    
    var slug: String?
    
    var title: String?
    
    var type: String?
    
    var value: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case name = "name"
        
        case slug = "slug"
        
        case title = "title"
        
        case type = "type"
        
        case value = "value"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        name = try? container.decode(String.self, forKey: .name)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        title = try? container.decode(String.self, forKey: .title)
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode(Double.self, forKey: .value)
        
    }
}

/*
    Model: CheckEligibilityResponse,
*/

struct CheckEligibilityResponse: Decodable {
    
    var access: Access?
    
    var mediaCloud: MediaCloud?
    

    enum CodingKeys: String, CodingKey {
        
        case access = "access"
        
        case mediaCloud = "media_cloud"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        access = try? container.decode(Access.self, forKey: .access)
        
        mediaCloud = try? container.decode(MediaCloud.self, forKey: .mediaCloud)
        
    }
}

/*
    Model: Cloud,
*/

struct Cloud: Decodable {
    
    var id: String?
    
    var name: String?
    
    var provider: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
        case name = "name"
        
        case provider = "provider"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
        name = try? container.decode(String.self, forKey: .name)
        
        provider = try? container.decode(String.self, forKey: .provider)
        
    }
}

/*
    Model: CommentRequest,
*/

struct CommentRequest: Decodable {
    
    var comment: [Any]?
    
    var entityId: String?
    
    var entityType: String?
    

    enum CodingKeys: String, CodingKey {
        
        case comment = "comment"
        
        case entityId = "entity_id"
        
        case entityType = "entity_type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        comment = try? container.decode([Any].self, forKey: .comment)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
    }
}

/*
    Model: CreateQNARequest,
*/

struct CreateQNARequest: Decodable {
    
    var choices: [Any]?
    
    var entityId: String?
    
    var entityType: String?
    
    var maxLen: Int?
    
    var sortPriority: Int?
    
    var tags: [Any]?
    
    var text: String?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        choices = try? container.decode([Any].self, forKey: .choices)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
        maxLen = try? container.decode(Int.self, forKey: .maxLen)
        
        sortPriority = try? container.decode(Int.self, forKey: .sortPriority)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
        text = try? container.decode(String.self, forKey: .text)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: DeviceMeta,
*/

struct DeviceMeta: Decodable {
    
    var appVersion: String?
    
    var platform: String?
    

    enum CodingKeys: String, CodingKey {
        
        case appVersion = "app_version"
        
        case platform = "platform"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        appVersion = try? container.decode(String.self, forKey: .appVersion)
        
        platform = try? container.decode(String.self, forKey: .platform)
        
    }
}

/*
    Model: ErrorResponse,
*/

struct ErrorResponse: Decodable {
    
    var message: String?
    
    var success: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case success = "success"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
    }
}

/*
    Model: MediaCloud,
*/

struct MediaCloud: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        name = try? container.decode(String.self, forKey: .name)
        
        namespace = try? container.decode(String.self, forKey: .namespace)
        
        path = try? container.decode(String.self, forKey: .path)
        
        provider = try? container.decode(String.self, forKey: .provider)
        
        secret = try? container.decode(String.self, forKey: .secret)
        
    }
}

/*
    Model: MediaMeta,
*/

struct MediaMeta: Decodable {
    
    var cloud: Cloud?
    
    var comment: [Any]?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        cloud = try? container.decode(Cloud.self, forKey: .cloud)
        
        comment = try? container.decode([Any].self, forKey: .comment)
        
        description = try? container.decode(String.self, forKey: .description)
        
        id = try? container.decode(String.self, forKey: .id)
        
        type = try? container.decode(String.self, forKey: .type)
        
        url = try? container.decode(Url.self, forKey: .url)
        
    }
}

/*
    Model: PageCursor,
*/

struct PageCursor: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
        
        nextId = try? container.decode(String.self, forKey: .nextId)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: PageNumber,
*/

struct PageNumber: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
        itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
        
        size = try? container.decode(Int.self, forKey: .size)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: ReportAbuseRequest,
*/

struct ReportAbuseRequest: Decodable {
    
    var description: String?
    
    var entityId: String?
    
    var entityType: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case entityId = "entity_id"
        
        case entityType = "entity_type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
    }
}

/*
    Model: SaveAttributeRequest,
*/

struct SaveAttributeRequest: Decodable {
    
    var description: String?
    
    var name: String?
    
    var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case name = "name"
        
        case slug = "slug"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        name = try? container.decode(String.self, forKey: .name)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
}

/*
    Model: TagMeta,
*/

struct TagMeta: Decodable {
    
    var media: [Any]?
    
    var name: String?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case media = "media"
        
        case name = "name"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        media = try? container.decode([Any].self, forKey: .media)
        
        name = try? container.decode(String.self, forKey: .name)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: UpdateAbuseStatusRequest,
*/

struct UpdateAbuseStatusRequest: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        abusive = try? container.decode(Bool.self, forKey: .abusive)
        
        active = try? container.decode(Bool.self, forKey: .active)
        
        approve = try? container.decode(Bool.self, forKey: .approve)
        
        description = try? container.decode(String.self, forKey: .description)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
}

/*
    Model: UpdateAttributeRequest,
*/

struct UpdateAttributeRequest: Decodable {
    
    var description: String?
    
    var name: String?
    
    var slug: String?
    

    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        
        case name = "name"
        
        case slug = "slug"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        description = try? container.decode(String.self, forKey: .description)
        
        name = try? container.decode(String.self, forKey: .name)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
    }
}

/*
    Model: UpdateCommentRequest,
*/

struct UpdateCommentRequest: Decodable {
    
    var active: Bool?
    
    var approve: Bool?
    
    var comment: [Any]?
    
    var id: String?
    

    enum CodingKeys: String, CodingKey {
        
        case active = "active"
        
        case approve = "approve"
        
        case comment = "comment"
        
        case id = "id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        active = try? container.decode(Bool.self, forKey: .active)
        
        approve = try? container.decode(Bool.self, forKey: .approve)
        
        comment = try? container.decode([Any].self, forKey: .comment)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
}

/*
    Model: UpdateMediaListRequest,
*/

struct UpdateMediaListRequest: Decodable {
    
    var approve: Bool?
    
    var archive: Bool?
    
    var entityType: String?
    
    var ids: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case approve = "approve"
        
        case archive = "archive"
        
        case entityType = "entity_type"
        
        case ids = "ids"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        approve = try? container.decode(Bool.self, forKey: .approve)
        
        archive = try? container.decode(Bool.self, forKey: .archive)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
        ids = try? container.decode([Any].self, forKey: .ids)
        
    }
}

/*
    Model: UpdateQNARequest,
*/

struct UpdateQNARequest: Decodable {
    
    var active: Bool?
    
    var approve: Bool?
    
    var choices: [Any]?
    
    var id: String?
    
    var tags: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case active = "active"
        
        case approve = "approve"
        
        case choices = "choices"
        
        case id = "id"
        
        case tags = "tags"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        active = try? container.decode(Bool.self, forKey: .active)
        
        approve = try? container.decode(Bool.self, forKey: .approve)
        
        choices = try? container.decode([Any].self, forKey: .choices)
        
        id = try? container.decode(String.self, forKey: .id)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
    }
}

/*
    Model: UpdateReviewRequest,
*/

struct UpdateReviewRequest: Decodable {
    
    var active: Bool?
    
    var application: String?
    
    var approve: Bool?
    
    var archive: Bool?
    
    var attributesRating: [Any]?
    
    var description: String?
    
    var deviceMeta: DeviceMeta?
    
    var entityId: String?
    
    var entityType: String?
    
    var mediaResource: [Any]?
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        active = try? container.decode(Bool.self, forKey: .active)
        
        application = try? container.decode(String.self, forKey: .application)
        
        approve = try? container.decode(Bool.self, forKey: .approve)
        
        archive = try? container.decode(Bool.self, forKey: .archive)
        
        attributesRating = try? container.decode([Any].self, forKey: .attributesRating)
        
        description = try? container.decode(String.self, forKey: .description)
        
        deviceMeta = try? container.decode(DeviceMeta.self, forKey: .deviceMeta)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
        mediaResource = try? container.decode([Any].self, forKey: .mediaResource)
        
        rating = try? container.decode(Double.self, forKey: .rating)
        
        reviewId = try? container.decode(String.self, forKey: .reviewId)
        
        templateId = try? container.decode(String.self, forKey: .templateId)
        
        title = try? container.decode(String.self, forKey: .title)
        
    }
}

/*
    Model: UpdateVoteRequest,
*/

struct UpdateVoteRequest: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(String.self, forKey: .action)
        
        active = try? container.decode(Bool.self, forKey: .active)
        
        id = try? container.decode(String.self, forKey: .id)
        
        refId = try? container.decode(String.self, forKey: .refId)
        
        refType = try? container.decode(String.self, forKey: .refType)
        
    }
}

/*
    Model: Url,
*/

struct Url: Decodable {
    
    var main: String?
    
    var thumbnail: String?
    

    enum CodingKeys: String, CodingKey {
        
        case main = "main"
        
        case thumbnail = "thumbnail"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        main = try? container.decode(String.self, forKey: .main)
        
        thumbnail = try? container.decode(String.self, forKey: .thumbnail)
        
    }
}

/*
    Model: VoteRequest,
*/

struct VoteRequest: Decodable {
    
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        action = try? container.decode(String.self, forKey: .action)
        
        entityId = try? container.decode(String.self, forKey: .entityId)
        
        entityType = try? container.decode(String.self, forKey: .entityType)
        
        refId = try? container.decode(String.self, forKey: .refId)
        
        refType = try? container.decode(String.self, forKey: .refType)
        
    }
}

/*
    Model: XCursorGetResponse,
*/

struct XCursorGetResponse: Decodable {
    
    var items: [String: Any]?
    
    var page: PageCursor?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([String: Any].self, forKey: .items)
        
        page = try? container.decode(PageCursor.self, forKey: .page)
        
    }
}

/*
    Model: XInsertResponse,
*/

struct XInsertResponse: Decodable {
    
    var ids: String?
    

    enum CodingKeys: String, CodingKey {
        
        case ids = "ids"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        ids = try? container.decode(String.self, forKey: .ids)
        
    }
}

/*
    Model: XNumberGetResponse,
*/

struct XNumberGetResponse: Decodable {
    
    var items: [String: Any]?
    
    var page: PageNumber?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([String: Any].self, forKey: .items)
        
        page = try? container.decode(PageNumber.self, forKey: .page)
        
    }
}

/*
    Model: XUpdateResponse,
*/

struct XUpdateResponse: Decodable {
    
    var id: String?
    

    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        
    }
}



/*
    Model: GetCartResponse,
*/

struct GetCartResponse: Decodable {
    
    var checkoutMode: String?
    
    var gstin: String?
    
    var breakupValues: [String: Any]?
    
    var breakupValuesAnalytics: String?
    
    var message: String?
    
    var creditDetails: String?
    
    var couponText: String?
    
    var codAvailable: Bool?
    
    var restrictCheckout: Bool?
    
    var deliveryChargeInfo: String?
    
    var cartId: Int?
    
    var isValid: Bool?
    
    var lastModified: String?
    
    var items: [Any]?
    
    var couponDetails: String?
    

    enum CodingKeys: String, CodingKey {
        
        case checkoutMode = "checkout_mode"
        
        case gstin = "gstin"
        
        case breakupValues = "breakup_values"
        
        case breakupValuesAnalytics = "breakup_values_analytics"
        
        case message = "message"
        
        case creditDetails = "credit_details"
        
        case couponText = "coupon_text"
        
        case codAvailable = "cod_available"
        
        case restrictCheckout = "restrict_checkout"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case cartId = "cart_id"
        
        case isValid = "is_valid"
        
        case lastModified = "last_modified"
        
        case items = "items"
        
        case couponDetails = "coupon_details"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        breakupValues = try? container.decode([String: Any].self, forKey: .breakupValues)
        
        breakupValuesAnalytics = try? container.decode(String.self, forKey: .breakupValuesAnalytics)
        
        message = try? container.decode(String.self, forKey: .message)
        
        creditDetails = try? container.decode(String.self, forKey: .creditDetails)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        couponDetails = try? container.decode(String.self, forKey: .couponDetails)
        
    }
}

/*
    Model: AddProductCart,
*/

struct AddProductCart: Decodable {
    
    var articleId: String?
    
    var storeId: Int?
    
    var pos: Bool?
    
    var display: String?
    
    var sellerId: Int?
    
    var articleAssignment: [String: Any]?
    
    var quantity: Int?
    
    var itemId: Int?
    
    var itemSize: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case articleId = "article_id"
        
        case storeId = "store_id"
        
        case pos = "pos"
        
        case display = "display"
        
        case sellerId = "seller_id"
        
        case articleAssignment = "article_assignment"
        
        case quantity = "quantity"
        
        case itemId = "item_id"
        
        case itemSize = "item_size"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        storeId = try? container.decode(Int.self, forKey: .storeId)
        
        pos = try? container.decode(Bool.self, forKey: .pos)
        
        display = try? container.decode(String.self, forKey: .display)
        
        sellerId = try? container.decode(Int.self, forKey: .sellerId)
        
        articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
    }
}

/*
    Model: AddCartRequest,
*/

struct AddCartRequest: Decodable {
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: CouponBreakup,
*/

struct CouponBreakup: Decodable {
    
    var code: String?
    
    var uid: Int?
    
    var message: String?
    
    var isApplied: Bool?
    
    var value: Int?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case uid = "uid"
        
        case message = "message"
        
        case isApplied = "is_applied"
        
        case value = "value"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(String.self, forKey: .code)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: BaseLoyaltyPoints,
*/

struct BaseLoyaltyPoints: Decodable {
    
    var applicable: Int?
    
    var isApplied: Bool?
    
    var description: String?
    
    var total: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case applicable = "applicable"
        
        case isApplied = "is_applied"
        
        case description = "description"
        
        case total = "total"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicable = try? container.decode(Int.self, forKey: .applicable)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Double.self, forKey: .total)
        
    }
}

/*
    Model: DisplayBreakup,
*/

struct DisplayBreakup: Decodable {
    
    var currencySymbol: String?
    
    var value: Int?
    
    var key: String?
    
    var display: String?
    
    var currencyCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case currencySymbol = "currency_symbol"
        
        case value = "value"
        
        case key = "key"
        
        case display = "display"
        
        case currencyCode = "currency_code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
    }
}

/*
    Model: RawBreakup,
*/

struct RawBreakup: Decodable {
    
    var total: Int?
    
    var codCharge: Int?
    
    var coupon: Int?
    
    var fyndCash: Int?
    
    var youSaved: Int?
    
    var deliveryCharge: Int?
    
    var subtotal: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case total = "total"
        
        case codCharge = "cod_charge"
        
        case coupon = "coupon"
        
        case fyndCash = "fynd_cash"
        
        case youSaved = "you_saved"
        
        case deliveryCharge = "delivery_charge"
        
        case subtotal = "subtotal"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        codCharge = try? container.decode(Int.self, forKey: .codCharge)
        
        coupon = try? container.decode(Int.self, forKey: .coupon)
        
        fyndCash = try? container.decode(Int.self, forKey: .fyndCash)
        
        youSaved = try? container.decode(Int.self, forKey: .youSaved)
        
        deliveryCharge = try? container.decode(Int.self, forKey: .deliveryCharge)
        
        subtotal = try? container.decode(Int.self, forKey: .subtotal)
        
    }
}

/*
    Model: BaseCartBreakup,
*/

struct BaseCartBreakup: Decodable {
    
    var coupon: CouponBreakup?
    
    var loyaltyPoints: BaseLoyaltyPoints?
    
    var display: DisplayBreakup?
    
    var raw: RawBreakup?
    

    enum CodingKeys: String, CodingKey {
        
        case coupon = "coupon"
        
        case loyaltyPoints = "loyalty_points"
        
        case display = "display"
        
        case raw = "raw"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
        
        loyaltyPoints = try? container.decode(BaseLoyaltyPoints.self, forKey: .loyaltyPoints)
        
        display = try? container.decode(DisplayBreakup.self, forKey: .display)
        
        raw = try? container.decode(RawBreakup.self, forKey: .raw)
        
    }
}

/*
    Model: CartCurrency,
*/

struct CartCurrency: Decodable {
    
    var code: String?
    
    var symbol: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case symbol = "symbol"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(String.self, forKey: .code)
        
        symbol = try? container.decode(String.self, forKey: .symbol)
        
    }
}

/*
    Model: PaymentFlow,
*/

struct PaymentFlow: Decodable {
    
    var apiLink: String?
    
    var paymentFlow: String?
    
    var data: [String: Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case apiLink = "api_link"
        
        case paymentFlow = "payment_flow"
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        apiLink = try? container.decode(String.self, forKey: .apiLink)
        
        paymentFlow = try? container.decode(String.self, forKey: .paymentFlow)
        
        data = try? container.decode([String: Any].self, forKey: .data)
        
    }
}

/*
    Model: PaymentFlows,
*/

struct PaymentFlows: Decodable {
    
    var simpl: PaymentFlow?
    
    var razorpay: PaymentFlow?
    
    var fynd: PaymentFlow?
    
    var juspay: PaymentFlow?
    
    var upiRazorpay: PaymentFlow?
    

    enum CodingKeys: String, CodingKey {
        
        case simpl = "Simpl"
        
        case razorpay = "Razorpay"
        
        case fynd = "Fynd"
        
        case juspay = "Juspay"
        
        case upiRazorpay = "UPI_Razorpay"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
        
        razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
        
        fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
        
        juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
        
        upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
        
    }
}

/*
    Model: PaymentOption,
*/

struct PaymentOption: Decodable {
    
    var displayName: String?
    
    var displayPriority: Int?
    
    var list: [Any]?
    
    var paymentModeId: Int?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case displayName = "display_name"
        
        case displayPriority = "display_priority"
        
        case list = "list"
        
        case paymentModeId = "payment_mode_id"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        displayName = try? container.decode(String.self, forKey: .displayName)
        
        displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
        
        list = try? container.decode([Any].self, forKey: .list)
        
        paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: PaymentOptions,
*/

struct PaymentOptions: Decodable {
    
    var default: [String: Any]?
    
    var paymentFlows: PaymentFlows?
    
    var paymentOption: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case default = "default"
        
        case paymentFlows = "payment_flows"
        
        case paymentOption = "payment_option"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        default = try? container.decode([String: Any].self, forKey: .default)
        
        paymentFlows = try? container.decode(PaymentFlows.self, forKey: .paymentFlows)
        
        paymentOption = try? container.decode([Any].self, forKey: .paymentOption)
        
    }
}

/*
    Model: BaseInfo,
*/

struct BaseInfo: Decodable {
    
    var uid: Int?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: CategoryInfo,
*/

struct CategoryInfo: Decodable {
    
    var uid: Int?
    
    var name: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(Int.self, forKey: .name)
        
    }
}

/*
    Model: Image,
*/

struct Image: Decodable {
    
    var url: String?
    
    var secureUrl: String?
    
    var aspectRatio: String?
    

    enum CodingKeys: String, CodingKey {
        
        case url = "url"
        
        case secureUrl = "secure_url"
        
        case aspectRatio = "aspect_ratio"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        url = try? container.decode(String.self, forKey: .url)
        
        secureUrl = try? container.decode(String.self, forKey: .secureUrl)
        
        aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
        
    }
}

/*
    Model: ActionQuery,
*/

struct ActionQuery: Decodable {
    
    var productSlug: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case productSlug = "product_slug"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        productSlug = try? container.decode([Any].self, forKey: .productSlug)
        
    }
}

/*
    Model: Action,
*/

struct Action: Decodable {
    
    var type: String?
    
    var url: String?
    
    var query: ActionQuery?
    

    enum CodingKeys: String, CodingKey {
        
        case type = "type"
        
        case url = "url"
        
        case query = "query"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        type = try? container.decode(String.self, forKey: .type)
        
        url = try? container.decode(String.self, forKey: .url)
        
        query = try? container.decode(ActionQuery.self, forKey: .query)
        
    }
}

/*
    Model: Product,
*/

struct Product: Decodable {
    
    var uid: Int?
    
    var brand: BaseInfo?
    
    var categories: [Any]?
    
    var type: String?
    
    var images: [Any]?
    
    var name: String?
    
    var slug: String?
    
    var action: Action?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case brand = "brand"
        
        case categories = "categories"
        
        case type = "type"
        
        case images = "images"
        
        case name = "name"
        
        case slug = "slug"
        
        case action = "action"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        brand = try? container.decode(BaseInfo.self, forKey: .brand)
        
        categories = try? container.decode([Any].self, forKey: .categories)
        
        type = try? container.decode(String.self, forKey: .type)
        
        images = try? container.decode([Any].self, forKey: .images)
        
        name = try? container.decode(String.self, forKey: .name)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        action = try? container.decode(Action.self, forKey: .action)
        
    }
}

/*
    Model: ProductAvailability,
*/

struct ProductAvailability: Decodable {
    
    var otherStoreQuantity: Int?
    
    var outOfStock: Bool?
    
    var deliverable: Bool?
    
    var isValid: Bool?
    
    var sizes: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case otherStoreQuantity = "other_store_quantity"
        
        case outOfStock = "out_of_stock"
        
        case deliverable = "deliverable"
        
        case isValid = "is_valid"
        
        case sizes = "sizes"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
        
        outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
        
        deliverable = try? container.decode(Bool.self, forKey: .deliverable)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        sizes = try? container.decode([Any].self, forKey: .sizes)
        
    }
}

/*
    Model: ProductPrice,
*/

struct ProductPrice: Decodable {
    
    var effective: Double?
    
    var addOn: Double?
    
    var currencySymbol: String?
    
    var currencyCode: String?
    
    var selling: Double?
    
    var marked: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case addOn = "add_on"
        
        case currencySymbol = "currency_symbol"
        
        case currencyCode = "currency_code"
        
        case selling = "selling"
        
        case marked = "marked"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Double.self, forKey: .effective)
        
        addOn = try? container.decode(Double.self, forKey: .addOn)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        selling = try? container.decode(Double.self, forKey: .selling)
        
        marked = try? container.decode(Double.self, forKey: .marked)
        
    }
}

/*
    Model: ProductPriceInfo,
*/

struct ProductPriceInfo: Decodable {
    
    var base: ProductPrice?
    
    var converted: ProductPrice?
    

    enum CodingKeys: String, CodingKey {
        
        case base = "base"
        
        case converted = "converted"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        base = try? container.decode(ProductPrice.self, forKey: .base)
        
        converted = try? container.decode(ProductPrice.self, forKey: .converted)
        
    }
}

/*
    Model: CartProductInfo,
*/

struct CartProductInfo: Decodable {
    
    var product: Product?
    
    var message: String?
    
    var discount: String?
    
    var article: String?
    
    var key: String?
    
    var availability: ProductAvailability?
    
    var price: ProductPriceInfo?
    
    var couponMessage: String?
    
    var bulkOffer: String?
    
    var quantity: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case product = "product"
        
        case message = "message"
        
        case discount = "discount"
        
        case article = "article"
        
        case key = "key"
        
        case availability = "availability"
        
        case price = "price"
        
        case couponMessage = "coupon_message"
        
        case bulkOffer = "bulk_offer"
        
        case quantity = "quantity"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        product = try? container.decode(Product.self, forKey: .product)
        
        message = try? container.decode(String.self, forKey: .message)
        
        discount = try? container.decode(String.self, forKey: .discount)
        
        article = try? container.decode(String.self, forKey: .article)
        
        key = try? container.decode(String.self, forKey: .key)
        
        availability = try? container.decode(ProductAvailability.self, forKey: .availability)
        
        price = try? container.decode(ProductPriceInfo.self, forKey: .price)
        
        couponMessage = try? container.decode(String.self, forKey: .couponMessage)
        
        bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
    }
}

/*
    Model: CartResponse,
*/

struct CartResponse: Decodable {
    
    var gstin: String?
    
    var uid: String?
    
    var breakupValues: BaseCartBreakup?
    
    var checkoutMode: String?
    
    var message: String?
    
    var couponText: String?
    
    var isValid: Bool?
    
    var restrictCheckout: Bool?
    
    var deliveryChargeInfo: String?
    
    var currency: CartCurrency?
    
    var cartId: Int?
    
    var paymentOptions: PaymentOptions?
    
    var lastModified: String?
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case gstin = "gstin"
        
        case uid = "uid"
        
        case breakupValues = "breakup_values"
        
        case checkoutMode = "checkout_mode"
        
        case message = "message"
        
        case couponText = "coupon_text"
        
        case isValid = "is_valid"
        
        case restrictCheckout = "restrict_checkout"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case currency = "currency"
        
        case cartId = "cart_id"
        
        case paymentOptions = "payment_options"
        
        case lastModified = "last_modified"
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        message = try? container.decode(String.self, forKey: .message)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: UpdateProductCart,
*/

struct UpdateProductCart: Decodable {
    
    var articleId: String?
    
    var itemId: Int?
    
    var quantity: Int?
    
    var itemIndex: Int?
    
    var itemSize: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case articleId = "article_id"
        
        case itemId = "item_id"
        
        case quantity = "quantity"
        
        case itemIndex = "item_index"
        
        case itemSize = "item_size"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        articleId = try? container.decode(String.self, forKey: .articleId)
        
        itemId = try? container.decode(Int.self, forKey: .itemId)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
        itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
        
        itemSize = try? container.decode(Int.self, forKey: .itemSize)
        
    }
}

/*
    Model: UpdateCartRequest,
*/

struct UpdateCartRequest: Decodable {
    
    var operation: String?
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case operation = "operation"
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        operation = try? container.decode(String.self, forKey: .operation)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: Coupon,
*/

struct Coupon: Decodable {
    
    var uid: Int?
    
    var title: String?
    
    var message: String?
    
    var minimumCartValue: Double?
    
    var couponValue: Double?
    
    var isApplied: Bool?
    
    var maxDiscountValue: Double?
    
    var expiresOn: String?
    
    var isApplicable: Bool?
    
    var subTitle: String?
    
    var couponCode: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case title = "title"
        
        case message = "message"
        
        case minimumCartValue = "minimum_cart_value"
        
        case couponValue = "coupon_value"
        
        case isApplied = "is_applied"
        
        case maxDiscountValue = "max_discount_value"
        
        case expiresOn = "expires_on"
        
        case isApplicable = "is_applicable"
        
        case subTitle = "sub_title"
        
        case couponCode = "coupon_code"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        title = try? container.decode(String.self, forKey: .title)
        
        message = try? container.decode(String.self, forKey: .message)
        
        minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
        
        couponValue = try? container.decode(Double.self, forKey: .couponValue)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
        
        expiresOn = try? container.decode(String.self, forKey: .expiresOn)
        
        isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
        
        subTitle = try? container.decode(String.self, forKey: .subTitle)
        
        couponCode = try? container.decode(String.self, forKey: .couponCode)
        
    }
}

/*
    Model: PageCoupon,
*/

struct PageCoupon: Decodable {
    
    var totalItemCount: Int?
    
    var total: Int?
    
    var current: Int?
    
    var hasPrevious: Bool?
    
    var hasNext: Bool?
    

    enum CodingKeys: String, CodingKey {
        
        case totalItemCount = "total_item_count"
        
        case total = "total"
        
        case current = "current"
        
        case hasPrevious = "has_previous"
        
        case hasNext = "has_next"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
        
        total = try? container.decode(Int.self, forKey: .total)
        
        current = try? container.decode(Int.self, forKey: .current)
        
        hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
        
        hasNext = try? container.decode(Bool.self, forKey: .hasNext)
        
    }
}

/*
    Model: GetCouponResponse,
*/

struct GetCouponResponse: Decodable {
    
    var availableCouponList: [Any]?
    
    var page: PageCoupon?
    

    enum CodingKeys: String, CodingKey {
        
        case availableCouponList = "available_coupon_list"
        
        case page = "page"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        availableCouponList = try? container.decode([Any].self, forKey: .availableCouponList)
        
        page = try? container.decode(PageCoupon.self, forKey: .page)
        
    }
}

/*
    Model: LoyaltyPoints,
*/

struct LoyaltyPoints: Decodable {
    
    var applicable: String?
    
    var isApplied: Bool?
    
    var description: String?
    
    var total: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case applicable = "applicable"
        
        case isApplied = "is_applied"
        
        case description = "description"
        
        case total = "total"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicable = try? container.decode(String.self, forKey: .applicable)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        description = try? container.decode(String.self, forKey: .description)
        
        total = try? container.decode(Int.self, forKey: .total)
        
    }
}

/*
    Model: CartCoupon,
*/

struct CartCoupon: Decodable {
    
    var code: String?
    
    var uid: Int?
    
    var message: String?
    
    var isApplied: Bool?
    
    var value: Int?
    
    var type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case uid = "uid"
        
        case message = "message"
        
        case isApplied = "is_applied"
        
        case value = "value"
        
        case type = "type"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(String.self, forKey: .code)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        message = try? container.decode(String.self, forKey: .message)
        
        isApplied = try? container.decode(Bool.self, forKey: .isApplied)
        
        value = try? container.decode(Int.self, forKey: .value)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: RawCartCoupon,
*/

struct RawCartCoupon: Decodable {
    
    var total: Double?
    
    var codCharge: Double?
    
    var coupon: Double?
    
    var discount: Double?
    
    var fyndCash: Double?
    
    var mrpTotal: Double?
    
    var youSaved: Double?
    
    var convenienceFee: Double?
    
    var gstCharges: Double?
    
    var subtotal: Double?
    
    var vog: Double?
    
    var deliveryCharge: Double?
    

    enum CodingKeys: String, CodingKey {
        
        case total = "total"
        
        case codCharge = "cod_charge"
        
        case coupon = "coupon"
        
        case discount = "discount"
        
        case fyndCash = "fynd_cash"
        
        case mrpTotal = "mrp_total"
        
        case youSaved = "you_saved"
        
        case convenienceFee = "convenience_fee"
        
        case gstCharges = "gst_charges"
        
        case subtotal = "subtotal"
        
        case vog = "vog"
        
        case deliveryCharge = "delivery_charge"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        codCharge = try? container.decode(Double.self, forKey: .codCharge)
        
        coupon = try? container.decode(Double.self, forKey: .coupon)
        
        discount = try? container.decode(Double.self, forKey: .discount)
        
        fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
        
        mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
        
        youSaved = try? container.decode(Double.self, forKey: .youSaved)
        
        convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
        
        gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
        
        subtotal = try? container.decode(Double.self, forKey: .subtotal)
        
        vog = try? container.decode(Double.self, forKey: .vog)
        
        deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
        
    }
}

/*
    Model: SaveCoupon,
*/

struct SaveCoupon: Decodable {
    
    var display: [Any]?
    
    var loyaltyPoints: LoyaltyPoints?
    
    var coupon: CartCoupon?
    
    var raw: RawCartCoupon?
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case loyaltyPoints = "loyalty_points"
        
        case coupon = "coupon"
        
        case raw = "raw"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try? container.decode([Any].self, forKey: .display)
        
        loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
        
        coupon = try? container.decode(CartCoupon.self, forKey: .coupon)
        
        raw = try? container.decode(RawCartCoupon.self, forKey: .raw)
        
    }
}

/*
    Model: SaveCouponResponse,
*/

struct SaveCouponResponse: Decodable {
    
    var gstin: String?
    
    var uid: Int?
    
    var breakupValues: SaveCoupon?
    
    var checkoutMode: String?
    
    var message: String?
    
    var couponText: String?
    
    var restrictCheckout: Bool?
    
    var deliveryChargeInfo: String?
    
    var cartId: Int?
    
    var isValid: Bool?
    
    var lastModified: String?
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case gstin = "gstin"
        
        case uid = "uid"
        
        case breakupValues = "breakup_values"
        
        case checkoutMode = "checkout_mode"
        
        case message = "message"
        
        case couponText = "coupon_text"
        
        case restrictCheckout = "restrict_checkout"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case cartId = "cart_id"
        
        case isValid = "is_valid"
        
        case lastModified = "last_modified"
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        message = try? container.decode(String.self, forKey: .message)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

/*
    Model: OfferSeller,
*/

struct OfferSeller: Decodable {
    
    var uid: Int?
    
    var name: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case name = "name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        name = try? container.decode(String.self, forKey: .name)
        
    }
}

/*
    Model: OfferPrice,
*/

struct OfferPrice: Decodable {
    
    var effective: Int?
    
    var currencySymbol: String?
    
    var bulkEffective: Double?
    
    var currencyCode: String?
    
    var marked: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case effective = "effective"
        
        case currencySymbol = "currency_symbol"
        
        case bulkEffective = "bulk_effective"
        
        case currencyCode = "currency_code"
        
        case marked = "marked"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        effective = try? container.decode(Int.self, forKey: .effective)
        
        currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
        
        bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
        
        currencyCode = try? container.decode(String.self, forKey: .currencyCode)
        
        marked = try? container.decode(Int.self, forKey: .marked)
        
    }
}

/*
    Model: OfferItem,
*/

struct OfferItem: Decodable {
    
    var best: Bool?
    
    var total: Double?
    
    var margin: Int?
    
    var type: String?
    
    var price: OfferPrice?
    
    var autoApplied: Bool?
    
    var quantity: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case best = "best"
        
        case total = "total"
        
        case margin = "margin"
        
        case type = "type"
        
        case price = "price"
        
        case autoApplied = "auto_applied"
        
        case quantity = "quantity"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        best = try? container.decode(Bool.self, forKey: .best)
        
        total = try? container.decode(Double.self, forKey: .total)
        
        margin = try? container.decode(Int.self, forKey: .margin)
        
        type = try? container.decode(String.self, forKey: .type)
        
        price = try? container.decode(OfferPrice.self, forKey: .price)
        
        autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
        
        quantity = try? container.decode(Int.self, forKey: .quantity)
        
    }
}

/*
    Model: BulkPriceOffer,
*/

struct BulkPriceOffer: Decodable {
    
    var seller: OfferSeller?
    
    var offers: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case seller = "seller"
        
        case offers = "offers"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        seller = try? container.decode(OfferSeller.self, forKey: .seller)
        
        offers = try? container.decode([Any].self, forKey: .offers)
        
    }
}

/*
    Model: BulkPriceResponse,
*/

struct BulkPriceResponse: Decodable {
    
    var data: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try? container.decode([Any].self, forKey: .data)
        
    }
}

/*
    Model: Address,
*/

struct Address: Decodable {
    
    var areaCodeSlug: String?
    
    var addressId: Int?
    
    var addressType: String?
    
    var meta: [String: Any]?
    
    var geoLocation: [String: Any]?
    
    var state: String?
    
    var checkoutMode: String?
    
    var uid: Int?
    
    var landmark: String?
    
    var isActive: Bool?
    
    var userId: String?
    
    var email: String?
    
    var address: String?
    
    var city: String?
    
    var areaCode: String?
    
    var country: String?
    
    var phone: Int?
    
    var countryCode: String?
    
    var isDefaultAddress: Bool?
    
    var name: String?
    
    var area: String?
    

    enum CodingKeys: String, CodingKey {
        
        case areaCodeSlug = "area_code_slug"
        
        case addressId = "address_id"
        
        case addressType = "address_type"
        
        case meta = "meta"
        
        case geoLocation = "geo_location"
        
        case state = "state"
        
        case checkoutMode = "checkout_mode"
        
        case uid = "uid"
        
        case landmark = "landmark"
        
        case isActive = "is_active"
        
        case userId = "user_id"
        
        case email = "email"
        
        case address = "address"
        
        case city = "city"
        
        case areaCode = "area_code"
        
        case country = "country"
        
        case phone = "phone"
        
        case countryCode = "country_code"
        
        case isDefaultAddress = "is_default_address"
        
        case name = "name"
        
        case area = "area"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        geoLocation = try? container.decode([String: Any].self, forKey: .geoLocation)
        
        state = try? container.decode(String.self, forKey: .state)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        isActive = try? container.decode(Bool.self, forKey: .isActive)
        
        userId = try? container.decode(String.self, forKey: .userId)
        
        email = try? container.decode(String.self, forKey: .email)
        
        address = try? container.decode(String.self, forKey: .address)
        
        city = try? container.decode(String.self, forKey: .city)
        
        areaCode = try? container.decode(String.self, forKey: .areaCode)
        
        country = try? container.decode(String.self, forKey: .country)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        countryCode = try? container.decode(String.self, forKey: .countryCode)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        name = try? container.decode(String.self, forKey: .name)
        
        area = try? container.decode(String.self, forKey: .area)
        
    }
}

/*
    Model: GetAddressResponse,
*/

struct GetAddressResponse: Decodable {
    
    var address: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case address = "address"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        address = try? container.decode([Any].self, forKey: .address)
        
    }
}

/*
    Model: SaveAddressRequest,
*/

struct SaveAddressRequest: Decodable {
    
    var addressType: String?
    
    var landmark: String?
    
    var phone: Int?
    
    var email: String?
    
    var pincode: Int?
    
    var isDefaultAddress: Bool?
    
    var address: String?
    
    var name: String?
    
    var area: String?
    

    enum CodingKeys: String, CodingKey {
        
        case addressType = "address_type"
        
        case landmark = "landmark"
        
        case phone = "phone"
        
        case email = "email"
        
        case pincode = "pincode"
        
        case isDefaultAddress = "is_default_address"
        
        case address = "address"
        
        case name = "name"
        
        case area = "area"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        email = try? container.decode(String.self, forKey: .email)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        address = try? container.decode(String.self, forKey: .address)
        
        name = try? container.decode(String.self, forKey: .name)
        
        area = try? container.decode(String.self, forKey: .area)
        
    }
}

/*
    Model: SaveAddressResponse,
*/

struct SaveAddressResponse: Decodable {
    
    var isDefaultAddress: Bool?
    
    var success: String?
    
    var addressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isDefaultAddress = "is_default_address"
        
        case success = "success"
        
        case addressId = "address_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        success = try? container.decode(String.self, forKey: .success)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
    }
}

/*
    Model: UpdateAddressRequest,
*/

struct UpdateAddressRequest: Decodable {
    
    var addressType: String?
    
    var landmark: String?
    
    var phone: Int?
    
    var email: String?
    
    var pincode: Int?
    
    var isDefaultAddress: Bool?
    
    var address: String?
    
    var name: String?
    
    var area: String?
    

    enum CodingKeys: String, CodingKey {
        
        case addressType = "address_type"
        
        case landmark = "landmark"
        
        case phone = "phone"
        
        case email = "email"
        
        case pincode = "pincode"
        
        case isDefaultAddress = "is_default_address"
        
        case address = "address"
        
        case name = "name"
        
        case area = "area"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        addressType = try? container.decode(String.self, forKey: .addressType)
        
        landmark = try? container.decode(String.self, forKey: .landmark)
        
        phone = try? container.decode(Int.self, forKey: .phone)
        
        email = try? container.decode(String.self, forKey: .email)
        
        pincode = try? container.decode(Int.self, forKey: .pincode)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        address = try? container.decode(String.self, forKey: .address)
        
        name = try? container.decode(String.self, forKey: .name)
        
        area = try? container.decode(String.self, forKey: .area)
        
    }
}

/*
    Model: UpdateAddressResponse,
*/

struct UpdateAddressResponse: Decodable {
    
    var isDefaultAddress: Bool?
    
    var success: Bool?
    
    var isUpdated: Bool?
    
    var addressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isDefaultAddress = "is_default_address"
        
        case success = "success"
        
        case isUpdated = "is_updated"
        
        case addressId = "address_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
    }
}

/*
    Model: DeleteAddressResponse,
*/

struct DeleteAddressResponse: Decodable {
    
    var isDeleted: Bool?
    
    var addressId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case isDeleted = "is_deleted"
        
        case addressId = "address_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        isDeleted = try? container.decode(Bool.self, forKey: .isDeleted)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
    }
}

/*
    Model: SelectCartAddressRequest,
*/

struct SelectCartAddressRequest: Decodable {
    
    var billingAddressId: Int?
    
    var uid: String?
    
    var addressId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case billingAddressId = "billing_address_id"
        
        case uid = "uid"
        
        case addressId = "address_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        addressId = try? container.decode(String.self, forKey: .addressId)
        
    }
}

/*
    Model: UpdateCartPaymentRequest,
*/

struct UpdateCartPaymentRequest: Decodable {
    
    var uid: Int?
    
    var paymentIdentifier: String?
    
    var addressId: Int?
    
    var paymentMode: String?
    
    var merchantCode: String?
    
    var aggregatorName: String?
    

    enum CodingKeys: String, CodingKey {
        
        case uid = "uid"
        
        case paymentIdentifier = "payment_identifier"
        
        case addressId = "address_id"
        
        case paymentMode = "payment_mode"
        
        case merchantCode = "merchant_code"
        
        case aggregatorName = "aggregator_name"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uid = try? container.decode(Int.self, forKey: .uid)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        paymentMode = try? container.decode(String.self, forKey: .paymentMode)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
        
    }
}

/*
    Model: ShipmentResponse,
*/

struct ShipmentResponse: Decodable {
    
    var shipmentType: String?
    
    var boxType: String?
    
    var fulfillmentId: Int?
    
    var fulfillmentType: String?
    
    var promise: String?
    
    var items: [Any]?
    
    var shipments: Int?
    
    var dpOptions: [String: Any]?
    
    var dpId: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case shipmentType = "shipment_type"
        
        case boxType = "box_type"
        
        case fulfillmentId = "fulfillment_id"
        
        case fulfillmentType = "fulfillment_type"
        
        case promise = "promise"
        
        case items = "items"
        
        case shipments = "shipments"
        
        case dpOptions = "dp_options"
        
        case dpId = "dp_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        shipmentType = try? container.decode(String.self, forKey: .shipmentType)
        
        boxType = try? container.decode(String.self, forKey: .boxType)
        
        fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
        
        fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
        
        promise = try? container.decode(String.self, forKey: .promise)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        shipments = try? container.decode(Int.self, forKey: .shipments)
        
        dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
        
        dpId = try? container.decode(Int.self, forKey: .dpId)
        
    }
}

/*
    Model: CartShipmentsResponse,
*/

struct CartShipmentsResponse: Decodable {
    
    var gstin: String?
    
    var uid: String?
    
    var breakupValues: BaseCartBreakup?
    
    var checkoutMode: String?
    
    var message: String?
    
    var couponText: String?
    
    var isValid: Bool?
    
    var restrictCheckout: Bool?
    
    var deliveryChargeInfo: String?
    
    var currency: CartCurrency?
    
    var cartId: Int?
    
    var shipments: [Any]?
    
    var paymentOptions: PaymentOptions?
    
    var lastModified: String?
    

    enum CodingKeys: String, CodingKey {
        
        case gstin = "gstin"
        
        case uid = "uid"
        
        case breakupValues = "breakup_values"
        
        case checkoutMode = "checkout_mode"
        
        case message = "message"
        
        case couponText = "coupon_text"
        
        case isValid = "is_valid"
        
        case restrictCheckout = "restrict_checkout"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case currency = "currency"
        
        case cartId = "cart_id"
        
        case shipments = "shipments"
        
        case paymentOptions = "payment_options"
        
        case lastModified = "last_modified"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        message = try? container.decode(String.self, forKey: .message)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        shipments = try? container.decode([Any].self, forKey: .shipments)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
    }
}

/*
    Model: CartCheckoutRequest,
*/

struct CartCheckoutRequest: Decodable {
    
    var extraMeta: [String: Any]?
    
    var paymentParams: [String: Any]?
    
    var orderingStore: Int?
    
    var meta: [String: Any]?
    
    var paymentIdentifier: String?
    
    var staff: [String: Any]?
    
    var callbackUrl: String?
    
    var addressId: Int?
    
    var fyndstoreEmpId: String?
    
    var paymentAutoConfirm: Bool?
    
    var billingAddress: [String: Any]?
    
    var billingAddressId: Int?
    
    var paymentMode: String?
    
    var merchantCode: String?
    
    var aggregator: String?
    

    enum CodingKeys: String, CodingKey {
        
        case extraMeta = "extra_meta"
        
        case paymentParams = "payment_params"
        
        case orderingStore = "ordering_store"
        
        case meta = "meta"
        
        case paymentIdentifier = "payment_identifier"
        
        case staff = "staff"
        
        case callbackUrl = "callback_url"
        
        case addressId = "address_id"
        
        case fyndstoreEmpId = "fyndstore_emp_id"
        
        case paymentAutoConfirm = "payment_auto_confirm"
        
        case billingAddress = "billing_address"
        
        case billingAddressId = "billing_address_id"
        
        case paymentMode = "payment_mode"
        
        case merchantCode = "merchant_code"
        
        case aggregator = "aggregator"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
        
        paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        meta = try? container.decode([String: Any].self, forKey: .meta)
        
        paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
        
        staff = try? container.decode([String: Any].self, forKey: .staff)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
        addressId = try? container.decode(Int.self, forKey: .addressId)
        
        fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
        
        paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
        
        billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
        
        billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
        
        paymentMode = try? container.decode(String.self, forKey: .paymentMode)
        
        merchantCode = try? container.decode(String.self, forKey: .merchantCode)
        
        aggregator = try? container.decode(String.self, forKey: .aggregator)
        
    }
}

/*
    Model: DeliverySlot,
*/

struct DeliverySlot: Decodable {
    
    var deliverySlotId: Int?
    
    var default: Bool?
    
    var deliverySlotTiming: String?
    

    enum CodingKeys: String, CodingKey {
        
        case deliverySlotId = "delivery_slot_id"
        
        case default = "default"
        
        case deliverySlotTiming = "delivery_slot_timing"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliverySlotId = try? container.decode(Int.self, forKey: .deliverySlotId)
        
        default = try? container.decode(Bool.self, forKey: .default)
        
        deliverySlotTiming = try? container.decode(String.self, forKey: .deliverySlotTiming)
        
    }
}

/*
    Model: DeliverySlotDate,
*/

struct DeliverySlotDate: Decodable {
    
    var date: String?
    
    var deliverySlot: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case date = "date"
        
        case deliverySlot = "delivery_slot"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        date = try? container.decode(String.self, forKey: .date)
        
        deliverySlot = try? container.decode([Any].self, forKey: .deliverySlot)
        
    }
}

/*
    Model: CheckCart,
*/

struct CheckCart: Decodable {
    
    var deliverySlots: [Any]?
    
    var breakupValues: BaseCartBreakup?
    
    var deliveryChargeInfo: String?
    
    var currency: CartCurrency?
    
    var cartId: Int?
    
    var codAvailable: Bool?
    
    var codMessage: String?
    
    var success: Bool?
    
    var lastModified: String?
    
    var restrictCheckout: Bool?
    
    var gstin: String?
    
    var uid: String?
    
    var checkoutMode: String?
    
    var userType: String?
    
    var message: String?
    
    var storeEmps: [Any]?
    
    var deliveryChargeOrderValue: Int?
    
    var isValid: Bool?
    
    var paymentOptions: PaymentOptions?
    
    var items: [Any]?
    
    var orderId: String?
    
    var couponText: String?
    
    var codCharges: Int?
    
    var storeCode: String?
    
    var errorMessage: String?
    
    var deliveryCharges: Int?
    

    enum CodingKeys: String, CodingKey {
        
        case deliverySlots = "delivery_slots"
        
        case breakupValues = "breakup_values"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case currency = "currency"
        
        case cartId = "cart_id"
        
        case codAvailable = "cod_available"
        
        case codMessage = "cod_message"
        
        case success = "success"
        
        case lastModified = "last_modified"
        
        case restrictCheckout = "restrict_checkout"
        
        case gstin = "gstin"
        
        case uid = "uid"
        
        case checkoutMode = "checkout_mode"
        
        case userType = "user_type"
        
        case message = "message"
        
        case storeEmps = "store_emps"
        
        case deliveryChargeOrderValue = "delivery_charge_order_value"
        
        case isValid = "is_valid"
        
        case paymentOptions = "payment_options"
        
        case items = "items"
        
        case orderId = "order_id"
        
        case couponText = "coupon_text"
        
        case codCharges = "cod_charges"
        
        case storeCode = "store_code"
        
        case errorMessage = "error_message"
        
        case deliveryCharges = "delivery_charges"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        deliverySlots = try? container.decode([Any].self, forKey: .deliverySlots)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
        
        codMessage = try? container.decode(String.self, forKey: .codMessage)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        userType = try? container.decode(String.self, forKey: .userType)
        
        message = try? container.decode(String.self, forKey: .message)
        
        storeEmps = try? container.decode([Any].self, forKey: .storeEmps)
        
        deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        items = try? container.decode([Any].self, forKey: .items)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        codCharges = try? container.decode(Int.self, forKey: .codCharges)
        
        storeCode = try? container.decode(String.self, forKey: .storeCode)
        
        errorMessage = try? container.decode(String.self, forKey: .errorMessage)
        
        deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
        
    }
}

/*
    Model: OrderData,
*/

struct OrderData: Decodable {
    
    var orderId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderId = "order_id"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
    }
}

/*
    Model: CartCheckoutResponse,
*/

struct CartCheckoutResponse: Decodable {
    
    var message: String?
    
    var appInterceptUrl: String?
    
    var callbackUrl: String?
    
    var success: Bool?
    
    var cart: CheckCart?
    
    var orderId: String?
    
    var data: OrderData?
    

    enum CodingKeys: String, CodingKey {
        
        case message = "message"
        
        case appInterceptUrl = "app_intercept_url"
        
        case callbackUrl = "callback_url"
        
        case success = "success"
        
        case cart = "cart"
        
        case orderId = "order_id"
        
        case data = "data"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try? container.decode(String.self, forKey: .message)
        
        appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
        
        callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
        
        success = try? container.decode(Bool.self, forKey: .success)
        
        cart = try? container.decode(CheckCart.self, forKey: .cart)
        
        orderId = try? container.decode(String.self, forKey: .orderId)
        
        data = try? container.decode(OrderData.self, forKey: .data)
        
    }
}

/*
    Model: Meta,
*/

struct Meta: Decodable {
    
    var orderingStore: Int?
    
    var selectedStaff: String?
    

    enum CodingKeys: String, CodingKey {
        
        case orderingStore = "ordering_store"
        
        case selectedStaff = "selected_staff"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
        
        selectedStaff = try? container.decode(String.self, forKey: .selectedStaff)
        
    }
}

/*
    Model: SharedCartDetails,
*/

struct SharedCartDetails: Decodable {
    
    var meta: Meta?
    
    var source: [String: Any]?
    
    var user: [String: Any]?
    
    var createdOn: String?
    
    var token: String?
    

    enum CodingKeys: String, CodingKey {
        
        case meta = "meta"
        
        case source = "source"
        
        case user = "user"
        
        case createdOn = "created_on"
        
        case token = "token"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        meta = try? container.decode(Meta.self, forKey: .meta)
        
        source = try? container.decode([String: Any].self, forKey: .source)
        
        user = try? container.decode([String: Any].self, forKey: .user)
        
        createdOn = try? container.decode(String.self, forKey: .createdOn)
        
        token = try? container.decode(String.self, forKey: .token)
        
    }
}

/*
    Model: SharedCartResponse,
*/

struct SharedCartResponse: Decodable {
    
    var gstin: String?
    
    var uid: String?
    
    var breakupValues: BaseCartBreakup?
    
    var checkoutMode: String?
    
    var message: String?
    
    var sharedCartDetails: SharedCartDetails?
    
    var couponText: String?
    
    var isValid: Bool?
    
    var restrictCheckout: Bool?
    
    var deliveryChargeInfo: String?
    
    var currency: CartCurrency?
    
    var cartId: Int?
    
    var paymentOptions: PaymentOptions?
    
    var lastModified: String?
    
    var items: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case gstin = "gstin"
        
        case uid = "uid"
        
        case breakupValues = "breakup_values"
        
        case checkoutMode = "checkout_mode"
        
        case message = "message"
        
        case sharedCartDetails = "shared_cart_details"
        
        case couponText = "coupon_text"
        
        case isValid = "is_valid"
        
        case restrictCheckout = "restrict_checkout"
        
        case deliveryChargeInfo = "delivery_charge_info"
        
        case currency = "currency"
        
        case cartId = "cart_id"
        
        case paymentOptions = "payment_options"
        
        case lastModified = "last_modified"
        
        case items = "items"
        
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        gstin = try? container.decode(String.self, forKey: .gstin)
        
        uid = try? container.decode(String.self, forKey: .uid)
        
        breakupValues = try? container.decode(BaseCartBreakup.self, forKey: .breakupValues)
        
        checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
        
        message = try? container.decode(String.self, forKey: .message)
        
        sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
        
        couponText = try? container.decode(String.self, forKey: .couponText)
        
        isValid = try? container.decode(Bool.self, forKey: .isValid)
        
        restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
        
        deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
        
        currency = try? container.decode(CartCurrency.self, forKey: .currency)
        
        cartId = try? container.decode(Int.self, forKey: .cartId)
        
        paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
        
        lastModified = try? container.decode(String.self, forKey: .lastModified)
        
        items = try? container.decode([Any].self, forKey: .items)
        
    }
}

