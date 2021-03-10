    public extension ApplicationClient {
        
        
        /*
            Model: Media
            Used By: Catalog
        */
        struct Media: Codable {
            
            public var type: String?
            
            public var url: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case url = "url"
                
            }

            public init(type: String?, url: String?) {
                
                self.type = type
                
                self.url = url
                
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
            Model: ProductListingActionPage
            Used By: Catalog
        */
        struct ProductListingActionPage: Codable {
            
            public var type: String?
            
            public var query: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case query = "query"
                
            }

            public init(type: String?, query: [String: Any]?) {
                
                self.type = type
                
                self.query = query
                
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

            public init(type: String?, page: ProductListingActionPage?) {
                
                self.type = type
                
                self.page = page
                
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
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case action = "action"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(name: String?, action: ProductListingAction?, uid: Int?, logo: Media?) {
                
                self.name = name
                
                self.action = action
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: ProductDetailAttribute
            Used By: Catalog
        */
        struct ProductDetailAttribute: Codable {
            
            public var type: String?
            
            public var key: String?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case key = "key"
                
                case value = "value"
                
            }

            public init(type: String?, key: String?, value: String?) {
                
                self.type = type
                
                self.key = key
                
                self.value = value
                
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
            
            public var details: [ProductDetailAttribute]?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case title = "title"
                
            }

            public init(details: [ProductDetailAttribute]?, title: String?) {
                
                self.details = details
                
                self.title = title
                
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
            
            public var shortDescription: String?
            
            public var name: String?
            
            public var highlights: [String]?
            
            public var slug: String
            
            public var productOnlineDate: String?
            
            public var hasVariant: Bool?
            
            public var tryouts: [String]?
            
            public var medias: [Media]?
            
            public var categories: [ProductBrand]?
            
            public var similars: [String]?
            
            public var attributes: [String: Any]?
            
            public var imageNature: String?
            
            public var brand: ProductBrand?
            
            public var type: String?
            
            public var itemType: String?
            
            public var rating: Double?
            
            public var uid: Int?
            
            public var description: String?
            
            public var color: String?
            
            public var teaserTag: String?
            
            public var ratingCount: Int?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            

            public enum CodingKeys: String, CodingKey {
                
                case shortDescription = "short_description"
                
                case name = "name"
                
                case highlights = "highlights"
                
                case slug = "slug"
                
                case productOnlineDate = "product_online_date"
                
                case hasVariant = "has_variant"
                
                case tryouts = "tryouts"
                
                case medias = "medias"
                
                case categories = "categories"
                
                case similars = "similars"
                
                case attributes = "attributes"
                
                case imageNature = "image_nature"
                
                case brand = "brand"
                
                case type = "type"
                
                case itemType = "item_type"
                
                case rating = "rating"
                
                case uid = "uid"
                
                case description = "description"
                
                case color = "color"
                
                case teaserTag = "teaser_tag"
                
                case ratingCount = "rating_count"
                
                case groupedAttributes = "grouped_attributes"
                
            }

            public init(shortDescription: String?, name: String?, highlights: [String]?, slug: String, productOnlineDate: String?, hasVariant: Bool?, tryouts: [String]?, medias: [Media]?, categories: [ProductBrand]?, similars: [String]?, attributes: [String: Any]?, imageNature: String?, brand: ProductBrand?, type: String?, itemType: String?, rating: Double?, uid: Int?, description: String?, color: String?, teaserTag: String?, ratingCount: Int?, groupedAttributes: [ProductDetailGroupedAttribute]?) {
                
                self.shortDescription = shortDescription
                
                self.name = name
                
                self.highlights = highlights
                
                self.slug = slug
                
                self.productOnlineDate = productOnlineDate
                
                self.hasVariant = hasVariant
                
                self.tryouts = tryouts
                
                self.medias = medias
                
                self.categories = categories
                
                self.similars = similars
                
                self.attributes = attributes
                
                self.imageNature = imageNature
                
                self.brand = brand
                
                self.type = type
                
                self.itemType = itemType
                
                self.rating = rating
                
                self.uid = uid
                
                self.description = description
                
                self.color = color
                
                self.teaserTag = teaserTag
                
                self.ratingCount = ratingCount
                
                self.groupedAttributes = groupedAttributes
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                shortDescription = try? container.decode(String.self, forKey: .shortDescription)
                
                name = try? container.decode(String.self, forKey: .name)
                
                highlights = try? container.decode([String].self, forKey: .highlights)
                
                slug = try container.decode(String.self, forKey: .slug)
                
                productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
                
                hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
                
                tryouts = try? container.decode([String].self, forKey: .tryouts)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                categories = try? container.decode([ProductBrand].self, forKey: .categories)
                
                similars = try? container.decode([String].self, forKey: .similars)
                
                attributes = try? container.decode([String: Any].self, forKey: .attributes)
                
                imageNature = try? container.decode(String.self, forKey: .imageNature)
                
                brand = try? container.decode(ProductBrand.self, forKey: .brand)
                
                type = try? container.decode(String.self, forKey: .type)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                rating = try? container.decode(Double.self, forKey: .rating)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                description = try? container.decode(String.self, forKey: .description)
                
                color = try? container.decode(String.self, forKey: .color)
                
                teaserTag = try? container.decode(String.self, forKey: .teaserTag)
                
                ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
                
                groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
            }
            
        }
        
        /*
            Model: ErrorResponse
            Used By: Catalog
        */
        struct ErrorResponse: Codable {
            
            public var error: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
            }

            public init(error: String?) {
                
                self.error = error
                
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
            Model: Price
            Used By: Catalog
        */
        struct Price: Codable {
            
            public var currencyCode: String?
            
            public var max: Double?
            
            public var min: Double?
            
            public var currencySymbol: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case max = "max"
                
                case min = "min"
                
                case currencySymbol = "currency_symbol"
                
            }

            public init(currencyCode: String?, max: Double?, min: Double?, currencySymbol: String?) {
                
                self.currencyCode = currencyCode
                
                self.max = max
                
                self.min = min
                
                self.currencySymbol = currencySymbol
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                max = try? container.decode(Double.self, forKey: .max)
                
                min = try? container.decode(Double.self, forKey: .min)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
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

            public init(effective: Price?, marked: Price?) {
                
                self.effective = effective
                
                self.marked = marked
                
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
            Model: ProductSize
            Used By: Catalog
        */
        struct ProductSize: Codable {
            
            public var value: String?
            
            public var quantity: Int?
            
            public var display: String?
            
            public var isAvailable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case quantity = "quantity"
                
                case display = "display"
                
                case isAvailable = "is_available"
                
            }

            public init(value: String?, quantity: Int?, display: String?, isAvailable: Bool?) {
                
                self.value = value
                
                self.quantity = quantity
                
                self.display = display
                
                self.isAvailable = isAvailable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                value = try? container.decode(String.self, forKey: .value)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                display = try? container.decode(String.self, forKey: .display)
                
                isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
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

            public init(count: Int?) {
                
                self.count = count
                
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
            
            public var price: ProductListingPrice?
            
            public var sizeChart: [String: Any]?
            
            public var sellable: Bool?
            
            public var sizes: [ProductSize]?
            
            public var stores: ProductSizeStores?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case price = "price"
                
                case sizeChart = "size_chart"
                
                case sellable = "sellable"
                
                case sizes = "sizes"
                
                case stores = "stores"
                
            }

            public init(discount: String?, price: ProductListingPrice?, sizeChart: [String: Any]?, sellable: Bool?, sizes: [ProductSize]?, stores: ProductSizeStores?) {
                
                self.discount = discount
                
                self.price = price
                
                self.sizeChart = sizeChart
                
                self.sellable = sellable
                
                self.sizes = sizes
                
                self.stores = stores
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                price = try? container.decode(ProductListingPrice.self, forKey: .price)
                
                sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
                
                sellable = try? container.decode(Bool.self, forKey: .sellable)
                
                sizes = try? container.decode([ProductSize].self, forKey: .sizes)
                
                stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
            }
            
        }
        
        /*
            Model: Seller
            Used By: Catalog
        */
        struct Seller: Codable {
            
            public var name: String?
            
            public var uid: Int?
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
                case count = "count"
                
            }

            public init(name: String?, uid: Int?, count: Int?) {
                
                self.name = name
                
                self.uid = uid
                
                self.count = count
                
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
            Model: ProductStockPrice
            Used By: Catalog
        */
        struct ProductStockPrice: Codable {
            
            public var effective: Double?
            
            public var currency: String?
            
            public var marked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case effective = "effective"
                
                case currency = "currency"
                
                case marked = "marked"
                
            }

            public init(effective: Double?, currency: String?, marked: Double?) {
                
                self.effective = effective
                
                self.currency = currency
                
                self.marked = marked
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                effective = try? container.decode(Double.self, forKey: .effective)
                
                currency = try? container.decode(String.self, forKey: .currency)
                
                marked = try? container.decode(Double.self, forKey: .marked)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
            }
            
        }
        
        /*
            Model: Store
            Used By: Catalog
        */
        struct Store: Codable {
            
            public var name: String?
            
            public var uid: Int?
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
                case count = "count"
                
            }

            public init(name: String?, uid: Int?, count: Int?) {
                
                self.name = name
                
                self.uid = uid
                
                self.count = count
                
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
            Model: ArticleAssignment
            Used By: Catalog
        */
        struct ArticleAssignment: Codable {
            
            public var level: String?
            
            public var strategy: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case level = "level"
                
                case strategy = "strategy"
                
            }

            public init(level: String?, strategy: String?) {
                
                self.level = level
                
                self.strategy = strategy
                
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
            Model: ProductSizePriceResponse
            Used By: Catalog
        */
        struct ProductSizePriceResponse: Codable {
            
            public var seller: Seller?
            
            public var pincode: Int?
            
            public var strategyWiseListing: [[String: Any]]?
            
            public var pricePerPrice: ProductStockPrice?
            
            public var itemType: String?
            
            public var quantity: Int?
            
            public var articleId: String?
            
            public var specialBadge: String?
            
            public var sellerCount: Int?
            
            public var price: ProductStockPrice?
            
            public var discount: String?
            
            public var store: Store?
            
            public var set: [String: Any]?
            
            public var articleAssignment: ArticleAssignment?
            
            public var longLat: [Double]?
            

            public enum CodingKeys: String, CodingKey {
                
                case seller = "seller"
                
                case pincode = "pincode"
                
                case strategyWiseListing = "strategy_wise_listing"
                
                case pricePerPrice = "price_per_price"
                
                case itemType = "item_type"
                
                case quantity = "quantity"
                
                case articleId = "article_id"
                
                case specialBadge = "special_badge"
                
                case sellerCount = "seller_count"
                
                case price = "price"
                
                case discount = "discount"
                
                case store = "store"
                
                case set = "set"
                
                case articleAssignment = "article_assignment"
                
                case longLat = "long_lat"
                
            }

            public init(seller: Seller?, pincode: Int?, strategyWiseListing: [[String: Any]]?, pricePerPrice: ProductStockPrice?, itemType: String?, quantity: Int?, articleId: String?, specialBadge: String?, sellerCount: Int?, price: ProductStockPrice?, discount: String?, store: Store?, set: [String: Any]?, articleAssignment: ArticleAssignment?, longLat: [Double]?) {
                
                self.seller = seller
                
                self.pincode = pincode
                
                self.strategyWiseListing = strategyWiseListing
                
                self.pricePerPrice = pricePerPrice
                
                self.itemType = itemType
                
                self.quantity = quantity
                
                self.articleId = articleId
                
                self.specialBadge = specialBadge
                
                self.sellerCount = sellerCount
                
                self.price = price
                
                self.discount = discount
                
                self.store = store
                
                self.set = set
                
                self.articleAssignment = articleAssignment
                
                self.longLat = longLat
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                seller = try? container.decode(Seller.self, forKey: .seller)
                
                pincode = try? container.decode(Int.self, forKey: .pincode)
                
                strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
                
                pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                specialBadge = try? container.decode(String.self, forKey: .specialBadge)
                
                sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
                
                price = try? container.decode(ProductStockPrice.self, forKey: .price)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                store = try? container.decode(Store.self, forKey: .store)
                
                set = try? container.decode([String: Any].self, forKey: .set)
                
                articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                
                longLat = try? container.decode([Double].self, forKey: .longLat)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
                
                try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
                
                try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(set, forKey: .set)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(longLat, forKey: .longLat)
                
            }
            
        }
        
        /*
            Model: Page
            Used By: Catalog
        */
        struct Page: Codable {
            
            public var hasNext: Bool?
            
            public var nextId: String?
            
            public var type: String?
            
            public var size: Int?
            
            public var current: Int?
            
            public var hasPrevious: Bool?
            
            public var itemTotal: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case hasNext = "has_next"
                
                case nextId = "next_id"
                
                case type = "type"
                
                case size = "size"
                
                case current = "current"
                
                case hasPrevious = "has_previous"
                
                case itemTotal = "item_total"
                
            }

            public init(hasNext: Bool?, nextId: String?, type: String?, size: Int?, current: Int?, hasPrevious: Bool?, itemTotal: Int?) {
                
                self.hasNext = hasNext
                
                self.nextId = nextId
                
                self.type = type
                
                self.size = size
                
                self.current = current
                
                self.hasPrevious = hasPrevious
                
                self.itemTotal = itemTotal
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                hasNext = try? container.decode(Bool.self, forKey: .hasNext)
                
                nextId = try? container.decode(String.self, forKey: .nextId)
                
                type = try? container.decode(String.self, forKey: .type)
                
                size = try? container.decode(Int.self, forKey: .size)
                
                current = try? container.decode(Int.self, forKey: .current)
                
                hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
                
                itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(nextId, forKey: .nextId)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
                
            }
            
        }
        
        /*
            Model: ProductSizeSellerFilter
            Used By: Catalog
        */
        struct ProductSizeSellerFilter: Codable {
            
            public var name: String?
            
            public var value: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case value = "value"
                
                case isSelected = "is_selected"
                
            }

            public init(name: String?, value: String?, isSelected: Bool?) {
                
                self.name = name
                
                self.value = value
                
                self.isSelected = isSelected
                
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
            
            public var page: Page?
            
            public var sortOn: [ProductSizeSellerFilter]?
            
            public var items: [ProductSizePriceResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case sortOn = "sort_on"
                
                case items = "items"
                
            }

            public init(page: Page?, sortOn: [ProductSizeSellerFilter]?, items: [ProductSizePriceResponse]?) {
                
                self.page = page
                
                self.sortOn = sortOn
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            Model: AttributeDetail
            Used By: Catalog
        */
        struct AttributeDetail: Codable {
            
            public var key: String?
            
            public var display: String?
            
            public var description: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case display = "display"
                
                case description = "description"
                
            }

            public init(key: String?, display: String?, description: String?) {
                
                self.key = key
                
                self.display = display
                
                self.description = description
                
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

            public init(attributesMetadata: [AttributeDetail]?, items: [ProductDetail]?) {
                
                self.attributesMetadata = attributesMetadata
                
                self.items = items
                
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
            
            public var subtitle: String?
            
            public var attributesMetadata: [AttributeDetail]?
            
            public var title: String?
            
            public var items: [ProductDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case subtitle = "subtitle"
                
                case attributesMetadata = "attributes_metadata"
                
                case title = "title"
                
                case items = "items"
                
            }

            public init(subtitle: String?, attributesMetadata: [AttributeDetail]?, title: String?, items: [ProductDetail]?) {
                
                self.subtitle = subtitle
                
                self.attributesMetadata = attributesMetadata
                
                self.title = title
                
                self.items = items
                
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
            Model: ProductFrequentlyComparedSimilarResponse
            Used By: Catalog
        */
        struct ProductFrequentlyComparedSimilarResponse: Codable {
            
            public var similars: [ProductCompareResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: [ProductCompareResponse]?) {
                
                self.similars = similars
                
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
            
            public var title: String?
            
            public var items: [ProductDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case subtitle = "subtitle"
                
                case title = "title"
                
                case items = "items"
                
            }

            public init(subtitle: String?, title: String?, items: [ProductDetail]?) {
                
                self.subtitle = subtitle
                
                self.title = title
                
                self.items = items
                
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
            Model: SimilarProductByTypeResponse
            Used By: Catalog
        */
        struct SimilarProductByTypeResponse: Codable {
            
            public var similars: [ProductSimilarItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: [ProductSimilarItem]?) {
                
                self.similars = similars
                
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
            
            public var uid: Int?
            
            public var value: String?
            
            public var colorName: String?
            
            public var medias: [Media]?
            
            public var color: String?
            
            public var name: String?
            
            public var isAvailable: Bool?
            
            public var action: ProductListingAction?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case value = "value"
                
                case colorName = "color_name"
                
                case medias = "medias"
                
                case color = "color"
                
                case name = "name"
                
                case isAvailable = "is_available"
                
                case action = "action"
                
                case slug = "slug"
                
            }

            public init(uid: Int?, value: String?, colorName: String?, medias: [Media]?, color: String?, name: String?, isAvailable: Bool?, action: ProductListingAction?, slug: String?) {
                
                self.uid = uid
                
                self.value = value
                
                self.colorName = colorName
                
                self.medias = medias
                
                self.color = color
                
                self.name = name
                
                self.isAvailable = isAvailable
                
                self.action = action
                
                self.slug = slug
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                value = try? container.decode(String.self, forKey: .value)
                
                colorName = try? container.decode(String.self, forKey: .colorName)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                color = try? container.decode(String.self, forKey: .color)
                
                name = try? container.decode(String.self, forKey: .name)
                
                isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(colorName, forKey: .colorName)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
            }
            
        }
        
        /*
            Model: ProductVariantResponse
            Used By: Catalog
        */
        struct ProductVariantResponse: Codable {
            
            public var items: [ProductVariantItemResponse]?
            
            public var displayType: String?
            
            public var header: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case displayType = "display_type"
                
                case header = "header"
                
            }

            public init(items: [ProductVariantItemResponse]?, displayType: String?, header: String?) {
                
                self.items = items
                
                self.displayType = displayType
                
                self.header = header
                
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
            
            public var variants: [ProductVariantResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case variants = "variants"
                
            }

            public init(variants: [ProductVariantResponse]?) {
                
                self.variants = variants
                
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
            
            public var name: String?
            
            public var id: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case id = "id"
                
            }

            public init(name: String?, id: Int?) {
                
                self.name = name
                
                self.id = id
                
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
            
            public var name: String?
            
            public var city: String?
            
            public var id: Int?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case city = "city"
                
                case id = "id"
                
                case code = "code"
                
            }

            public init(name: String?, city: String?, id: Int?, code: String?) {
                
                self.name = name
                
                self.city = city
                
                self.id = id
                
                self.code = code
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                city = try? container.decode(String.self, forKey: .city)
                
                id = try? container.decode(Int.self, forKey: .id)
                
                code = try? container.decode(String.self, forKey: .code)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
            }
            
        }
        
        /*
            Model: ProductStockStatusItem
            Used By: Catalog
        */
        struct ProductStockStatusItem: Codable {
            
            public var seller: Seller?
            
            public var itemId: Int?
            
            public var uid: String?
            
            public var quantity: Int?
            
            public var size: String?
            
            public var company: CompanyDetail?
            
            public var price: ProductStockPrice?
            
            public var store: StoreDetail?
            
            public var identifier: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case seller = "seller"
                
                case itemId = "item_id"
                
                case uid = "uid"
                
                case quantity = "quantity"
                
                case size = "size"
                
                case company = "company"
                
                case price = "price"
                
                case store = "store"
                
                case identifier = "identifier"
                
            }

            public init(seller: Seller?, itemId: Int?, uid: String?, quantity: Int?, size: String?, company: CompanyDetail?, price: ProductStockPrice?, store: StoreDetail?, identifier: [String: Any]?) {
                
                self.seller = seller
                
                self.itemId = itemId
                
                self.uid = uid
                
                self.quantity = quantity
                
                self.size = size
                
                self.company = company
                
                self.price = price
                
                self.store = store
                
                self.identifier = identifier
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                seller = try? container.decode(Seller.self, forKey: .seller)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                size = try? container.decode(String.self, forKey: .size)
                
                company = try? container.decode(CompanyDetail.self, forKey: .company)
                
                price = try? container.decode(ProductStockPrice.self, forKey: .price)
                
                store = try? container.decode(StoreDetail.self, forKey: .store)
                
                identifier = try? container.decode([String: Any].self, forKey: .identifier)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
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

            public init(items: [ProductStockStatusItem]?) {
                
                self.items = items
                
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
            
            public var page: Page?
            
            public var items: [ProductStockStatusItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(page: Page?, items: [ProductStockStatusItem]?) {
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try? container.decode(Page.self, forKey: .page)
                
                items = try? container.decode([ProductStockStatusItem].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: ProductFiltersKey
            Used By: Catalog
        */
        struct ProductFiltersKey: Codable {
            
            public var name: String
            
            public var kind: String?
            
            public var display: String
            
            public var logo: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case kind = "kind"
                
                case display = "display"
                
                case logo = "logo"
                
            }

            public init(name: String, kind: String?, display: String, logo: String?) {
                
                self.name = name
                
                self.kind = kind
                
                self.display = display
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try container.decode(String.self, forKey: .name)
                
                kind = try? container.decode(String.self, forKey: .kind)
                
                display = try container.decode(String.self, forKey: .display)
                
                logo = try? container.decode(String.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(kind, forKey: .kind)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: ProductFiltersValue
            Used By: Catalog
        */
        struct ProductFiltersValue: Codable {
            
            public var selectedMax: Int?
            
            public var isSelected: Bool
            
            public var value: String
            
            public var max: Int?
            
            public var displayFormat: String?
            
            public var currencyCode: String?
            
            public var queryFormat: String?
            
            public var selectedMin: Int?
            
            public var display: String
            
            public var currencySymbol: String?
            
            public var count: Int?
            
            public var min: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case selectedMax = "selected_max"
                
                case isSelected = "is_selected"
                
                case value = "value"
                
                case max = "max"
                
                case displayFormat = "display_format"
                
                case currencyCode = "currency_code"
                
                case queryFormat = "query_format"
                
                case selectedMin = "selected_min"
                
                case display = "display"
                
                case currencySymbol = "currency_symbol"
                
                case count = "count"
                
                case min = "min"
                
            }

            public init(selectedMax: Int?, isSelected: Bool, value: String, max: Int?, displayFormat: String?, currencyCode: String?, queryFormat: String?, selectedMin: Int?, display: String, currencySymbol: String?, count: Int?, min: Int?) {
                
                self.selectedMax = selectedMax
                
                self.isSelected = isSelected
                
                self.value = value
                
                self.max = max
                
                self.displayFormat = displayFormat
                
                self.currencyCode = currencyCode
                
                self.queryFormat = queryFormat
                
                self.selectedMin = selectedMin
                
                self.display = display
                
                self.currencySymbol = currencySymbol
                
                self.count = count
                
                self.min = min
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                selectedMax = try? container.decode(Int.self, forKey: .selectedMax)
                
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                value = try container.decode(String.self, forKey: .value)
                
                max = try? container.decode(Int.self, forKey: .max)
                
                displayFormat = try? container.decode(String.self, forKey: .displayFormat)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                queryFormat = try? container.decode(String.self, forKey: .queryFormat)
                
                selectedMin = try? container.decode(Int.self, forKey: .selectedMin)
                
                display = try container.decode(String.self, forKey: .display)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                count = try? container.decode(Int.self, forKey: .count)
                
                min = try? container.decode(Int.self, forKey: .min)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
                
                try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
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

            public init(key: ProductFiltersKey, values: [ProductFiltersValue]) {
                
                self.key = key
                
                self.values = values
                
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
            
            public var name: String?
            
            public var value: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case value = "value"
                
                case isSelected = "is_selected"
                
            }

            public init(name: String?, value: String?, isSelected: Bool?) {
                
                self.name = name
                
                self.value = value
                
                self.isSelected = isSelected
                
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
            Model: ProductListingDetail
            Used By: Catalog
        */
        struct ProductListingDetail: Codable {
            
            public var shortDescription: String?
            
            public var name: String?
            
            public var highlights: [String]?
            
            public var slug: String
            
            public var productOnlineDate: String?
            
            public var hasVariant: Bool?
            
            public var tryouts: [String]?
            
            public var medias: [Media]?
            
            public var price: ProductListingPrice?
            
            public var categories: [ProductBrand]?
            
            public var similars: [String]?
            
            public var attributes: [String: Any]?
            
            public var imageNature: String?
            
            public var brand: ProductBrand?
            
            public var type: String?
            
            public var itemType: String?
            
            public var rating: Double?
            
            public var uid: Int?
            
            public var discount: String?
            
            public var description: String?
            
            public var color: String?
            
            public var teaserTag: String?
            
            public var sellable: Bool?
            
            public var ratingCount: Int?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            

            public enum CodingKeys: String, CodingKey {
                
                case shortDescription = "short_description"
                
                case name = "name"
                
                case highlights = "highlights"
                
                case slug = "slug"
                
                case productOnlineDate = "product_online_date"
                
                case hasVariant = "has_variant"
                
                case tryouts = "tryouts"
                
                case medias = "medias"
                
                case price = "price"
                
                case categories = "categories"
                
                case similars = "similars"
                
                case attributes = "attributes"
                
                case imageNature = "image_nature"
                
                case brand = "brand"
                
                case type = "type"
                
                case itemType = "item_type"
                
                case rating = "rating"
                
                case uid = "uid"
                
                case discount = "discount"
                
                case description = "description"
                
                case color = "color"
                
                case teaserTag = "teaser_tag"
                
                case sellable = "sellable"
                
                case ratingCount = "rating_count"
                
                case groupedAttributes = "grouped_attributes"
                
            }

            public init(shortDescription: String?, name: String?, highlights: [String]?, slug: String, productOnlineDate: String?, hasVariant: Bool?, tryouts: [String]?, medias: [Media]?, price: ProductListingPrice?, categories: [ProductBrand]?, similars: [String]?, attributes: [String: Any]?, imageNature: String?, brand: ProductBrand?, type: String?, itemType: String?, rating: Double?, uid: Int?, discount: String?, description: String?, color: String?, teaserTag: String?, sellable: Bool?, ratingCount: Int?, groupedAttributes: [ProductDetailGroupedAttribute]?) {
                
                self.shortDescription = shortDescription
                
                self.name = name
                
                self.highlights = highlights
                
                self.slug = slug
                
                self.productOnlineDate = productOnlineDate
                
                self.hasVariant = hasVariant
                
                self.tryouts = tryouts
                
                self.medias = medias
                
                self.price = price
                
                self.categories = categories
                
                self.similars = similars
                
                self.attributes = attributes
                
                self.imageNature = imageNature
                
                self.brand = brand
                
                self.type = type
                
                self.itemType = itemType
                
                self.rating = rating
                
                self.uid = uid
                
                self.discount = discount
                
                self.description = description
                
                self.color = color
                
                self.teaserTag = teaserTag
                
                self.sellable = sellable
                
                self.ratingCount = ratingCount
                
                self.groupedAttributes = groupedAttributes
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                shortDescription = try? container.decode(String.self, forKey: .shortDescription)
                
                name = try? container.decode(String.self, forKey: .name)
                
                highlights = try? container.decode([String].self, forKey: .highlights)
                
                slug = try container.decode(String.self, forKey: .slug)
                
                productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
                
                hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
                
                tryouts = try? container.decode([String].self, forKey: .tryouts)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                price = try? container.decode(ProductListingPrice.self, forKey: .price)
                
                categories = try? container.decode([ProductBrand].self, forKey: .categories)
                
                similars = try? container.decode([String].self, forKey: .similars)
                
                attributes = try? container.decode([String: Any].self, forKey: .attributes)
                
                imageNature = try? container.decode(String.self, forKey: .imageNature)
                
                brand = try? container.decode(ProductBrand.self, forKey: .brand)
                
                type = try? container.decode(String.self, forKey: .type)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                rating = try? container.decode(Double.self, forKey: .rating)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                description = try? container.decode(String.self, forKey: .description)
                
                color = try? container.decode(String.self, forKey: .color)
                
                teaserTag = try? container.decode(String.self, forKey: .teaserTag)
                
                sellable = try? container.decode(Bool.self, forKey: .sellable)
                
                ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
                
                groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
            }
            
        }
        
        /*
            Model: ProductListingResponse
            Used By: Catalog
        */
        struct ProductListingResponse: Codable {
            
            public var page: Page?
            
            public var filters: [ProductFilters]?
            
            public var sortOn: [ProductSortOn]?
            
            public var items: [ProductListingDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case filters = "filters"
                
                case sortOn = "sort_on"
                
                case items = "items"
                
            }

            public init(page: Page?, filters: [ProductFilters]?, sortOn: [ProductSortOn]?, items: [ProductListingDetail]?) {
                
                self.page = page
                
                self.filters = filters
                
                self.sortOn = sortOn
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try? container.decode(Page.self, forKey: .page)
                
                filters = try? container.decode([ProductFilters].self, forKey: .filters)
                
                sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
                
                items = try? container.decode([ProductListingDetail].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: ImageUrls
            Used By: Catalog
        */
        struct ImageUrls: Codable {
            
            public var landscape: Media?
            
            public var portrait: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case landscape = "landscape"
                
                case portrait = "portrait"
                
            }

            public init(landscape: Media?, portrait: Media?) {
                
                self.landscape = landscape
                
                self.portrait = portrait
                
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
            Model: BrandItem
            Used By: Catalog
        */
        struct BrandItem: Codable {
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            
            public var discount: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var departments: [String]?
            
            public var slug: String?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case banners = "banners"
                
                case discount = "discount"
                
                case name = "name"
                
                case action = "action"
                
                case departments = "departments"
                
                case slug = "slug"
                
                case logo = "logo"
                
            }

            public init(uid: Int?, banners: ImageUrls?, discount: String?, name: String?, action: ProductListingAction?, departments: [String]?, slug: String?, logo: Media?) {
                
                self.uid = uid
                
                self.banners = banners
                
                self.discount = discount
                
                self.name = name
                
                self.action = action
                
                self.departments = departments
                
                self.slug = slug
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                name = try? container.decode(String.self, forKey: .name)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                departments = try? container.decode([String].self, forKey: .departments)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: BrandListingResponse
            Used By: Catalog
        */
        struct BrandListingResponse: Codable {
            
            public var page: Page?
            
            public var items: [BrandItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(page: Page?, items: [BrandItem]?) {
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try? container.decode(Page.self, forKey: .page)
                
                items = try? container.decode([BrandItem].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: BrandDetailResponse
            Used By: Catalog
        */
        struct BrandDetailResponse: Codable {
            
            public var logo: Media?
            
            public var name: String?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case logo = "logo"
                
                case name = "name"
                
                case uid = "uid"
                
                case banners = "banners"
                
            }

            public init(logo: Media?, name: String?, uid: Int?, banners: ImageUrls?) {
                
                self.logo = logo
                
                self.name = name
                
                self.uid = uid
                
                self.banners = banners
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                name = try? container.decode(String.self, forKey: .name)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
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

            public init(slug: String?, uid: Int?) {
                
                self.slug = slug
                
                self.uid = uid
                
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
            
            public var uid: Int?
            
            public var childs: [[String: Any]]?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var slug: String?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case childs = "childs"
                
                case name = "name"
                
                case action = "action"
                
                case slug = "slug"
                
                case banners = "banners"
                
            }

            public init(uid: Int?, childs: [[String: Any]]?, name: String?, action: ProductListingAction?, slug: String?, banners: ImageUrls?) {
                
                self.uid = uid
                
                self.childs = childs
                
                self.name = name
                
                self.action = action
                
                self.slug = slug
                
                self.banners = banners
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                childs = try? container.decode([[String: Any]].self, forKey: .childs)
                
                name = try? container.decode(String.self, forKey: .name)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
            }
            
        }
        
        /*
            Model: DepartmentCategoryTree
            Used By: Catalog
        */
        struct DepartmentCategoryTree: Codable {
            
            public var department: String?
            
            public var items: [CategoryItems]?
            

            public enum CodingKeys: String, CodingKey {
                
                case department = "department"
                
                case items = "items"
                
            }

            public init(department: String?, items: [CategoryItems]?) {
                
                self.department = department
                
                self.items = items
                
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

            public init(departments: [DepartmentIdentifier]?, data: [DepartmentCategoryTree]?) {
                
                self.departments = departments
                
                self.data = data
                
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
            
            public var name: String?
            
            public var uid: Int?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case logo = "logo"
                
                case name = "name"
                
                case uid = "uid"
                
                case banners = "banners"
                
            }

            public init(logo: Media?, name: String?, uid: Int?, banners: ImageUrls?) {
                
                self.logo = logo
                
                self.name = name
                
                self.uid = uid
                
                self.banners = banners
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                name = try? container.decode(String.self, forKey: .name)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
            }
            
        }
        
        /*
            Model: HomeListingResponse
            Used By: Catalog
        */
        struct HomeListingResponse: Codable {
            
            public var message: String?
            
            public var page: Page?
            
            public var items: [ProductListingDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(message: String?, page: Page?, items: [ProductListingDetail]?) {
                
                self.message = message
                
                self.page = page
                
                self.items = items
                
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
            Model: Department
            Used By: Catalog
        */
        struct Department: Codable {
            
            public var uid: Int?
            
            public var priorityOrder: Int?
            
            public var name: String?
            
            public var slug: String?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case priorityOrder = "priority_order"
                
                case name = "name"
                
                case slug = "slug"
                
                case logo = "logo"
                
            }

            public init(uid: Int?, priorityOrder: Int?, name: String?, slug: String?, logo: Media?) {
                
                self.uid = uid
                
                self.priorityOrder = priorityOrder
                
                self.name = name
                
                self.slug = slug
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
                
                name = try? container.decode(String.self, forKey: .name)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
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

            public init(items: [Department]?) {
                
                self.items = items
                
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
            
            public var type: String?
            
            public var display: String?
            
            public var action: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case logo = "logo"
                
                case type = "type"
                
                case display = "display"
                
                case action = "action"
                
            }

            public init(logo: Media?, type: String?, display: String?, action: [String: Any]?) {
                
                self.logo = logo
                
                self.type = type
                
                self.display = display
                
                self.action = action
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                type = try? container.decode(String.self, forKey: .type)
                
                display = try? container.decode(String.self, forKey: .display)
                
                action = try? container.decode([String: Any].self, forKey: .action)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
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

            public init(items: [AutocompleteItem]?) {
                
                self.items = items
                
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

            public init(name: String?, display: String?, isSelected: Bool?) {
                
                self.name = name
                
                self.display = display
                
                self.isSelected = isSelected
                
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

            public init(name: String?, display: String?, isSelected: Bool?) {
                
                self.name = name
                
                self.display = display
                
                self.isSelected = isSelected
                
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
            
            public var type: [CollectionListingFilterType]?
            
            public var tags: [CollectionListingFilterTag]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case tags = "tags"
                
            }

            public init(type: [CollectionListingFilterType]?, tags: [CollectionListingFilterTag]?) {
                
                self.type = type
                
                self.tags = tags
                
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
            Model: GetCollectionDetailNest
            Used By: Catalog
        */
        struct GetCollectionDetailNest: Codable {
            
            public var query: [String: Any]?
            
            public var schedule: [String: Any]?
            
            public var name: String?
            
            public var slug: String?
            
            public var visibleFacetsKeys: [String]?
            
            public var allowFacets: Bool?
            
            public var action: ProductListingAction?
            
            public var logo: Media?
            
            public var banners: ImageUrls?
            
            public var meta: [String: Any]?
            
            public var type: String?
            
            public var appId: String?
            
            public var badge: [String: Any]?
            
            public var allowSort: Bool?
            
            public var isActive: Bool?
            
            public var uid: String?
            
            public var description: String?
            
            public var tag: [String]?
            
            public var cron: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case query = "query"
                
                case schedule = "_schedule"
                
                case name = "name"
                
                case slug = "slug"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case allowFacets = "allow_facets"
                
                case action = "action"
                
                case logo = "logo"
                
                case banners = "banners"
                
                case meta = "meta"
                
                case type = "type"
                
                case appId = "app_id"
                
                case badge = "badge"
                
                case allowSort = "allow_sort"
                
                case isActive = "is_active"
                
                case uid = "uid"
                
                case description = "description"
                
                case tag = "tag"
                
                case cron = "cron"
                
            }

            public init(query: [String: Any]?, schedule: [String: Any]?, name: String?, slug: String?, visibleFacetsKeys: [String]?, allowFacets: Bool?, action: ProductListingAction?, logo: Media?, banners: ImageUrls?, meta: [String: Any]?, type: String?, appId: String?, badge: [String: Any]?, allowSort: Bool?, isActive: Bool?, uid: String?, description: String?, tag: [String]?, cron: [String: Any]?) {
                
                self.query = query
                
                self.schedule = schedule
                
                self.name = name
                
                self.slug = slug
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.allowFacets = allowFacets
                
                self.action = action
                
                self.logo = logo
                
                self.banners = banners
                
                self.meta = meta
                
                self.type = type
                
                self.appId = appId
                
                self.badge = badge
                
                self.allowSort = allowSort
                
                self.isActive = isActive
                
                self.uid = uid
                
                self.description = description
                
                self.tag = tag
                
                self.cron = cron
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                query = try? container.decode([String: Any].self, forKey: .query)
                
                schedule = try? container.decode([String: Any].self, forKey: .schedule)
                
                name = try? container.decode(String.self, forKey: .name)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
                
                allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                type = try? container.decode(String.self, forKey: .type)
                
                appId = try? container.decode(String.self, forKey: .appId)
                
                badge = try? container.decode([String: Any].self, forKey: .badge)
                
                allowSort = try? container.decode(Bool.self, forKey: .allowSort)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                description = try? container.decode(String.self, forKey: .description)
                
                tag = try? container.decode([String].self, forKey: .tag)
                
                cron = try? container.decode([String: Any].self, forKey: .cron)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
            }
            
        }
        
        /*
            Model: GetCollectionListingResponse
            Used By: Catalog
        */
        struct GetCollectionListingResponse: Codable {
            
            public var page: Page?
            
            public var filters: CollectionListingFilter?
            
            public var items: [GetCollectionDetailNest]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case filters = "filters"
                
                case items = "items"
                
            }

            public init(page: Page?, filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?) {
                
                self.page = page
                
                self.filters = filters
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try? container.decode(Page.self, forKey: .page)
                
                filters = try? container.decode(CollectionListingFilter.self, forKey: .filters)
                
                items = try? container.decode([GetCollectionDetailNest].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: CollectionDetailResponse
            Used By: Catalog
        */
        struct CollectionDetailResponse: Codable {
            
            public var badge: [String: Any]?
            
            public var query: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var schedule: [String: Any]?
            
            public var allowSort: Bool?
            
            public var isActive: Bool?
            
            public var visibleFacetsKeys: [String]?
            
            public var type: String?
            
            public var allowFacets: Bool?
            
            public var description: String?
            
            public var logo: Media?
            
            public var name: String?
            
            public var tag: [String]?
            
            public var cron: [String: Any]?
            
            public var appId: String?
            
            public var slug: String?
            
            public var banners: ImageUrls?
            

            public enum CodingKeys: String, CodingKey {
                
                case badge = "badge"
                
                case query = "query"
                
                case meta = "meta"
                
                case schedule = "_schedule"
                
                case allowSort = "allow_sort"
                
                case isActive = "is_active"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case type = "type"
                
                case allowFacets = "allow_facets"
                
                case description = "description"
                
                case logo = "logo"
                
                case name = "name"
                
                case tag = "tag"
                
                case cron = "cron"
                
                case appId = "app_id"
                
                case slug = "slug"
                
                case banners = "banners"
                
            }

            public init(badge: [String: Any]?, query: [String: Any]?, meta: [String: Any]?, schedule: [String: Any]?, allowSort: Bool?, isActive: Bool?, visibleFacetsKeys: [String]?, type: String?, allowFacets: Bool?, description: String?, logo: Media?, name: String?, tag: [String]?, cron: [String: Any]?, appId: String?, slug: String?, banners: ImageUrls?) {
                
                self.badge = badge
                
                self.query = query
                
                self.meta = meta
                
                self.schedule = schedule
                
                self.allowSort = allowSort
                
                self.isActive = isActive
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.type = type
                
                self.allowFacets = allowFacets
                
                self.description = description
                
                self.logo = logo
                
                self.name = name
                
                self.tag = tag
                
                self.cron = cron
                
                self.appId = appId
                
                self.slug = slug
                
                self.banners = banners
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                badge = try? container.decode([String: Any].self, forKey: .badge)
                
                query = try? container.decode([String: Any].self, forKey: .query)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                schedule = try? container.decode([String: Any].self, forKey: .schedule)
                
                allowSort = try? container.decode(Bool.self, forKey: .allowSort)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
                
                type = try? container.decode(String.self, forKey: .type)
                
                allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
                
                description = try? container.decode(String.self, forKey: .description)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                name = try? container.decode(String.self, forKey: .name)
                
                tag = try? container.decode([String].self, forKey: .tag)
                
                cron = try? container.decode([String: Any].self, forKey: .cron)
                
                appId = try? container.decode(String.self, forKey: .appId)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
            }
            
        }
        
        /*
            Model: GetFollowListingResponse
            Used By: Catalog
        */
        struct GetFollowListingResponse: Codable {
            
            public var page: Page
            
            public var items: [[String: Any]]
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(page: Page, items: [[String: Any]]) {
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try container.decode(Page.self, forKey: .page)
                
                items = try container.decode([[String: Any]].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: FollowPostResponse
            Used By: Catalog
        */
        struct FollowPostResponse: Codable {
            
            public var message: String
            
            public var id: String
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case id = "id"
                
            }

            public init(message: String, id: String) {
                
                self.message = message
                
                self.id = id
                
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
            Model: FollowerCountResponse
            Used By: Catalog
        */
        struct FollowerCountResponse: Codable {
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
            }

            public init(count: Int?) {
                
                self.count = count
                
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
            
            public var brands: [Int]?
            
            public var products: [Int]?
            
            public var collections: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case brands = "brands"
                
                case products = "products"
                
                case collections = "collections"
                
            }

            public init(brands: [Int]?, products: [Int]?, collections: [Int]?) {
                
                self.brands = brands
                
                self.products = products
                
                self.collections = collections
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                brands = try? container.decode([Int].self, forKey: .brands)
                
                products = try? container.decode([Int].self, forKey: .products)
                
                collections = try? container.decode([Int].self, forKey: .collections)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
                try? container.encodeIfPresent(products, forKey: .products)
                
                try? container.encodeIfPresent(collections, forKey: .collections)
                
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

            public init(data: FollowIdsData?) {
                
                self.data = data
                
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
            
            public var type: String?
            
            public var coordinates: [Double]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case coordinates = "coordinates"
                
            }

            public init(type: String?, coordinates: [Double]?) {
                
                self.type = type
                
                self.coordinates = coordinates
                
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
            
            public var latLong: LatLong?
            
            public var city: String?
            
            public var pincode: Int?
            
            public var uid: Int?
            
            public var storeEmail: String?
            
            public var storeCode: String?
            
            public var name: String?
            
            public var address: String?
            
            public var state: String?
            
            public var country: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case latLong = "lat_long"
                
                case city = "city"
                
                case pincode = "pincode"
                
                case uid = "uid"
                
                case storeEmail = "store_email"
                
                case storeCode = "store_code"
                
                case name = "name"
                
                case address = "address"
                
                case state = "state"
                
                case country = "country"
                
            }

            public init(latLong: LatLong?, city: String?, pincode: Int?, uid: Int?, storeEmail: String?, storeCode: String?, name: String?, address: String?, state: String?, country: String?) {
                
                self.latLong = latLong
                
                self.city = city
                
                self.pincode = pincode
                
                self.uid = uid
                
                self.storeEmail = storeEmail
                
                self.storeCode = storeCode
                
                self.name = name
                
                self.address = address
                
                self.state = state
                
                self.country = country
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                latLong = try? container.decode(LatLong.self, forKey: .latLong)
                
                city = try? container.decode(String.self, forKey: .city)
                
                pincode = try? container.decode(Int.self, forKey: .pincode)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                storeEmail = try? container.decode(String.self, forKey: .storeEmail)
                
                storeCode = try? container.decode(String.self, forKey: .storeCode)
                
                name = try? container.decode(String.self, forKey: .name)
                
                address = try? container.decode(String.self, forKey: .address)
                
                state = try? container.decode(String.self, forKey: .state)
                
                country = try? container.decode(String.self, forKey: .country)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
            }
            
        }
        
        /*
            Model: StoreListingResponse
            Used By: Catalog
        */
        struct StoreListingResponse: Codable {
            
            public var page: Page?
            
            public var items: [Store1]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(page: Page?, items: [Store1]?) {
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try? container.decode(Page.self, forKey: .page)
                
                items = try? container.decode([Store1].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        
        
        /*
            Model: RawBreakup
            Used By: Cart
        */
        struct RawBreakup: Codable {
            
            public var deliveryCharge: Double?
            
            public var subtotal: Double?
            
            public var fyndCash: Double?
            
            public var youSaved: Double?
            
            public var codCharge: Double?
            
            public var total: Double?
            
            public var coupon: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case deliveryCharge = "delivery_charge"
                
                case subtotal = "subtotal"
                
                case fyndCash = "fynd_cash"
                
                case youSaved = "you_saved"
                
                case codCharge = "cod_charge"
                
                case total = "total"
                
                case coupon = "coupon"
                
            }

            public init(deliveryCharge: Double?, subtotal: Double?, fyndCash: Double?, youSaved: Double?, codCharge: Double?, total: Double?, coupon: Double?) {
                
                self.deliveryCharge = deliveryCharge
                
                self.subtotal = subtotal
                
                self.fyndCash = fyndCash
                
                self.youSaved = youSaved
                
                self.codCharge = codCharge
                
                self.total = total
                
                self.coupon = coupon
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
                
                subtotal = try? container.decode(Double.self, forKey: .subtotal)
                
                fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
                
                youSaved = try? container.decode(Double.self, forKey: .youSaved)
                
                codCharge = try? container.decode(Double.self, forKey: .codCharge)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                coupon = try? container.decode(Double.self, forKey: .coupon)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                try? container.encodeIfPresent(subtotal, forKey: .subtotal)
                
                try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
                
                try? container.encodeIfPresent(youSaved, forKey: .youSaved)
                
                try? container.encodeIfPresent(codCharge, forKey: .codCharge)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
            }
            
        }
        
        /*
            Model: LoyaltyPoints
            Used By: Cart
        */
        struct LoyaltyPoints: Codable {
            
            public var description: String?
            
            public var applicable: Double?
            
            public var total: Double?
            
            public var isApplied: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case applicable = "applicable"
                
                case total = "total"
                
                case isApplied = "is_applied"
                
            }

            public init(description: String?, applicable: Double?, total: Double?, isApplied: Bool?) {
                
                self.description = description
                
                self.applicable = applicable
                
                self.total = total
                
                self.isApplied = isApplied
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                description = try? container.decode(String.self, forKey: .description)
                
                applicable = try? container.decode(Double.self, forKey: .applicable)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(applicable, forKey: .applicable)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
            }
            
        }
        
        /*
            Model: DisplayBreakup
            Used By: Cart
        */
        struct DisplayBreakup: Codable {
            
            public var currencyCode: String?
            
            public var key: String?
            
            public var currencySymbol: String?
            
            public var value: Double?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case key = "key"
                
                case currencySymbol = "currency_symbol"
                
                case value = "value"
                
                case display = "display"
                
            }

            public init(currencyCode: String?, key: String?, currencySymbol: String?, value: Double?, display: String?) {
                
                self.currencyCode = currencyCode
                
                self.key = key
                
                self.currencySymbol = currencySymbol
                
                self.value = value
                
                self.display = display
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                key = try? container.decode(String.self, forKey: .key)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                value = try? container.decode(Double.self, forKey: .value)
                
                display = try? container.decode(String.self, forKey: .display)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
            }
            
        }
        
        /*
            Model: CouponBreakup
            Used By: Cart
        */
        struct CouponBreakup: Codable {
            
            public var code: String?
            
            public var uid: Int?
            
            public var value: Double?
            
            public var message: String?
            
            public var isApplied: Bool?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case uid = "uid"
                
                case value = "value"
                
                case message = "message"
                
                case isApplied = "is_applied"
                
                case type = "type"
                
            }

            public init(code: String?, uid: Int?, value: Double?, message: String?, isApplied: Bool?, type: String?) {
                
                self.code = code
                
                self.uid = uid
                
                self.value = value
                
                self.message = message
                
                self.isApplied = isApplied
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                code = try? container.decode(String.self, forKey: .code)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                value = try? container.decode(Double.self, forKey: .value)
                
                message = try? container.decode(String.self, forKey: .message)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: CartBreakup
            Used By: Cart
        */
        struct CartBreakup: Codable {
            
            public var raw: RawBreakup?
            
            public var loyaltyPoints: LoyaltyPoints?
            
            public var display: [DisplayBreakup]?
            
            public var coupon: CouponBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case raw = "raw"
                
                case loyaltyPoints = "loyalty_points"
                
                case display = "display"
                
                case coupon = "coupon"
                
            }

            public init(raw: RawBreakup?, loyaltyPoints: LoyaltyPoints?, display: [DisplayBreakup]?, coupon: CouponBreakup?) {
                
                self.raw = raw
                
                self.loyaltyPoints = loyaltyPoints
                
                self.display = display
                
                self.coupon = coupon
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                raw = try? container.decode(RawBreakup.self, forKey: .raw)
                
                loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                display = try? container.decode([DisplayBreakup].self, forKey: .display)
                
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
            Model: PaymentFlow
            Used By: Cart
        */
        struct PaymentFlow: Codable {
            
            public var data: [String: Any]?
            
            public var apiLink: String?
            
            public var paymentFlow: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case apiLink = "api_link"
                
                case paymentFlow = "payment_flow"
                
            }

            public init(data: [String: Any]?, apiLink: String?, paymentFlow: String?) {
                
                self.data = data
                
                self.apiLink = apiLink
                
                self.paymentFlow = paymentFlow
                
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
            Model: PaymentFlows
            Used By: Cart
        */
        struct PaymentFlows: Codable {
            
            public var razorpay: PaymentFlow?
            
            public var upiRazorpay: PaymentFlow?
            
            public var simpl: PaymentFlow?
            
            public var juspay: PaymentFlow?
            
            public var fynd: PaymentFlow?
            

            public enum CodingKeys: String, CodingKey {
                
                case razorpay = "Razorpay"
                
                case upiRazorpay = "UPI_Razorpay"
                
                case simpl = "Simpl"
                
                case juspay = "Juspay"
                
                case fynd = "Fynd"
                
            }

            public init(razorpay: PaymentFlow?, upiRazorpay: PaymentFlow?, simpl: PaymentFlow?, juspay: PaymentFlow?, fynd: PaymentFlow?) {
                
                self.razorpay = razorpay
                
                self.upiRazorpay = upiRazorpay
                
                self.simpl = simpl
                
                self.juspay = juspay
                
                self.fynd = fynd
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
                
                upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
                
                simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
                
                juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
                
                fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                try? container.encodeIfPresent(fynd, forKey: .fynd)
                
            }
            
        }
        
        /*
            Model: PaymentOption
            Used By: Cart
        */
        struct PaymentOption: Codable {
            
            public var displayPriority: Int?
            
            public var name: String?
            
            public var paymentModeId: Int?
            
            public var list: [[String: Any]]?
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayPriority = "display_priority"
                
                case name = "name"
                
                case paymentModeId = "payment_mode_id"
                
                case list = "list"
                
                case displayName = "display_name"
                
            }

            public init(displayPriority: Int?, name: String?, paymentModeId: Int?, list: [[String: Any]]?, displayName: String?) {
                
                self.displayPriority = displayPriority
                
                self.name = name
                
                self.paymentModeId = paymentModeId
                
                self.list = list
                
                self.displayName = displayName
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
                
                name = try? container.decode(String.self, forKey: .name)
                
                paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
                
                list = try? container.decode([[String: Any]].self, forKey: .list)
                
                displayName = try? container.decode(String.self, forKey: .displayName)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
            }
            
        }
        
        /*
            Model: PaymentOptions
            Used By: Cart
        */
        struct PaymentOptions: Codable {
            
            public var paymentFlows: PaymentFlows?
            
            public var paymentOption: [PaymentOption]?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlows = "payment_flows"
                
                case paymentOption = "payment_option"
                
            }

            public init(paymentFlows: PaymentFlows?, paymentOption: [PaymentOption]?) {
                
                self.paymentFlows = paymentFlows
                
                self.paymentOption = paymentOption
                
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
            Model: PromiseTimestamp
            Used By: Cart
        */
        struct PromiseTimestamp: Codable {
            
            public var min: Int?
            
            public var max: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(min: Int?, max: Int?) {
                
                self.min = min
                
                self.max = max
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                min = try? container.decode(Int.self, forKey: .min)
                
                max = try? container.decode(Int.self, forKey: .max)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
            }
            
        }
        
        /*
            Model: PromiseFormatted
            Used By: Cart
        */
        struct PromiseFormatted: Codable {
            
            public var min: String?
            
            public var max: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(min: String?, max: String?) {
                
                self.min = min
                
                self.max = max
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                min = try? container.decode(String.self, forKey: .min)
                
                max = try? container.decode(String.self, forKey: .max)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
            }
            
        }
        
        /*
            Model: ShipmentPromise
            Used By: Cart
        */
        struct ShipmentPromise: Codable {
            
            public var timestamp: PromiseTimestamp?
            
            public var formatted: PromiseFormatted?
            

            public enum CodingKeys: String, CodingKey {
                
                case timestamp = "timestamp"
                
                case formatted = "formatted"
                
            }

            public init(timestamp: PromiseTimestamp?, formatted: PromiseFormatted?) {
                
                self.timestamp = timestamp
                
                self.formatted = formatted
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                timestamp = try? container.decode(PromiseTimestamp.self, forKey: .timestamp)
                
                formatted = try? container.decode(PromiseFormatted.self, forKey: .formatted)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                try? container.encodeIfPresent(formatted, forKey: .formatted)
                
            }
            
        }
        
        /*
            Model: ProductPrice
            Used By: Cart
        */
        struct ProductPrice: Codable {
            
            public var currencyCode: String?
            
            public var marked: Double?
            
            public var currencySymbol: String?
            
            public var addOn: Double?
            
            public var effective: Double?
            
            public var selling: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case addOn = "add_on"
                
                case effective = "effective"
                
                case selling = "selling"
                
            }

            public init(currencyCode: String?, marked: Double?, currencySymbol: String?, addOn: Double?, effective: Double?, selling: Double?) {
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.addOn = addOn
                
                self.effective = effective
                
                self.selling = selling
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                marked = try? container.decode(Double.self, forKey: .marked)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                addOn = try? container.decode(Double.self, forKey: .addOn)
                
                effective = try? container.decode(Double.self, forKey: .effective)
                
                selling = try? container.decode(Double.self, forKey: .selling)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(addOn, forKey: .addOn)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(selling, forKey: .selling)
                
            }
            
        }
        
        /*
            Model: ProductPriceInfo
            Used By: Cart
        */
        struct ProductPriceInfo: Codable {
            
            public var converted: ProductPrice?
            
            public var base: ProductPrice?
            

            public enum CodingKeys: String, CodingKey {
                
                case converted = "converted"
                
                case base = "base"
                
            }

            public init(converted: ProductPrice?, base: ProductPrice?) {
                
                self.converted = converted
                
                self.base = base
                
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
            Used By: Cart
        */
        struct ProductAvailability: Codable {
            
            public var outOfStock: Bool?
            
            public var sizes: [String]?
            
            public var otherStoreQuantity: Int?
            
            public var isValid: Bool?
            
            public var deliverable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case outOfStock = "out_of_stock"
                
                case sizes = "sizes"
                
                case otherStoreQuantity = "other_store_quantity"
                
                case isValid = "is_valid"
                
                case deliverable = "deliverable"
                
            }

            public init(outOfStock: Bool?, sizes: [String]?, otherStoreQuantity: Int?, isValid: Bool?, deliverable: Bool?) {
                
                self.outOfStock = outOfStock
                
                self.sizes = sizes
                
                self.otherStoreQuantity = otherStoreQuantity
                
                self.isValid = isValid
                
                self.deliverable = deliverable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
                
                sizes = try? container.decode([String].self, forKey: .sizes)
                
                otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                deliverable = try? container.decode(Bool.self, forKey: .deliverable)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(deliverable, forKey: .deliverable)
                
            }
            
        }
        
        /*
            Model: BaseInfo
            Used By: Cart
        */
        struct BaseInfo: Codable {
            
            public var name: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(name: String?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
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
            Model: CategoryInfo
            Used By: Cart
        */
        struct CategoryInfo: Codable {
            
            public var name: Int?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(name: Int?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
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
            Model: ActionQuery
            Used By: Cart
        */
        struct ActionQuery: Codable {
            
            public var productSlug: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case productSlug = "product_slug"
                
            }

            public init(productSlug: [String]?) {
                
                self.productSlug = productSlug
                
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
            Used By: Cart
        */
        struct Action: Codable {
            
            public var query: ActionQuery?
            
            public var url: String?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case query = "query"
                
                case url = "url"
                
                case type = "type"
                
            }

            public init(query: ActionQuery?, url: String?, type: String?) {
                
                self.query = query
                
                self.url = url
                
                self.type = type
                
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
            Used By: Cart
        */
        struct Image: Codable {
            
            public var secureUrl: String?
            
            public var url: String?
            
            public var aspectRatio: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case secureUrl = "secure_url"
                
                case url = "url"
                
                case aspectRatio = "aspect_ratio"
                
            }

            public init(secureUrl: String?, url: String?, aspectRatio: String?) {
                
                self.secureUrl = secureUrl
                
                self.url = url
                
                self.aspectRatio = aspectRatio
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                secureUrl = try? container.decode(String.self, forKey: .secureUrl)
                
                url = try? container.decode(String.self, forKey: .url)
                
                aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
                
            }
            
        }
        
        /*
            Model: Product
            Used By: Cart
        */
        struct Product: Codable {
            
            public var brand: BaseInfo?
            
            public var uid: Int?
            
            public var categories: [CategoryInfo]?
            
            public var name: String?
            
            public var action: Action?
            
            public var slug: String?
            
            public var images: [Image]?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case brand = "brand"
                
                case uid = "uid"
                
                case categories = "categories"
                
                case name = "name"
                
                case action = "action"
                
                case slug = "slug"
                
                case images = "images"
                
                case type = "type"
                
            }

            public init(brand: BaseInfo?, uid: Int?, categories: [CategoryInfo]?, name: String?, action: Action?, slug: String?, images: [Image]?, type: String?) {
                
                self.brand = brand
                
                self.uid = uid
                
                self.categories = categories
                
                self.name = name
                
                self.action = action
                
                self.slug = slug
                
                self.images = images
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                brand = try? container.decode(BaseInfo.self, forKey: .brand)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                categories = try? container.decode([CategoryInfo].self, forKey: .categories)
                
                name = try? container.decode(String.self, forKey: .name)
                
                action = try? container.decode(Action.self, forKey: .action)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                images = try? container.decode([Image].self, forKey: .images)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: ArticlePriceInfo
            Used By: Cart
        */
        struct ArticlePriceInfo: Codable {
            
            public var converted: Price?
            
            public var base: Price?
            

            public enum CodingKeys: String, CodingKey {
                
                case converted = "converted"
                
                case base = "base"
                
            }

            public init(converted: Price?, base: Price?) {
                
                self.converted = converted
                
                self.base = base
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                converted = try? container.decode(Price.self, forKey: .converted)
                
                base = try? container.decode(Price.self, forKey: .base)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(converted, forKey: .converted)
                
                try? container.encodeIfPresent(base, forKey: .base)
                
            }
            
        }
        
        /*
            Model: ProductArticle
            Used By: Cart
        */
        struct ProductArticle: Codable {
            
            public var uid: Int?
            
            public var store: String?
            
            public var size: String?
            
            public var price: ArticlePriceInfo?
            
            public var seller: BaseInfo?
            
            public var quantity: Int?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case store = "store"
                
                case size = "size"
                
                case price = "price"
                
                case seller = "seller"
                
                case quantity = "quantity"
                
                case type = "type"
                
            }

            public init(uid: Int?, store: String?, size: String?, price: ArticlePriceInfo?, seller: BaseInfo?, quantity: Int?, type: String?) {
                
                self.uid = uid
                
                self.store = store
                
                self.size = size
                
                self.price = price
                
                self.seller = seller
                
                self.quantity = quantity
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                store = try? container.decode(String.self, forKey: .store)
                
                size = try? container.decode(String.self, forKey: .size)
                
                price = try? container.decode(ArticlePriceInfo.self, forKey: .price)
                
                seller = try? container.decode(BaseInfo.self, forKey: .seller)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: CartProductInfo
            Used By: Cart
        */
        struct CartProductInfo: Codable {
            
            public var discount: String?
            
            public var couponMessage: String?
            
            public var bulkOffer: String?
            
            public var key: String?
            
            public var price: ProductPriceInfo?
            
            public var availability: ProductAvailability?
            
            public var product: Product?
            
            public var message: String?
            
            public var quantity: Int?
            
            public var article: ProductArticle?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case couponMessage = "coupon_message"
                
                case bulkOffer = "bulk_offer"
                
                case key = "key"
                
                case price = "price"
                
                case availability = "availability"
                
                case product = "product"
                
                case message = "message"
                
                case quantity = "quantity"
                
                case article = "article"
                
            }

            public init(discount: String?, couponMessage: String?, bulkOffer: String?, key: String?, price: ProductPriceInfo?, availability: ProductAvailability?, product: Product?, message: String?, quantity: Int?, article: ProductArticle?) {
                
                self.discount = discount
                
                self.couponMessage = couponMessage
                
                self.bulkOffer = bulkOffer
                
                self.key = key
                
                self.price = price
                
                self.availability = availability
                
                self.product = product
                
                self.message = message
                
                self.quantity = quantity
                
                self.article = article
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                couponMessage = try? container.decode(String.self, forKey: .couponMessage)
                
                bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
                
                key = try? container.decode(String.self, forKey: .key)
                
                price = try? container.decode(ProductPriceInfo.self, forKey: .price)
                
                availability = try? container.decode(ProductAvailability.self, forKey: .availability)
                
                product = try? container.decode(Product.self, forKey: .product)
                
                message = try? container.decode(String.self, forKey: .message)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                article = try? container.decode(ProductArticle.self, forKey: .article)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
                
                try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(availability, forKey: .availability)
                
                try? container.encodeIfPresent(product, forKey: .product)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(article, forKey: .article)
                
            }
            
        }
        
        /*
            Model: CartCurrency
            Used By: Cart
        */
        struct CartCurrency: Codable {
            
            public var symbol: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case symbol = "symbol"
                
                case code = "code"
                
            }

            public init(symbol: String?, code: String?) {
                
                self.symbol = symbol
                
                self.code = code
                
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
            Model: CartResponse
            Used By: Cart
        */
        struct CartResponse: Codable {
            
            public var lastModified: String?
            
            public var checkoutMode: String?
            
            public var breakupValues: CartBreakup?
            
            public var couponText: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var uid: String?
            
            public var gstin: String?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var deliveryChargeInfo: [String]?
            
            public var cartId: Int?
            
            public var isValid: Bool?
            
            public var items: [CartProductInfo]?
            
            public var message: String?
            
            public var restrictCheckout: Bool?
            
            public var currency: CartCurrency?
            

            public enum CodingKeys: String, CodingKey {
                
                case lastModified = "last_modified"
                
                case checkoutMode = "checkout_mode"
                
                case breakupValues = "breakup_values"
                
                case couponText = "coupon_text"
                
                case paymentOptions = "payment_options"
                
                case uid = "uid"
                
                case gstin = "gstin"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case isValid = "is_valid"
                
                case items = "items"
                
                case message = "message"
                
                case restrictCheckout = "restrict_checkout"
                
                case currency = "currency"
                
            }

            public init(lastModified: String?, checkoutMode: String?, breakupValues: CartBreakup?, couponText: String?, paymentOptions: PaymentOptions?, uid: String?, gstin: String?, comment: String?, deliveryPromise: ShipmentPromise?, deliveryChargeInfo: [String]?, cartId: Int?, isValid: Bool?, items: [CartProductInfo]?, message: String?, restrictCheckout: Bool?, currency: CartCurrency?) {
                
                self.lastModified = lastModified
                
                self.checkoutMode = checkoutMode
                
                self.breakupValues = breakupValues
                
                self.couponText = couponText
                
                self.paymentOptions = paymentOptions
                
                self.uid = uid
                
                self.gstin = gstin
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.isValid = isValid
                
                self.items = items
                
                self.message = message
                
                self.restrictCheckout = restrictCheckout
                
                self.currency = currency
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                message = try? container.decode(String.self, forKey: .message)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
            }
            
        }
        
        /*
            Model: AddProductCart
            Used By: Cart
        */
        struct AddProductCart: Codable {
            
            public var articleAssignment: [String: Any]?
            
            public var articleId: String?
            
            public var sellerId: Int?
            
            public var display: String?
            
            public var itemSize: String?
            
            public var storeId: Int?
            
            public var pos: Bool?
            
            public var itemId: Int?
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case articleAssignment = "article_assignment"
                
                case articleId = "article_id"
                
                case sellerId = "seller_id"
                
                case display = "display"
                
                case itemSize = "item_size"
                
                case storeId = "store_id"
                
                case pos = "pos"
                
                case itemId = "item_id"
                
                case quantity = "quantity"
                
            }

            public init(articleAssignment: [String: Any]?, articleId: String?, sellerId: Int?, display: String?, itemSize: String?, storeId: Int?, pos: Bool?, itemId: Int?, quantity: Int?) {
                
                self.articleAssignment = articleAssignment
                
                self.articleId = articleId
                
                self.sellerId = sellerId
                
                self.display = display
                
                self.itemSize = itemSize
                
                self.storeId = storeId
                
                self.pos = pos
                
                self.itemId = itemId
                
                self.quantity = quantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                sellerId = try? container.decode(Int.self, forKey: .sellerId)
                
                display = try? container.decode(String.self, forKey: .display)
                
                itemSize = try? container.decode(String.self, forKey: .itemSize)
                
                storeId = try? container.decode(Int.self, forKey: .storeId)
                
                pos = try? container.decode(Bool.self, forKey: .pos)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(sellerId, forKey: .sellerId)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                try? container.encodeIfPresent(storeId, forKey: .storeId)
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
            }
            
        }
        
        /*
            Model: AddCartRequest
            Used By: Cart
        */
        struct AddCartRequest: Codable {
            
            public var items: [AddProductCart]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [AddProductCart]?) {
                
                self.items = items
                
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
            Used By: Cart
        */
        struct AddCartResponse: Codable {
            
            public var message: String?
            
            public var partial: Bool?
            
            public var success: Bool?
            
            public var cart: CartResponse?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case partial = "partial"
                
                case success = "success"
                
                case cart = "cart"
                
            }

            public init(message: String?, partial: Bool?, success: Bool?, cart: CartResponse?) {
                
                self.message = message
                
                self.partial = partial
                
                self.success = success
                
                self.cart = cart
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                message = try? container.decode(String.self, forKey: .message)
                
                partial = try? container.decode(Bool.self, forKey: .partial)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                cart = try? container.decode(CartResponse.self, forKey: .cart)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(partial, forKey: .partial)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
            }
            
        }
        
        /*
            Model: UpdateProductCart
            Used By: Cart
        */
        struct UpdateProductCart: Codable {
            
            public var itemIndex: Int?
            
            public var articleId: String?
            
            public var itemSize: Int?
            
            public var itemId: Int?
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemIndex = "item_index"
                
                case articleId = "article_id"
                
                case itemSize = "item_size"
                
                case itemId = "item_id"
                
                case quantity = "quantity"
                
            }

            public init(itemIndex: Int?, articleId: String?, itemSize: Int?, itemId: Int?, quantity: Int?) {
                
                self.itemIndex = itemIndex
                
                self.articleId = articleId
                
                self.itemSize = itemSize
                
                self.itemId = itemId
                
                self.quantity = quantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                itemSize = try? container.decode(Int.self, forKey: .itemSize)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
            }
            
        }
        
        /*
            Model: UpdateCartRequest
            Used By: Cart
        */
        struct UpdateCartRequest: Codable {
            
            public var items: [UpdateProductCart]?
            
            public var operation: String
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case operation = "operation"
                
            }

            public init(items: [UpdateProductCart]?, operation: String) {
                
                self.items = items
                
                self.operation = operation
                
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
            Used By: Cart
        */
        struct UpdateCartResponse: Codable {
            
            public var message: String?
            
            public var success: Bool?
            
            public var cart: CartResponse?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case cart = "cart"
                
            }

            public init(message: String?, success: Bool?, cart: CartResponse?) {
                
                self.message = message
                
                self.success = success
                
                self.cart = cart
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                message = try? container.decode(String.self, forKey: .message)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
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
            Used By: Cart
        */
        struct CartItemCountResponse: Codable {
            
            public var userCartItemsCount: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case userCartItemsCount = "user_cart_items_count"
                
            }

            public init(userCartItemsCount: Int?) {
                
                self.userCartItemsCount = userCartItemsCount
                
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
            Used By: Cart
        */
        struct PageCoupon: Codable {
            
            public var hasPrevious: Bool?
            
            public var current: Int?
            
            public var hasNext: Bool?
            
            public var total: Int?
            
            public var totalItemCount: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case hasPrevious = "has_previous"
                
                case current = "current"
                
                case hasNext = "has_next"
                
                case total = "total"
                
                case totalItemCount = "total_item_count"
                
            }

            public init(hasPrevious: Bool?, current: Int?, hasNext: Bool?, total: Int?, totalItemCount: Int?) {
                
                self.hasPrevious = hasPrevious
                
                self.current = current
                
                self.hasNext = hasNext
                
                self.total = total
                
                self.totalItemCount = totalItemCount
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
                
                current = try? container.decode(Int.self, forKey: .current)
                
                hasNext = try? container.decode(Bool.self, forKey: .hasNext)
                
                total = try? container.decode(Int.self, forKey: .total)
                
                totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
                
            }
            
        }
        
        /*
            Model: Coupon
            Used By: Cart
        */
        struct Coupon: Codable {
            
            public var minimumCartValue: Double?
            
            public var subTitle: String?
            
            public var maxDiscountValue: Double?
            
            public var uid: Int?
            
            public var couponValue: Double?
            
            public var couponCode: String?
            
            public var expiresOn: String?
            
            public var isApplicable: Bool?
            
            public var message: String?
            
            public var isApplied: Bool?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case minimumCartValue = "minimum_cart_value"
                
                case subTitle = "sub_title"
                
                case maxDiscountValue = "max_discount_value"
                
                case uid = "uid"
                
                case couponValue = "coupon_value"
                
                case couponCode = "coupon_code"
                
                case expiresOn = "expires_on"
                
                case isApplicable = "is_applicable"
                
                case message = "message"
                
                case isApplied = "is_applied"
                
                case title = "title"
                
            }

            public init(minimumCartValue: Double?, subTitle: String?, maxDiscountValue: Double?, uid: Int?, couponValue: Double?, couponCode: String?, expiresOn: String?, isApplicable: Bool?, message: String?, isApplied: Bool?, title: String?) {
                
                self.minimumCartValue = minimumCartValue
                
                self.subTitle = subTitle
                
                self.maxDiscountValue = maxDiscountValue
                
                self.uid = uid
                
                self.couponValue = couponValue
                
                self.couponCode = couponCode
                
                self.expiresOn = expiresOn
                
                self.isApplicable = isApplicable
                
                self.message = message
                
                self.isApplied = isApplied
                
                self.title = title
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
                
                subTitle = try? container.decode(String.self, forKey: .subTitle)
                
                maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                couponValue = try? container.decode(Double.self, forKey: .couponValue)
                
                couponCode = try? container.decode(String.self, forKey: .couponCode)
                
                expiresOn = try? container.decode(String.self, forKey: .expiresOn)
                
                isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
                
                message = try? container.decode(String.self, forKey: .message)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
                title = try? container.decode(String.self, forKey: .title)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
                
                try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
            }
            
        }
        
        /*
            Model: GetCouponResponse
            Used By: Cart
        */
        struct GetCouponResponse: Codable {
            
            public var page: PageCoupon?
            
            public var availableCouponList: [Coupon]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case availableCouponList = "available_coupon_list"
                
            }

            public init(page: PageCoupon?, availableCouponList: [Coupon]?) {
                
                self.page = page
                
                self.availableCouponList = availableCouponList
                
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
            Used By: Cart
        */
        struct ApplyCouponRequest: Codable {
            
            public var couponCode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case couponCode = "coupon_code"
                
            }

            public init(couponCode: String) {
                
                self.couponCode = couponCode
                
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
            Model: OfferSeller
            Used By: Cart
        */
        struct OfferSeller: Codable {
            
            public var name: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(name: String?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
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
            Model: OfferPrice
            Used By: Cart
        */
        struct OfferPrice: Codable {
            
            public var bulkEffective: Double?
            
            public var currencyCode: String?
            
            public var marked: Int?
            
            public var currencySymbol: String?
            
            public var effective: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case bulkEffective = "bulk_effective"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case effective = "effective"
                
            }

            public init(bulkEffective: Double?, currencyCode: String?, marked: Int?, currencySymbol: String?, effective: Int?) {
                
                self.bulkEffective = bulkEffective
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.effective = effective
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                marked = try? container.decode(Int.self, forKey: .marked)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                effective = try? container.decode(Int.self, forKey: .effective)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
            }
            
        }
        
        /*
            Model: OfferItem
            Used By: Cart
        */
        struct OfferItem: Codable {
            
            public var autoApplied: Bool?
            
            public var price: OfferPrice?
            
            public var best: Bool?
            
            public var total: Double?
            
            public var margin: Int?
            
            public var quantity: Int?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case autoApplied = "auto_applied"
                
                case price = "price"
                
                case best = "best"
                
                case total = "total"
                
                case margin = "margin"
                
                case quantity = "quantity"
                
                case type = "type"
                
            }

            public init(autoApplied: Bool?, price: OfferPrice?, best: Bool?, total: Double?, margin: Int?, quantity: Int?, type: String?) {
                
                self.autoApplied = autoApplied
                
                self.price = price
                
                self.best = best
                
                self.total = total
                
                self.margin = margin
                
                self.quantity = quantity
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
                
                price = try? container.decode(OfferPrice.self, forKey: .price)
                
                best = try? container.decode(Bool.self, forKey: .best)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                margin = try? container.decode(Int.self, forKey: .margin)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(best, forKey: .best)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: BulkPriceOffer
            Used By: Cart
        */
        struct BulkPriceOffer: Codable {
            
            public var seller: OfferSeller?
            
            public var offers: [OfferItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case seller = "seller"
                
                case offers = "offers"
                
            }

            public init(seller: OfferSeller?, offers: [OfferItem]?) {
                
                self.seller = seller
                
                self.offers = offers
                
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
            Used By: Cart
        */
        struct BulkPriceResponse: Codable {
            
            public var data: [BulkPriceOffer]?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [BulkPriceOffer]?) {
                
                self.data = data
                
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
            Used By: Cart
        */
        struct GeoLocation: Codable {
            
            public var latitude: Double?
            
            public var longitude: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case latitude = "latitude"
                
                case longitude = "longitude"
                
            }

            public init(latitude: Double?, longitude: Double?) {
                
                self.latitude = latitude
                
                self.longitude = longitude
                
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
            Model: Address
            Used By: Cart
        */
        struct Address: Codable {
            
            public var meta: [String: Any]?
            
            public var email: String?
            
            public var city: String?
            
            public var isActive: Bool?
            
            public var addressType: String?
            
            public var addressId: Int?
            
            public var isDefaultAddress: Bool?
            
            public var address: String?
            
            public var area: String?
            
            public var userId: String?
            
            public var geoLocation: GeoLocation?
            
            public var areaCode: String?
            
            public var name: String?
            
            public var areaCodeSlug: String?
            
            public var country: String?
            
            public var landmark: String?
            
            public var phone: Int?
            
            public var state: String?
            
            public var countryCode: String?
            
            public var checkoutMode: String?
            
            public var tags: [[String: Any]]?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case email = "email"
                
                case city = "city"
                
                case isActive = "is_active"
                
                case addressType = "address_type"
                
                case addressId = "address_id"
                
                case isDefaultAddress = "is_default_address"
                
                case address = "address"
                
                case area = "area"
                
                case userId = "user_id"
                
                case geoLocation = "geo_location"
                
                case areaCode = "area_code"
                
                case name = "name"
                
                case areaCodeSlug = "area_code_slug"
                
                case country = "country"
                
                case landmark = "landmark"
                
                case phone = "phone"
                
                case state = "state"
                
                case countryCode = "country_code"
                
                case checkoutMode = "checkout_mode"
                
                case tags = "tags"
                
                case uid = "uid"
                
            }

            public init(meta: [String: Any]?, email: String?, city: String?, isActive: Bool?, addressType: String?, addressId: Int?, isDefaultAddress: Bool?, address: String?, area: String?, userId: String?, geoLocation: GeoLocation?, areaCode: String?, name: String?, areaCodeSlug: String?, country: String?, landmark: String?, phone: Int?, state: String?, countryCode: String?, checkoutMode: String?, tags: [[String: Any]]?, uid: Int?) {
                
                self.meta = meta
                
                self.email = email
                
                self.city = city
                
                self.isActive = isActive
                
                self.addressType = addressType
                
                self.addressId = addressId
                
                self.isDefaultAddress = isDefaultAddress
                
                self.address = address
                
                self.area = area
                
                self.userId = userId
                
                self.geoLocation = geoLocation
                
                self.areaCode = areaCode
                
                self.name = name
                
                self.areaCodeSlug = areaCodeSlug
                
                self.country = country
                
                self.landmark = landmark
                
                self.phone = phone
                
                self.state = state
                
                self.countryCode = countryCode
                
                self.checkoutMode = checkoutMode
                
                self.tags = tags
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                email = try? container.decode(String.self, forKey: .email)
                
                city = try? container.decode(String.self, forKey: .city)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                address = try? container.decode(String.self, forKey: .address)
                
                area = try? container.decode(String.self, forKey: .area)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
                
                areaCode = try? container.decode(String.self, forKey: .areaCode)
                
                name = try? container.decode(String.self, forKey: .name)
                
                areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
                
                country = try? container.decode(String.self, forKey: .country)
                
                landmark = try? container.decode(String.self, forKey: .landmark)
                
                phone = try? container.decode(Int.self, forKey: .phone)
                
                state = try? container.decode(String.self, forKey: .state)
                
                countryCode = try? container.decode(String.self, forKey: .countryCode)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: GetAddressesResponse
            Used By: Cart
        */
        struct GetAddressesResponse: Codable {
            
            public var address: [Address]?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
            }

            public init(address: [Address]?) {
                
                self.address = address
                
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
            Model: UpdateAddressRequest
            Used By: Cart
        */
        struct UpdateAddressRequest: Codable {
            
            public var meta: [String: Any]?
            
            public var email: String?
            
            public var city: String?
            
            public var isActive: Bool?
            
            public var addressType: String?
            
            public var addressId: Int?
            
            public var isDefaultAddress: Bool?
            
            public var address: String?
            
            public var area: String?
            
            public var userId: String?
            
            public var geoLocation: GeoLocation?
            
            public var areaCode: String?
            
            public var name: String?
            
            public var areaCodeSlug: String?
            
            public var country: String?
            
            public var landmark: String?
            
            public var phone: Int?
            
            public var state: String?
            
            public var countryCode: String?
            
            public var checkoutMode: String?
            
            public var tags: [[String: Any]]?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case email = "email"
                
                case city = "city"
                
                case isActive = "is_active"
                
                case addressType = "address_type"
                
                case addressId = "address_id"
                
                case isDefaultAddress = "is_default_address"
                
                case address = "address"
                
                case area = "area"
                
                case userId = "user_id"
                
                case geoLocation = "geo_location"
                
                case areaCode = "area_code"
                
                case name = "name"
                
                case areaCodeSlug = "area_code_slug"
                
                case country = "country"
                
                case landmark = "landmark"
                
                case phone = "phone"
                
                case state = "state"
                
                case countryCode = "country_code"
                
                case checkoutMode = "checkout_mode"
                
                case tags = "tags"
                
                case uid = "uid"
                
            }

            public init(meta: [String: Any]?, email: String?, city: String?, isActive: Bool?, addressType: String?, addressId: Int?, isDefaultAddress: Bool?, address: String?, area: String?, userId: String?, geoLocation: GeoLocation?, areaCode: String?, name: String?, areaCodeSlug: String?, country: String?, landmark: String?, phone: Int?, state: String?, countryCode: String?, checkoutMode: String?, tags: [[String: Any]]?, uid: Int?) {
                
                self.meta = meta
                
                self.email = email
                
                self.city = city
                
                self.isActive = isActive
                
                self.addressType = addressType
                
                self.addressId = addressId
                
                self.isDefaultAddress = isDefaultAddress
                
                self.address = address
                
                self.area = area
                
                self.userId = userId
                
                self.geoLocation = geoLocation
                
                self.areaCode = areaCode
                
                self.name = name
                
                self.areaCodeSlug = areaCodeSlug
                
                self.country = country
                
                self.landmark = landmark
                
                self.phone = phone
                
                self.state = state
                
                self.countryCode = countryCode
                
                self.checkoutMode = checkoutMode
                
                self.tags = tags
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                email = try? container.decode(String.self, forKey: .email)
                
                city = try? container.decode(String.self, forKey: .city)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                address = try? container.decode(String.self, forKey: .address)
                
                area = try? container.decode(String.self, forKey: .area)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
                
                areaCode = try? container.decode(String.self, forKey: .areaCode)
                
                name = try? container.decode(String.self, forKey: .name)
                
                areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
                
                country = try? container.decode(String.self, forKey: .country)
                
                landmark = try? container.decode(String.self, forKey: .landmark)
                
                phone = try? container.decode(Int.self, forKey: .phone)
                
                state = try? container.decode(String.self, forKey: .state)
                
                countryCode = try? container.decode(String.self, forKey: .countryCode)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: SaveAddressResponse
            Used By: Cart
        */
        struct SaveAddressResponse: Codable {
            
            public var isDefaultAddress: Bool?
            
            public var success: String?
            
            public var addressId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case isDefaultAddress = "is_default_address"
                
                case success = "success"
                
                case addressId = "address_id"
                
            }

            public init(isDefaultAddress: Bool?, success: String?, addressId: Int?) {
                
                self.isDefaultAddress = isDefaultAddress
                
                self.success = success
                
                self.addressId = addressId
                
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
            Model: AddressResponse
            Used By: Cart
        */
        struct AddressResponse: Codable {
            
            public var meta: [String: Any]?
            
            public var email: String?
            
            public var city: String?
            
            public var isActive: Bool?
            
            public var addressType: String?
            
            public var addressId: Int?
            
            public var isDefaultAddress: Bool?
            
            public var address: String?
            
            public var area: String?
            
            public var userId: String?
            
            public var geoLocation: GeoLocation?
            
            public var areaCode: String?
            
            public var name: String?
            
            public var areaCodeSlug: String?
            
            public var country: String?
            
            public var landmark: String?
            
            public var phone: Int?
            
            public var state: String?
            
            public var countryCode: String?
            
            public var checkoutMode: String?
            
            public var tags: [[String: Any]]?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case email = "email"
                
                case city = "city"
                
                case isActive = "is_active"
                
                case addressType = "address_type"
                
                case addressId = "address_id"
                
                case isDefaultAddress = "is_default_address"
                
                case address = "address"
                
                case area = "area"
                
                case userId = "user_id"
                
                case geoLocation = "geo_location"
                
                case areaCode = "area_code"
                
                case name = "name"
                
                case areaCodeSlug = "area_code_slug"
                
                case country = "country"
                
                case landmark = "landmark"
                
                case phone = "phone"
                
                case state = "state"
                
                case countryCode = "country_code"
                
                case checkoutMode = "checkout_mode"
                
                case tags = "tags"
                
                case uid = "uid"
                
            }

            public init(meta: [String: Any]?, email: String?, city: String?, isActive: Bool?, addressType: String?, addressId: Int?, isDefaultAddress: Bool?, address: String?, area: String?, userId: String?, geoLocation: GeoLocation?, areaCode: String?, name: String?, areaCodeSlug: String?, country: String?, landmark: String?, phone: Int?, state: String?, countryCode: String?, checkoutMode: String?, tags: [[String: Any]]?, uid: Int?) {
                
                self.meta = meta
                
                self.email = email
                
                self.city = city
                
                self.isActive = isActive
                
                self.addressType = addressType
                
                self.addressId = addressId
                
                self.isDefaultAddress = isDefaultAddress
                
                self.address = address
                
                self.area = area
                
                self.userId = userId
                
                self.geoLocation = geoLocation
                
                self.areaCode = areaCode
                
                self.name = name
                
                self.areaCodeSlug = areaCodeSlug
                
                self.country = country
                
                self.landmark = landmark
                
                self.phone = phone
                
                self.state = state
                
                self.countryCode = countryCode
                
                self.checkoutMode = checkoutMode
                
                self.tags = tags
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                email = try? container.decode(String.self, forKey: .email)
                
                city = try? container.decode(String.self, forKey: .city)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                address = try? container.decode(String.self, forKey: .address)
                
                area = try? container.decode(String.self, forKey: .area)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
                
                areaCode = try? container.decode(String.self, forKey: .areaCode)
                
                name = try? container.decode(String.self, forKey: .name)
                
                areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
                
                country = try? container.decode(String.self, forKey: .country)
                
                landmark = try? container.decode(String.self, forKey: .landmark)
                
                phone = try? container.decode(Int.self, forKey: .phone)
                
                state = try? container.decode(String.self, forKey: .state)
                
                countryCode = try? container.decode(String.self, forKey: .countryCode)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: UpdateAddressResponse
            Used By: Cart
        */
        struct UpdateAddressResponse: Codable {
            
            public var isDefaultAddress: Bool?
            
            public var isUpdated: Bool?
            
            public var success: Bool?
            
            public var addressId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case isDefaultAddress = "is_default_address"
                
                case isUpdated = "is_updated"
                
                case success = "success"
                
                case addressId = "address_id"
                
            }

            public init(isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?, addressId: Int?) {
                
                self.isDefaultAddress = isDefaultAddress
                
                self.isUpdated = isUpdated
                
                self.success = success
                
                self.addressId = addressId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
            }
            
        }
        
        /*
            Model: DeleteAddressResponse
            Used By: Cart
        */
        struct DeleteAddressResponse: Codable {
            
            public var addressId: Int?
            
            public var isDeleted: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case addressId = "address_id"
                
                case isDeleted = "is_deleted"
                
            }

            public init(addressId: Int?, isDeleted: Bool?) {
                
                self.addressId = addressId
                
                self.isDeleted = isDeleted
                
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
            Used By: Cart
        */
        struct SelectCartAddressRequest: Codable {
            
            public var billingAddressId: Int?
            
            public var addressId: String?
            
            public var uid: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case billingAddressId = "billing_address_id"
                
                case addressId = "address_id"
                
                case uid = "uid"
                
            }

            public init(billingAddressId: Int?, addressId: String?, uid: String?) {
                
                self.billingAddressId = billingAddressId
                
                self.addressId = addressId
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
                
                addressId = try? container.decode(String.self, forKey: .addressId)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: UpdateCartPaymentRequest
            Used By: Cart
        */
        struct UpdateCartPaymentRequest: Codable {
            
            public var uid: Int?
            
            public var merchantCode: String?
            
            public var aggregatorName: String?
            
            public var addressId: Int?
            
            public var paymentIdentifier: String?
            
            public var paymentMode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case merchantCode = "merchant_code"
                
                case aggregatorName = "aggregator_name"
                
                case addressId = "address_id"
                
                case paymentIdentifier = "payment_identifier"
                
                case paymentMode = "payment_mode"
                
            }

            public init(uid: Int?, merchantCode: String?, aggregatorName: String?, addressId: Int?, paymentIdentifier: String?, paymentMode: String?) {
                
                self.uid = uid
                
                self.merchantCode = merchantCode
                
                self.aggregatorName = aggregatorName
                
                self.addressId = addressId
                
                self.paymentIdentifier = paymentIdentifier
                
                self.paymentMode = paymentMode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
                
                paymentMode = try? container.decode(String.self, forKey: .paymentMode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
            }
            
        }
        
        /*
            Model: ShipmentResponse
            Used By: Cart
        */
        struct ShipmentResponse: Codable {
            
            public var fulfillmentType: String?
            
            public var dpOptions: [String: Any]?
            
            public var fulfillmentId: Int?
            
            public var dpId: Int?
            
            public var shipmentType: String?
            
            public var promise: String?
            
            public var items: [CartProductInfo]?
            
            public var shipments: Int?
            
            public var boxType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case fulfillmentType = "fulfillment_type"
                
                case dpOptions = "dp_options"
                
                case fulfillmentId = "fulfillment_id"
                
                case dpId = "dp_id"
                
                case shipmentType = "shipment_type"
                
                case promise = "promise"
                
                case items = "items"
                
                case shipments = "shipments"
                
                case boxType = "box_type"
                
            }

            public init(fulfillmentType: String?, dpOptions: [String: Any]?, fulfillmentId: Int?, dpId: Int?, shipmentType: String?, promise: String?, items: [CartProductInfo]?, shipments: Int?, boxType: String?) {
                
                self.fulfillmentType = fulfillmentType
                
                self.dpOptions = dpOptions
                
                self.fulfillmentId = fulfillmentId
                
                self.dpId = dpId
                
                self.shipmentType = shipmentType
                
                self.promise = promise
                
                self.items = items
                
                self.shipments = shipments
                
                self.boxType = boxType
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
                
                dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
                
                fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
                
                dpId = try? container.decode(Int.self, forKey: .dpId)
                
                shipmentType = try? container.decode(String.self, forKey: .shipmentType)
                
                promise = try? container.decode(String.self, forKey: .promise)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                shipments = try? container.decode(Int.self, forKey: .shipments)
                
                boxType = try? container.decode(String.self, forKey: .boxType)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
                
                try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                try? container.encodeIfPresent(dpId, forKey: .dpId)
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(boxType, forKey: .boxType)
                
            }
            
        }
        
        /*
            Model: CartShipmentsResponse
            Used By: Cart
        */
        struct CartShipmentsResponse: Codable {
            
            public var lastModified: String?
            
            public var checkoutMode: String?
            
            public var breakupValues: CartBreakup?
            
            public var couponText: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var uid: String?
            
            public var gstin: String?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var deliveryChargeInfo: [String]?
            
            public var cartId: Int?
            
            public var isValid: Bool?
            
            public var message: String?
            
            public var restrictCheckout: Bool?
            
            public var shipments: [ShipmentResponse]?
            
            public var currency: CartCurrency?
            

            public enum CodingKeys: String, CodingKey {
                
                case lastModified = "last_modified"
                
                case checkoutMode = "checkout_mode"
                
                case breakupValues = "breakup_values"
                
                case couponText = "coupon_text"
                
                case paymentOptions = "payment_options"
                
                case uid = "uid"
                
                case gstin = "gstin"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case isValid = "is_valid"
                
                case message = "message"
                
                case restrictCheckout = "restrict_checkout"
                
                case shipments = "shipments"
                
                case currency = "currency"
                
            }

            public init(lastModified: String?, checkoutMode: String?, breakupValues: CartBreakup?, couponText: String?, paymentOptions: PaymentOptions?, uid: String?, gstin: String?, comment: String?, deliveryPromise: ShipmentPromise?, deliveryChargeInfo: [String]?, cartId: Int?, isValid: Bool?, message: String?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, currency: CartCurrency?) {
                
                self.lastModified = lastModified
                
                self.checkoutMode = checkoutMode
                
                self.breakupValues = breakupValues
                
                self.couponText = couponText
                
                self.paymentOptions = paymentOptions
                
                self.uid = uid
                
                self.gstin = gstin
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.isValid = isValid
                
                self.message = message
                
                self.restrictCheckout = restrictCheckout
                
                self.shipments = shipments
                
                self.currency = currency
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                message = try? container.decode(String.self, forKey: .message)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
            }
            
        }
        
        /*
            Model: CartCheckoutRequest
            Used By: Cart
        */
        struct CartCheckoutRequest: Codable {
            
            public var paymentAutoConfirm: Bool?
            
            public var orderingStore: Int?
            
            public var merchantCode: String?
            
            public var billingAddressId: Int?
            
            public var paymentParams: [String: Any]?
            
            public var paymentIdentifier: String?
            
            public var addressId: Int?
            
            public var billingAddress: [String: Any]?
            
            public var aggregator: String?
            
            public var meta: [String: Any]?
            
            public var callbackUrl: String?
            
            public var staff: [String: Any]?
            
            public var extraMeta: [String: Any]?
            
            public var paymentMode: String
            
            public var fyndstoreEmpId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case orderingStore = "ordering_store"
                
                case merchantCode = "merchant_code"
                
                case billingAddressId = "billing_address_id"
                
                case paymentParams = "payment_params"
                
                case paymentIdentifier = "payment_identifier"
                
                case addressId = "address_id"
                
                case billingAddress = "billing_address"
                
                case aggregator = "aggregator"
                
                case meta = "meta"
                
                case callbackUrl = "callback_url"
                
                case staff = "staff"
                
                case extraMeta = "extra_meta"
                
                case paymentMode = "payment_mode"
                
                case fyndstoreEmpId = "fyndstore_emp_id"
                
            }

            public init(paymentAutoConfirm: Bool?, orderingStore: Int?, merchantCode: String?, billingAddressId: Int?, paymentParams: [String: Any]?, paymentIdentifier: String?, addressId: Int?, billingAddress: [String: Any]?, aggregator: String?, meta: [String: Any]?, callbackUrl: String?, staff: [String: Any]?, extraMeta: [String: Any]?, paymentMode: String, fyndstoreEmpId: String?) {
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.orderingStore = orderingStore
                
                self.merchantCode = merchantCode
                
                self.billingAddressId = billingAddressId
                
                self.paymentParams = paymentParams
                
                self.paymentIdentifier = paymentIdentifier
                
                self.addressId = addressId
                
                self.billingAddress = billingAddress
                
                self.aggregator = aggregator
                
                self.meta = meta
                
                self.callbackUrl = callbackUrl
                
                self.staff = staff
                
                self.extraMeta = extraMeta
                
                self.paymentMode = paymentMode
                
                self.fyndstoreEmpId = fyndstoreEmpId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
                
                paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
                
                paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
                
                aggregator = try? container.decode(String.self, forKey: .aggregator)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
                
                staff = try? container.decode([String: Any].self, forKey: .staff)
                
                extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
                
            }
            
        }
        
        /*
            Model: CheckCart
            Used By: Cart
        */
        struct CheckCart: Codable {
            
            public var paymentOptions: PaymentOptions?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var userType: String?
            
            public var deliveryChargeOrderValue: Int?
            
            public var codMessage: String?
            
            public var deliveryCharges: Int?
            
            public var orderId: String?
            
            public var message: String?
            
            public var codCharges: Int?
            
            public var isValid: Bool?
            
            public var currency: CartCurrency?
            
            public var storeCode: String?
            
            public var breakupValues: CartBreakup?
            
            public var gstin: String?
            
            public var storeEmps: [[String: Any]]?
            
            public var deliveryChargeInfo: [String]?
            
            public var success: Bool?
            
            public var items: [CartProductInfo]?
            
            public var restrictCheckout: Bool?
            
            public var errorMessage: String?
            
            public var lastModified: String?
            
            public var checkoutMode: String?
            
            public var couponText: String?
            
            public var uid: String?
            
            public var comment: String?
            
            public var cartId: Int?
            
            public var codAvailable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOptions = "payment_options"
                
                case deliveryPromise = "delivery_promise"
                
                case userType = "user_type"
                
                case deliveryChargeOrderValue = "delivery_charge_order_value"
                
                case codMessage = "cod_message"
                
                case deliveryCharges = "delivery_charges"
                
                case orderId = "order_id"
                
                case message = "message"
                
                case codCharges = "cod_charges"
                
                case isValid = "is_valid"
                
                case currency = "currency"
                
                case storeCode = "store_code"
                
                case breakupValues = "breakup_values"
                
                case gstin = "gstin"
                
                case storeEmps = "store_emps"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case success = "success"
                
                case items = "items"
                
                case restrictCheckout = "restrict_checkout"
                
                case errorMessage = "error_message"
                
                case lastModified = "last_modified"
                
                case checkoutMode = "checkout_mode"
                
                case couponText = "coupon_text"
                
                case uid = "uid"
                
                case comment = "comment"
                
                case cartId = "cart_id"
                
                case codAvailable = "cod_available"
                
            }

            public init(paymentOptions: PaymentOptions?, deliveryPromise: ShipmentPromise?, userType: String?, deliveryChargeOrderValue: Int?, codMessage: String?, deliveryCharges: Int?, orderId: String?, message: String?, codCharges: Int?, isValid: Bool?, currency: CartCurrency?, storeCode: String?, breakupValues: CartBreakup?, gstin: String?, storeEmps: [[String: Any]]?, deliveryChargeInfo: [String]?, success: Bool?, items: [CartProductInfo]?, restrictCheckout: Bool?, errorMessage: String?, lastModified: String?, checkoutMode: String?, couponText: String?, uid: String?, comment: String?, cartId: Int?, codAvailable: Bool?) {
                
                self.paymentOptions = paymentOptions
                
                self.deliveryPromise = deliveryPromise
                
                self.userType = userType
                
                self.deliveryChargeOrderValue = deliveryChargeOrderValue
                
                self.codMessage = codMessage
                
                self.deliveryCharges = deliveryCharges
                
                self.orderId = orderId
                
                self.message = message
                
                self.codCharges = codCharges
                
                self.isValid = isValid
                
                self.currency = currency
                
                self.storeCode = storeCode
                
                self.breakupValues = breakupValues
                
                self.gstin = gstin
                
                self.storeEmps = storeEmps
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.success = success
                
                self.items = items
                
                self.restrictCheckout = restrictCheckout
                
                self.errorMessage = errorMessage
                
                self.lastModified = lastModified
                
                self.checkoutMode = checkoutMode
                
                self.couponText = couponText
                
                self.uid = uid
                
                self.comment = comment
                
                self.cartId = cartId
                
                self.codAvailable = codAvailable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                userType = try? container.decode(String.self, forKey: .userType)
                
                deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
                
                codMessage = try? container.decode(String.self, forKey: .codMessage)
                
                deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
                
                orderId = try? container.decode(String.self, forKey: .orderId)
                
                message = try? container.decode(String.self, forKey: .message)
                
                codCharges = try? container.decode(Int.self, forKey: .codCharges)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                storeCode = try? container.decode(String.self, forKey: .storeCode)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                errorMessage = try? container.decode(String.self, forKey: .errorMessage)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(userType, forKey: .userType)
                
                try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
                
                try? container.encodeIfPresent(codMessage, forKey: .codMessage)
                
                try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
                
            }
            
        }
        
        /*
            Model: OrderData
            Used By: Cart
        */
        struct OrderData: Codable {
            
            public var orderId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
            }

            public init(orderId: String?) {
                
                self.orderId = orderId
                
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
            Used By: Cart
        */
        struct CartCheckoutResponse: Codable {
            
            public var cart: CheckCart?
            
            public var data: OrderData?
            
            public var callbackUrl: String?
            
            public var success: Bool?
            
            public var orderId: String?
            
            public var message: String?
            
            public var appInterceptUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cart = "cart"
                
                case data = "data"
                
                case callbackUrl = "callback_url"
                
                case success = "success"
                
                case orderId = "order_id"
                
                case message = "message"
                
                case appInterceptUrl = "app_intercept_url"
                
            }

            public init(cart: CheckCart?, data: OrderData?, callbackUrl: String?, success: Bool?, orderId: String?, message: String?, appInterceptUrl: String?) {
                
                self.cart = cart
                
                self.data = data
                
                self.callbackUrl = callbackUrl
                
                self.success = success
                
                self.orderId = orderId
                
                self.message = message
                
                self.appInterceptUrl = appInterceptUrl
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cart = try? container.decode(CheckCart.self, forKey: .cart)
                
                data = try? container.decode(OrderData.self, forKey: .data)
                
                callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                orderId = try? container.decode(String.self, forKey: .orderId)
                
                message = try? container.decode(String.self, forKey: .message)
                
                appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
                
            }
            
        }
        
        /*
            Model: CartMetaRequest
            Used By: Cart
        */
        struct CartMetaRequest: Codable {
            
            public var checkoutMode: String?
            
            public var gstin: String?
            
            public var pickUpCustomerDetails: [String: Any]?
            
            public var comment: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case checkoutMode = "checkout_mode"
                
                case gstin = "gstin"
                
                case pickUpCustomerDetails = "pick_up_customer_details"
                
                case comment = "comment"
                
            }

            public init(checkoutMode: String?, gstin: String?, pickUpCustomerDetails: [String: Any]?, comment: String?) {
                
                self.checkoutMode = checkoutMode
                
                self.gstin = gstin
                
                self.pickUpCustomerDetails = pickUpCustomerDetails
                
                self.comment = comment
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                pickUpCustomerDetails = try? container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
            }
            
        }
        
        /*
            Model: CartMetaResponse
            Used By: Cart
        */
        struct CartMetaResponse: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
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
            Used By: Cart
        */
        struct CartMetaMissingResponse: Codable {
            
            public var errors: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case errors = "errors"
                
            }

            public init(errors: [String]?) {
                
                self.errors = errors
                
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
            Used By: Cart
        */
        struct GetShareCartLinkRequest: Codable {
            
            public var meta: [String: Any]?
            
            public var uid: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case uid = "uid"
                
            }

            public init(meta: [String: Any]?, uid: Int) {
                
                self.meta = meta
                
                self.uid = uid
                
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
            Model: GetShareCartLinkResponse
            Used By: Cart
        */
        struct GetShareCartLinkResponse: Codable {
            
            public var shareUrl: String?
            
            public var token: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case shareUrl = "share_url"
                
                case token = "token"
                
            }

            public init(shareUrl: String?, token: String?) {
                
                self.shareUrl = shareUrl
                
                self.token = token
                
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
            Used By: Cart
        */
        struct SharedCartDetails: Codable {
            
            public var meta: [String: Any]?
            
            public var token: String?
            
            public var createdOn: String?
            
            public var user: [String: Any]?
            
            public var source: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case token = "token"
                
                case createdOn = "created_on"
                
                case user = "user"
                
                case source = "source"
                
            }

            public init(meta: [String: Any]?, token: String?, createdOn: String?, user: [String: Any]?, source: [String: Any]?) {
                
                self.meta = meta
                
                self.token = token
                
                self.createdOn = createdOn
                
                self.user = user
                
                self.source = source
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                token = try? container.decode(String.self, forKey: .token)
                
                createdOn = try? container.decode(String.self, forKey: .createdOn)
                
                user = try? container.decode([String: Any].self, forKey: .user)
                
                source = try? container.decode([String: Any].self, forKey: .source)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                try? container.encodeIfPresent(source, forKey: .source)
                
            }
            
        }
        
        /*
            Model: SharedCart
            Used By: Cart
        */
        struct SharedCart: Codable {
            
            public var lastModified: String?
            
            public var checkoutMode: String?
            
            public var breakupValues: CartBreakup?
            
            public var couponText: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var uid: String?
            
            public var gstin: String?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var sharedCartDetails: SharedCartDetails?
            
            public var deliveryChargeInfo: [String]?
            
            public var cartId: Int?
            
            public var isValid: Bool?
            
            public var items: [CartProductInfo]?
            
            public var message: String?
            
            public var restrictCheckout: Bool?
            
            public var currency: CartCurrency?
            

            public enum CodingKeys: String, CodingKey {
                
                case lastModified = "last_modified"
                
                case checkoutMode = "checkout_mode"
                
                case breakupValues = "breakup_values"
                
                case couponText = "coupon_text"
                
                case paymentOptions = "payment_options"
                
                case uid = "uid"
                
                case gstin = "gstin"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case sharedCartDetails = "shared_cart_details"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case isValid = "is_valid"
                
                case items = "items"
                
                case message = "message"
                
                case restrictCheckout = "restrict_checkout"
                
                case currency = "currency"
                
            }

            public init(lastModified: String?, checkoutMode: String?, breakupValues: CartBreakup?, couponText: String?, paymentOptions: PaymentOptions?, uid: String?, gstin: String?, comment: String?, deliveryPromise: ShipmentPromise?, sharedCartDetails: SharedCartDetails?, deliveryChargeInfo: [String]?, cartId: Int?, isValid: Bool?, items: [CartProductInfo]?, message: String?, restrictCheckout: Bool?, currency: CartCurrency?) {
                
                self.lastModified = lastModified
                
                self.checkoutMode = checkoutMode
                
                self.breakupValues = breakupValues
                
                self.couponText = couponText
                
                self.paymentOptions = paymentOptions
                
                self.uid = uid
                
                self.gstin = gstin
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.sharedCartDetails = sharedCartDetails
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.isValid = isValid
                
                self.items = items
                
                self.message = message
                
                self.restrictCheckout = restrictCheckout
                
                self.currency = currency
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                message = try? container.decode(String.self, forKey: .message)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
            }
            
        }
        
        /*
            Model: SharedCartResponse
            Used By: Cart
        */
        struct SharedCartResponse: Codable {
            
            public var error: String?
            
            public var cart: SharedCart?
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
                case cart = "cart"
                
            }

            public init(error: String?, cart: SharedCart?) {
                
                self.error = error
                
                self.cart = cart
                
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
            Used By: Lead
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

            public init(docs: [Ticket]?, filters: Filter?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
                
                self.docs = docs
                
                self.filters = filters
                
                self.limit = limit
                
                self.page = page
                
                self.pages = pages
                
                self.total = total
                
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
            Used By: Lead
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

            public init(docs: [TicketHistory]?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
                
                self.docs = docs
                
                self.limit = limit
                
                self.page = page
                
                self.pages = pages
                
                self.total = total
                
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
            Used By: Lead
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

            public init(docs: [CustomForm]?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
                
                self.docs = docs
                
                self.limit = limit
                
                self.page = page
                
                self.pages = pages
                
                self.total = total
                
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
            Used By: Lead
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

            public init(slug: String, title: String, inputs: [[String: Any]], description: String?, headerImage: String?, shouldNotify: Bool?, successMessage: String?, pollForAssignment: PollForAssignment?) {
                
                self.slug = slug
                
                self.title = title
                
                self.inputs = inputs
                
                self.description = description
                
                self.headerImage = headerImage
                
                self.shouldNotify = shouldNotify
                
                self.successMessage = successMessage
                
                self.pollForAssignment = pollForAssignment
                
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
            Used By: Lead
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

            public init(title: String, inputs: [[String: Any]], description: String?, headerImage: String?, shouldNotify: Bool?, loginRequired: Bool?, successMessage: String?, pollForAssignment: PollForAssignment?) {
                
                self.title = title
                
                self.inputs = inputs
                
                self.description = description
                
                self.headerImage = headerImage
                
                self.shouldNotify = shouldNotify
                
                self.loginRequired = loginRequired
                
                self.successMessage = successMessage
                
                self.pollForAssignment = pollForAssignment
                
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
            Used By: Lead
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

            public init(content: TicketContent?, category: String?, source: String?, status: String?, priority: String?, assignedTo: AgentChangePayload?, tags: [String]?) {
                
                self.content = content
                
                self.category = category
                
                self.source = source
                
                self.status = status
                
                self.priority = priority
                
                self.assignedTo = assignedTo
                
                self.tags = tags
                
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
            Used By: Lead
        */
        struct AgentChangePayload: Codable {
            
            public var agentId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case agentId = "agent_id"
                
            }

            public init(agentId: String) {
                
                self.agentId = agentId
                
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
            Used By: Lead
        */
        struct CreateVideoRoomResponse: Codable {
            
            public var uniqueName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case uniqueName = "unique_name"
                
            }

            public init(uniqueName: String) {
                
                self.uniqueName = uniqueName
                
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
            Used By: Lead
        */
        struct CloseVideoRoomResponse: Codable {
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool) {
                
                self.success = success
                
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
            Used By: Lead
        */
        struct CreateVideoRoomPayload: Codable {
            
            public var uniqueName: String
            
            public var notify: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case uniqueName = "unique_name"
                
                case notify = "notify"
                
            }

            public init(uniqueName: String, notify: [[String: Any]]?) {
                
                self.uniqueName = uniqueName
                
                self.notify = notify
                
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
            Used By: Lead
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

            public init(priorities: Priority, categories: Category?, statuses: Status, assignees: [[String: Any]]) {
                
                self.priorities = priorities
                
                self.categories = categories
                
                self.statuses = statuses
                
                self.assignees = assignees
                
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
            Used By: Lead
        */
        struct TicketHistoryPayload: Codable {
            
            public var value: [String: Any]?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case type = "type"
                
            }

            public init(value: [String: Any]?, type: String?) {
                
                self.value = value
                
                self.type = type
                
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
            Used By: Lead
        */
        struct CustomFormSubmissionPayload: Codable {
            
            public var response: [[String: Any]]
            

            public enum CodingKeys: String, CodingKey {
                
                case response = "response"
                
            }

            public init(response: [[String: Any]]) {
                
                self.response = response
                
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
            Used By: Lead
        */
        struct GetTokenForVideoRoomResponse: Codable {
            
            public var accessToken: String
            

            public enum CodingKeys: String, CodingKey {
                
                case accessToken = "access_token"
                
            }

            public init(accessToken: String) {
                
                self.accessToken = accessToken
                
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
            Used By: Lead
        */
        struct GetParticipantsInsideVideoRoomResponse: Codable {
            
            public var participants: [[String: Any]]
            

            public enum CodingKeys: String, CodingKey {
                
                case participants = "participants"
                
            }

            public init(participants: [[String: Any]]) {
                
                self.participants = participants
                
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
            Used By: Lead
        */
        struct SubmitCustomFormResponse: Codable {
            
            public var ticket: Ticket
            

            public enum CodingKeys: String, CodingKey {
                
                case ticket = "ticket"
                
            }

            public init(ticket: Ticket) {
                
                self.ticket = ticket
                
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
            Used By: Lead
        */
        struct TicketContext: Codable {
            
            public var applicationId: String?
            
            public var companyId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case applicationId = "application_id"
                
                case companyId = "company_id"
                
            }

            public init(applicationId: String?, companyId: String) {
                
                self.applicationId = applicationId
                
                self.companyId = companyId
                
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
            Used By: Lead
        */
        struct CreatedOn: Codable {
            
            public var userAgent: String
            

            public enum CodingKeys: String, CodingKey {
                
                case userAgent = "user_agent"
                
            }

            public init(userAgent: String) {
                
                self.userAgent = userAgent
                
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
            Used By: Lead
        */
        struct Asset: Codable {
            
            public var display: String?
            
            public var value: String
            
            public var type: String
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case value = "value"
                
                case type = "type"
                
            }

            public init(display: String?, value: String, type: String) {
                
                self.display = display
                
                self.value = value
                
                self.type = type
                
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
            Model: TicketContent
            Used By: Lead
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

            public init(title: String, description: String?, attachments: [Asset]?) {
                
                self.title = title
                
                self.description = description
                
                self.attachments = attachments
                
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
            Used By: Lead
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

            public init(code: Double?, error: [String: Any]?, message: String) {
                
                self.code = code
                
                self.error = error
                
                self.message = message
                
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
            Used By: Lead
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

            public init(status: String, priority: String, category: String, content: TicketContent) {
                
                self.status = status
                
                self.priority = priority
                
                self.category = category
                
                self.content = content
                
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
            Used By: Lead
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

            public init(key: String, display: String, color: String) {
                
                self.key = key
                
                self.display = display
                
                self.color = color
                
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
            Used By: Lead
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

            public init(key: String, display: String, color: String) {
                
                self.key = key
                
                self.display = display
                
                self.color = color
                
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
            Used By: Lead
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

            public init(key: String, display: String, form: CustomForm?) {
                
                self.key = key
                
                self.display = display
                
                self.form = form
                
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
            Used By: Lead
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

            public init(title: String, titleColor: String, backgroundColor: String) {
                
                self.title = title
                
                self.titleColor = titleColor
                
                self.backgroundColor = backgroundColor
                
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
            Used By: Lead
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

            public init(duration: Double, message: String, successMessage: String, failureMessage: String) {
                
                self.duration = duration
                
                self.message = message
                
                self.successMessage = successMessage
                
                self.failureMessage = failureMessage
                
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
            Used By: Lead
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

            public init(applicationId: String, slug: String, headerImage: String?, title: String, description: String?, loginRequired: Bool, shouldNotify: Bool, successMessage: String?, submitButton: SubmitButton?, inputs: [[String: Any]], createdOn: CreatedOn?, createdBy: [String: Any]?, pollForAssignment: PollForAssignment?, id: String, updatedAt: String?, createdAt: String?) {
                
                self.applicationId = applicationId
                
                self.slug = slug
                
                self.headerImage = headerImage
                
                self.title = title
                
                self.description = description
                
                self.loginRequired = loginRequired
                
                self.shouldNotify = shouldNotify
                
                self.successMessage = successMessage
                
                self.submitButton = submitButton
                
                self.inputs = inputs
                
                self.createdOn = createdOn
                
                self.createdBy = createdBy
                
                self.pollForAssignment = pollForAssignment
                
                self.id = id
                
                self.updatedAt = updatedAt
                
                self.createdAt = createdAt
                
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
            Used By: Lead
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

            public init(type: String, value: [String: Any], ticketId: String, createdOn: CreatedOn?, createdBy: [String: Any]?, id: String, updatedAt: String?, createdAt: String?) {
                
                self.type = type
                
                self.value = value
                
                self.ticketId = ticketId
                
                self.createdOn = createdOn
                
                self.createdBy = createdBy
                
                self.id = id
                
                self.updatedAt = updatedAt
                
                self.createdAt = createdAt
                
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
            Used By: Lead
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

            public init(context: TicketContext?, createdOn: CreatedOn?, responseId: String?, content: TicketContent?, ticketId: String, category: Category, source: String, status: Status, priority: Priority, createdBy: [String: Any]?, assignedTo: [String: Any]?, tags: [String]?, customJson: [String: Any]?, id: String?, updatedAt: String?, createdAt: String?) {
                
                self.context = context
                
                self.createdOn = createdOn
                
                self.responseId = responseId
                
                self.content = content
                
                self.ticketId = ticketId
                
                self.category = category
                
                self.source = source
                
                self.status = status
                
                self.priority = priority
                
                self.createdBy = createdBy
                
                self.assignedTo = assignedTo
                
                self.tags = tags
                
                self.customJson = customJson
                
                self.id = id
                
                self.updatedAt = updatedAt
                
                self.createdAt = createdAt
                
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
            Used By: Theme
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

            public init(size: Int?, itemTotal: Int?, hasNext: Bool?, type: String?, current: Int?) {
                
                self.size = size
                
                self.itemTotal = itemTotal
                
                self.hasNext = hasNext
                
                self.type = type
                
                self.current = current
                
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
            Used By: Theme
        */
        struct ThemesListingResponseSchema: Codable {
            
            public var items: [ThemesSchema]?
            
            public var page: PaginationSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ThemesSchema]?, page: PaginationSchema?) {
                
                self.items = items
                
                self.page = page
                
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
            Used By: Theme
        */
        struct AddThemeRequestSchema: Codable {
            
            public var themeId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case themeId = "theme_id"
                
            }

            public init(themeId: String?) {
                
                self.themeId = themeId
                
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
            Used By: Theme
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

            public init(parentTheme: String?, appliedTheme: String?, upgrade: Bool?) {
                
                self.parentTheme = parentTheme
                
                self.appliedTheme = appliedTheme
                
                self.upgrade = upgrade
                
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
            Used By: Theme
        */
        struct FontsSchema: Codable {
            
            public var items: [[String: Any]]?
            
            public var kind: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case kind = "kind"
                
            }

            public init(items: [[String: Any]]?, kind: String?) {
                
                self.items = items
                
                self.kind = kind
                
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
            Used By: Theme
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

            public init(application: String?, applied: Bool?, customized: Bool?, published: Bool?, archived: Bool?, createdAt: String?, updatedAt: String?, version: String?, parentThemeVersion: String?, parentTheme: String?, information: [String: Any]?, tags: [String]?, src: [String: Any]?, assets: [String: Any]?, availablePages: [[String: Any]]?, pages: [String: Any]?, availableSections: [availableSectionSchema]?, sections: [sectionSchema]?, constants: [String: Any]?, styles: [String: Any]?, config: [String: Any]?, settings: [String: Any]?, font: [String: Any]?, id: String?, v: Int?, colors: [String: Any]?) {
                
                self.application = application
                
                self.applied = applied
                
                self.customized = customized
                
                self.published = published
                
                self.archived = archived
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.version = version
                
                self.parentThemeVersion = parentThemeVersion
                
                self.parentTheme = parentTheme
                
                self.information = information
                
                self.tags = tags
                
                self.src = src
                
                self.assets = assets
                
                self.availablePages = availablePages
                
                self.pages = pages
                
                self.availableSections = availableSections
                
                self.sections = sections
                
                self.constants = constants
                
                self.styles = styles
                
                self.config = config
                
                self.settings = settings
                
                self.font = font
                
                self.id = id
                
                self.v = v
                
                self.colors = colors
                
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
            Used By: Theme
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

            public init(text: String?, path: String?, type: String?, value: String?, sections: [[String: Any]]?) {
                
                self.text = text
                
                self.path = path
                
                self.type = type
                
                self.value = value
                
                self.sections = sections
                
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
            Used By: Theme
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

            public init(blocks: [[String: Any]]?, name: String?, label: String?, props: [[String: Any]]?) {
                
                self.blocks = blocks
                
                self.name = name
                
                self.label = label
                
                self.props = props
                
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
            Used By: Theme
        */
        struct sectionSchema: Codable {
            
            public var pageKey: String?
            
            public var pageSections: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case pageKey = "page_key"
                
                case pageSections = "page_sections"
                
            }

            public init(pageKey: String?, pageSections: [[String: Any]]?) {
                
                self.pageKey = pageKey
                
                self.pageSections = pageSections
                
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
            Used By: User
        */
        struct EditEmailRequestSchema: Codable {
            
            public var email: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
            }

            public init(email: String?) {
                
                self.email = email
                
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
            Used By: User
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

            public init(verified: Bool?, active: Bool?, countryCode: String?, phone: String?, primary: Bool?) {
                
                self.verified = verified
                
                self.active = active
                
                self.countryCode = countryCode
                
                self.phone = phone
                
                self.primary = primary
                
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
            Used By: User
        */
        struct EditMobileRequestSchema: Codable {
            
            public var countryCode: String?
            
            public var phone: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case phone = "phone"
                
            }

            public init(countryCode: String?, phone: String?) {
                
                self.countryCode = countryCode
                
                self.phone = phone
                
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
            Used By: User
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

            public init(firstName: String?, lastName: String?, mobile: String?, email: String?, gender: String?, dob: String?, profilePicUrl: String?, androidHash: String?, sender: String?, registerToken: String?) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.mobile = mobile
                
                self.email = email
                
                self.gender = gender
                
                self.dob = dob
                
                self.profilePicUrl = profilePicUrl
                
                self.androidHash = androidHash
                
                self.sender = sender
                
                self.registerToken = registerToken
                
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
            Used By: User
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

            public init(email: String?, action: String?, token: String?, registerToken: String?) {
                
                self.email = email
                
                self.action = action
                
                self.token = token
                
                self.registerToken = registerToken
                
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
            Used By: User
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

            public init(requestId: String?, registerToken: String?, otp: String?) {
                
                self.requestId = requestId
                
                self.registerToken = registerToken
                
                self.otp = otp
                
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
            Used By: User
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

            public init(mobile: String?, countryCode: String?, action: String?, token: String?, androidHash: String?, force: String?) {
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
                self.action = action
                
                self.token = token
                
                self.androidHash = androidHash
                
                self.force = force
                
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
            Used By: User
        */
        struct UpdatePasswordRequestSchema: Codable {
            
            public var oldPassword: String?
            
            public var newPassword: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case oldPassword = "old_password"
                
                case newPassword = "new_password"
                
            }

            public init(oldPassword: String?, newPassword: String?) {
                
                self.oldPassword = oldPassword
                
                self.newPassword = newPassword
                
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
            Used By: User
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

            public init(firstName: String?, lastName: String?, gender: String?, email: String?, password: String?, phone: [String: Any]?, registerToken: String?) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.gender = gender
                
                self.email = email
                
                self.password = password
                
                self.phone = phone
                
                self.registerToken = registerToken
                
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
            Used By: User
        */
        struct TokenRequestBodySchema: Codable {
            
            public var token: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case token = "token"
                
            }

            public init(token: String?) {
                
                self.token = token
                
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
            Used By: User
        */
        struct ForgotPasswordRequestSchema: Codable {
            
            public var code: String?
            
            public var password: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case password = "password"
                
            }

            public init(code: String?, password: String?) {
                
                self.code = code
                
                self.password = password
                
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
            Used By: User
        */
        struct CodeRequestBodySchema: Codable {
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
            }

            public init(code: String?) {
                
                self.code = code
                
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
            Used By: User
        */
        struct SendResetPasswordEmailRequestSchema: Codable {
            
            public var email: String?
            
            public var gRecaptchaResponse: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case gRecaptchaResponse = "g-recaptcha-response"
                
            }

            public init(email: String?, gRecaptchaResponse: String?) {
                
                self.email = email
                
                self.gRecaptchaResponse = gRecaptchaResponse
                
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
            Used By: User
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

            public init(gRecaptchaResponse: String?, password: String?, username: String?) {
                
                self.gRecaptchaResponse = gRecaptchaResponse
                
                self.password = password
                
                self.username = username
                
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
            Used By: User
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

            public init(countryCode: String?, gRecaptchaResponse: String?, mobile: String?) {
                
                self.countryCode = countryCode
                
                self.gRecaptchaResponse = gRecaptchaResponse
                
                self.mobile = mobile
                
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
            Used By: User
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

            public init(isSignedIn: Bool?, oauth2: [String: Any]?, profile: [String: Any]?) {
                
                self.isSignedIn = isSignedIn
                
                self.oauth2 = oauth2
                
                self.profile = profile
                
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
            Used By: User
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

            public init(registerToken: String?, userExists: Bool?, user: [String: Any]?) {
                
                self.registerToken = registerToken
                
                self.userExists = userExists
                
                self.user = user
                
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
            Used By: User
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

            public init(resendTimer: Int?, resendToken: String?, success: Bool?, requestId: String?, message: String?, mobile: String?, countryCode: String?) {
                
                self.resendTimer = resendTimer
                
                self.resendToken = resendToken
                
                self.success = success
                
                self.requestId = requestId
                
                self.message = message
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
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
            Used By: User
        */
        struct LoginSuccess: Codable {
            
            public var user: UserSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
            }

            public init(user: UserSchema?) {
                
                self.user = user
                
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
            Used By: User
        */
        struct VerifyOtpSuccess: Codable {
            
            public var user: UserSchema?
            
            public var userExists: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case userExists = "userExists"
                
            }

            public init(user: UserSchema?, userExists: Bool?) {
                
                self.user = user
                
                self.userExists = userExists
                
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
            Used By: User
        */
        struct ResetPasswordSuccess: Codable {
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
            }

            public init(status: String?) {
                
                self.status = status
                
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
            Used By: User
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

            public init(resendTimer: Int?, resendToken: String?, success: Bool?, requestId: String?, message: String?, mobile: String?, countryCode: String?) {
                
                self.resendTimer = resendTimer
                
                self.resendToken = resendToken
                
                self.success = success
                
                self.requestId = requestId
                
                self.message = message
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
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
            Used By: User
        */
        struct VerifyEmailSuccess: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
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
            Used By: User
        */
        struct HasPasswordSuccess: Codable {
            
            public var result: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case result = "result"
                
            }

            public init(result: Bool?) {
                
                self.result = result
                
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
            Used By: User
        */
        struct LogoutSuccess: Codable {
            
            public var logout: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case logout = "logout"
                
            }

            public init(logout: Bool?) {
                
                self.logout = logout
                
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
            Used By: User
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

            public init(resendTimer: Int?, resendToken: String?, success: Bool?, requestId: String?, message: String?, mobile: String?, countryCode: String?) {
                
                self.resendTimer = resendTimer
                
                self.resendToken = resendToken
                
                self.success = success
                
                self.requestId = requestId
                
                self.message = message
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
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
            Used By: User
        */
        struct EmailOtpSuccess: Codable {
            
            public var resendToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case resendToken = "resend_token"
                
            }

            public init(resendToken: String?) {
                
                self.resendToken = resendToken
                
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
            Used By: User
        */
        struct SessionListSuccess: Codable {
            
            public var sessions: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sessions = "sessions"
                
            }

            public init(sessions: [String]?) {
                
                self.sessions = sessions
                
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
            Used By: User
        */
        struct VerifyMobileOTPSuccess: Codable {
            
            public var user: UserSchema?
            
            public var verifyMobileLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case verifyMobileLink = "verify_mobile_link"
                
            }

            public init(user: UserSchema?, verifyMobileLink: Bool?) {
                
                self.user = user
                
                self.verifyMobileLink = verifyMobileLink
                
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
            Used By: User
        */
        struct VerifyEmailOTPSuccess: Codable {
            
            public var user: UserSchema?
            
            public var verifyEmailLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case verifyEmailLink = "verify_email_link"
                
            }

            public init(user: UserSchema?, verifyEmailLink: Bool?) {
                
                self.user = user
                
                self.verifyEmailLink = verifyEmailLink
                
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
            Used By: User
        */
        struct SendMobileVerifyLinkSuccess: Codable {
            
            public var verifyMobileLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case verifyMobileLink = "verify_mobile_link"
                
            }

            public init(verifyMobileLink: Bool?) {
                
                self.verifyMobileLink = verifyMobileLink
                
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
            Used By: User
        */
        struct SendEmailVerifyLinkSuccess: Codable {
            
            public var verifyEmailLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case verifyEmailLink = "verify_email_link"
                
            }

            public init(verifyEmailLink: Bool?) {
                
                self.verifyEmailLink = verifyEmailLink
                
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
            Used By: User
        */
        struct UserSearchResponseSchema: Codable {
            
        }
        
        /*
            Model: CustomerListResponseSchema
            Used By: User
        */
        struct CustomerListResponseSchema: Codable {
            
            public var items: [UserSchema]?
            
            public var page: PaginationSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [UserSchema]?, page: PaginationSchema?) {
                
                self.items = items
                
                self.page = page
                
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
            Used By: User
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

            public init(display: String?, lookAndFeel: [String: Any]?, updatedAt: String?, active: Bool?, forgotPassword: Bool?, login: [String: Any]?, skipCaptcha: Bool?, name: String?, meta: [String: Any]?, id: String?, social: [String: Any]?, requiredFields: [String: Any]?, registerRequiredFields: [String: Any]?, skipLogin: Bool?, flashCard: [String: Any]?, subtext: String?, socialTokens: [String: Any]?, createdAt: String?, register: Bool?) {
                
                self.display = display
                
                self.lookAndFeel = lookAndFeel
                
                self.updatedAt = updatedAt
                
                self.active = active
                
                self.forgotPassword = forgotPassword
                
                self.login = login
                
                self.skipCaptcha = skipCaptcha
                
                self.name = name
                
                self.meta = meta
                
                self.id = id
                
                self.social = social
                
                self.requiredFields = requiredFields
                
                self.registerRequiredFields = registerRequiredFields
                
                self.skipLogin = skipLogin
                
                self.flashCard = flashCard
                
                self.subtext = subtext
                
                self.socialTokens = socialTokens
                
                self.createdAt = createdAt
                
                self.register = register
                
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
            Used By: User
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

            public init(firstName: String?, lastName: String?, phoneNumbers: [[String: Any]]?, emails: [[String: Any]]?, gender: String?, active: Bool?, profilePicUrl: String?, username: String?, accountType: String?, uid: String?, debug: [String: Any]?, hasOldPasswordHash: Bool?, id: String?, createdAt: String?, updatedAt: String?) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.phoneNumbers = phoneNumbers
                
                self.emails = emails
                
                self.gender = gender
                
                self.active = active
                
                self.profilePicUrl = profilePicUrl
                
                self.username = username
                
                self.accountType = accountType
                
                self.uid = uid
                
                self.debug = debug
                
                self.hasOldPasswordHash = hasOldPasswordHash
                
                self.id = id
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
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
            Used By: Content
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

            public init(application: String?, tnc: String?, policy: String?, faq: [[String: Any]]?, id: String?, updatedAt: String?, createdAt: String?, v: Double?) {
                
                self.application = application
                
                self.tnc = tnc
                
                self.policy = policy
                
                self.faq = faq
                
                self.id = id
                
                self.updatedAt = updatedAt
                
                self.createdAt = createdAt
                
                self.v = v
                
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
            Used By: Content
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

            public init(app: String, robotsTxt: String?, sitemapEnabled: Bool?, customMetaTags: [[String: Any]]?, details: [String: Any]?) {
                
                self.app = app
                
                self.robotsTxt = robotsTxt
                
                self.sitemapEnabled = sitemapEnabled
                
                self.customMetaTags = customMetaTags
                
                self.details = details
                
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
            Used By: Content
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

            public init(announcements: [String: Any]?, refreshRate: Int?, refreshPages: [String]?) {
                
                self.announcements = announcements
                
                self.refreshRate = refreshRate
                
                self.refreshPages = refreshPages
                
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
            Used By: Content
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

            public init(id: String?, platform: [String]?, title: String?, announcement: String?, pages: [[String: Any]]?, editorMeta: [String: Any]?, author: [String: Any]?, createdAt: String?, app: String?, modifiedAt: String?, schedule: [String: Any]?) {
                
                self.id = id
                
                self.platform = platform
                
                self.title = title
                
                self.announcement = announcement
                
                self.pages = pages
                
                self.editorMeta = editorMeta
                
                self.author = author
                
                self.createdAt = createdAt
                
                self.app = app
                
                self.modifiedAt = modifiedAt
                
                self.schedule = schedule
                
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
            Used By: Content
        */
        struct ScheduleSchema: Codable {
            
            public var schedule: [String: Any]?
            
            public var published: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case schedule = "schedule"
                
                case published = "published"
                
            }

            public init(schedule: [String: Any]?, published: Bool?) {
                
                self.schedule = schedule
                
                self.published = published
                
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
            Model: Components
            Used By: Content
        */
        struct Components: Codable {
            
            public var id: String?
            
            public var application: String?
            
            public var keyValues: [[String: Any]]?
            
            public var identifier: [String: Any]?
            
            public var dateMeta: [String: Any]?
            
            public var archived: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case application = "application"
                
                case keyValues = "key_values"
                
                case identifier = "identifier"
                
                case dateMeta = "date_meta"
                
                case archived = "archived"
                
            }

            public init(id: String?, application: String?, keyValues: [[String: Any]]?, identifier: [String: Any]?, dateMeta: [String: Any]?, archived: Bool?) {
                
                self.id = id
                
                self.application = application
                
                self.keyValues = keyValues
                
                self.identifier = identifier
                
                self.dateMeta = dateMeta
                
                self.archived = archived
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                id = try? container.decode(String.self, forKey: .id)
                
                application = try? container.decode(String.self, forKey: .application)
                
                keyValues = try? container.decode([[String: Any]].self, forKey: .keyValues)
                
                identifier = try? container.decode([String: Any].self, forKey: .identifier)
                
                dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
                
                archived = try? container.decode(Bool.self, forKey: .archived)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                try? container.encodeIfPresent(keyValues, forKey: .keyValues)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
                
                try? container.encodeIfPresent(archived, forKey: .archived)
                
            }
            
        }
        
        /*
            Model: KeyValueRequestBody
            Used By: Content
        */
        struct KeyValueRequestBody: Codable {
            
            public var keyValues: [[String: Any]]?
            
            public var identifier: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case keyValues = "key_values"
                
                case identifier = "identifier"
                
            }

            public init(keyValues: [[String: Any]]?, identifier: [String: Any]?) {
                
                self.keyValues = keyValues
                
                self.identifier = identifier
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                keyValues = try? container.decode([[String: Any]].self, forKey: .keyValues)
                
                identifier = try? container.decode([String: Any].self, forKey: .identifier)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(keyValues, forKey: .keyValues)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
            }
            
        }
        
        /*
            Model: GetAnnouncementListSchema
            Used By: Content
        */
        struct GetAnnouncementListSchema: Codable {
            
            public var items: [AdminAnnouncementSchema]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [AdminAnnouncementSchema]?) {
                
                self.items = items
                
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
            Used By: Content
        */
        struct CreateAnnouncementSchema: Codable {
            
            public var message: String?
            
            public var data: AdminAnnouncementSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case data = "data"
                
            }

            public init(message: String?, data: AdminAnnouncementSchema?) {
                
                self.message = message
                
                self.data = data
                
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
            Model: FaqSchema
            Used By: Content
        */
        struct FaqSchema: Codable {
            
            public var slug: String?
            
            public var application: String?
            
            public var v: Int?
            
            public var id: String?
            
            public var question: String?
            
            public var answer: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case application = "application"
                
                case v = "__v"
                
                case id = "_id"
                
                case question = "question"
                
                case answer = "answer"
                
            }

            public init(slug: String?, application: String?, v: Int?, id: String?, question: String?, answer: String?) {
                
                self.slug = slug
                
                self.application = application
                
                self.v = v
                
                self.id = id
                
                self.question = question
                
                self.answer = answer
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                application = try? container.decode(String.self, forKey: .application)
                
                v = try? container.decode(Int.self, forKey: .v)
                
                id = try? container.decode(String.self, forKey: .id)
                
                question = try? container.decode(String.self, forKey: .question)
                
                answer = try? container.decode(String.self, forKey: .answer)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                try? container.encodeIfPresent(v, forKey: .v)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(question, forKey: .question)
                
                try? container.encodeIfPresent(answer, forKey: .answer)
                
            }
            
        }
        
        /*
            Model: CreateFaqResponseSchema
            Used By: Content
        */
        struct CreateFaqResponseSchema: Codable {
            
            public var faq: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case faq = "faq"
                
            }

            public init(faq: [String: Any]?) {
                
                self.faq = faq
                
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
            Used By: Content
        */
        struct CreateFaqSchema: Codable {
            
            public var faq: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case faq = "faq"
                
            }

            public init(faq: [String: Any]?) {
                
                self.faq = faq
                
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
            Used By: Content
        */
        struct GetFaqSchema: Codable {
            
            public var faqs: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case faqs = "faqs"
                
            }

            public init(faqs: [[String: Any]]?) {
                
                self.faqs = faqs
                
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
            Used By: Content
        */
        struct UpdateFaqCategoryRequestSchema: Codable {
            
            public var category: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case category = "category"
                
            }

            public init(category: [String: Any]?) {
                
                self.category = category
                
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
            Used By: Content
        */
        struct CreateFaqCategoryRequestSchema: Codable {
            
            public var category: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case category = "category"
                
            }

            public init(category: [String: Any]?) {
                
                self.category = category
                
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
            Used By: Content
        */
        struct CreateFaqCategorySchema: Codable {
            
            public var category: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case category = "category"
                
            }

            public init(category: [String: Any]?) {
                
                self.category = category
                
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
            Used By: Content
        */
        struct GetFaqCategoriesSchema: Codable {
            
            public var categories: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case categories = "categories"
                
            }

            public init(categories: [[String: Any]]?) {
                
                self.categories = categories
                
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
            Used By: Content
        */
        struct GetFaqCategoryByIdOrSlugSchema: Codable {
            
            public var category: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case category = "category"
                
            }

            public init(category: [String: Any]?) {
                
                self.category = category
                
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
            Used By: Content
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

            public init(name: String?, slug: String?, orientation: String?, createdBy: [String: Any]?, dateMeta: [String: Any]?, id: String?, position: String?, application: String?, platform: String?, navigation: NavigationRef?) {
                
                self.name = name
                
                self.slug = slug
                
                self.orientation = orientation
                
                self.createdBy = createdBy
                
                self.dateMeta = dateMeta
                
                self.id = id
                
                self.position = position
                
                self.application = application
                
                self.platform = platform
                
                self.navigation = navigation
                
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
            Used By: Content
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

            public init(acl: [[String: Any]]?, localeLanguage: [String: Any]?, image: String?, type: String?, action: [String: Any]?, active: Bool?, display: String?, sortOrder: Int?, subNavigation: [String: Any]?) {
                
                self.acl = acl
                
                self.localeLanguage = localeLanguage
                
                self.image = image
                
                self.type = type
                
                self.action = action
                
                self.active = active
                
                self.display = display
                
                self.sortOrder = sortOrder
                
                self.subNavigation = subNavigation
                
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
            Used By: Content
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

            public init(slug: String?, action: [String: Any]?, platform: [[String: Any]]?, createdBy: [String: Any]?, dateMeta: [String: Any]?, id: String?, application: String?) {
                
                self.slug = slug
                
                self.action = action
                
                self.platform = platform
                
                self.createdBy = createdBy
                
                self.dateMeta = dateMeta
                
                self.id = id
                
                self.application = application
                
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
            Used By: Content
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

            public init(id: String?, slug: String?, dateMeta: [String: Any]?, application: String?, name: String?, platform: String?, configuration: [String: Any]?, media: [[String: Any]]?, active: Bool?) {
                
                self.id = id
                
                self.slug = slug
                
                self.dateMeta = dateMeta
                
                self.application = application
                
                self.name = name
                
                self.platform = platform
                
                self.configuration = configuration
                
                self.media = media
                
                self.active = active
                
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
            Used By: Content
        */
        struct AnnouncementsResponseSchema: Codable {
            
            public var announcements: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case announcements = "announcements"
                
            }

            public init(announcements: [[String: Any]]?) {
                
                self.announcements = announcements
                
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
            Used By: Content
        */
        struct FaqResponseSchema: Codable {
            
            public var faqs: [Faq]?
            

            public enum CodingKeys: String, CodingKey {
                
                case faqs = "faqs"
                
            }

            public init(faqs: [Faq]?) {
                
                self.faqs = faqs
                
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
            Used By: Content
        */
        struct UpdateHandpickedSchema: Codable {
            
            public var tag: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case tag = "tag"
                
            }

            public init(tag: [String: Any]?) {
                
                self.tag = tag
                
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
            Used By: Content
        */
        struct RemoveHandpickedSchema: Codable {
            
            public var tags: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case tags = "tags"
                
            }

            public init(tags: [String]?) {
                
                self.tags = tags
                
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
            Used By: Content
        */
        struct TagsSchema: Codable {
            
            public var id: String?
            
            public var tags: [[String: Any]]?
            
            public var application: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case tags = "tags"
                
                case application = "application"
                
                case v = "__v"
                
            }

            public init(id: String?, tags: [[String: Any]]?, application: String?, v: Int?) {
                
                self.id = id
                
                self.tags = tags
                
                self.application = application
                
                self.v = v
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                id = try? container.decode(String.self, forKey: .id)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                application = try? container.decode(String.self, forKey: .application)
                
                v = try? container.decode(Int.self, forKey: .v)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                try? container.encodeIfPresent(v, forKey: .v)
                
            }
            
        }
        
        /*
            Model: CreateTagRequestSchema
            Used By: Content
        */
        struct CreateTagRequestSchema: Codable {
            
            public var tags: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case tags = "tags"
                
            }

            public init(tags: [[String: Any]]?) {
                
                self.tags = tags
                
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
            Used By: Content
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

            public init(id: String?, question: String?, answer: String?, slug: String?, application: String?, v: Int?) {
                
                self.id = id
                
                self.question = question
                
                self.answer = answer
                
                self.slug = slug
                
                self.application = application
                
                self.v = v
                
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
            Model: KeyValue
            Used By: Content
        */
        struct KeyValue: Codable {
            
            public var id: String?
            
            public var application: String?
            
            public var keyValues: [[String: Any]]?
            
            public var identifier: [String: Any]?
            
            public var dateMeta: [String: Any]?
            
            public var archived: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case application = "application"
                
                case keyValues = "key_values"
                
                case identifier = "identifier"
                
                case dateMeta = "date_meta"
                
                case archived = "archived"
                
            }

            public init(id: String?, application: String?, keyValues: [[String: Any]]?, identifier: [String: Any]?, dateMeta: [String: Any]?, archived: Bool?) {
                
                self.id = id
                
                self.application = application
                
                self.keyValues = keyValues
                
                self.identifier = identifier
                
                self.dateMeta = dateMeta
                
                self.archived = archived
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                id = try? container.decode(String.self, forKey: .id)
                
                application = try? container.decode(String.self, forKey: .application)
                
                keyValues = try? container.decode([[String: Any]].self, forKey: .keyValues)
                
                identifier = try? container.decode([String: Any].self, forKey: .identifier)
                
                dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
                
                archived = try? container.decode(Bool.self, forKey: .archived)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                try? container.encodeIfPresent(keyValues, forKey: .keyValues)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
                
                try? container.encodeIfPresent(archived, forKey: .archived)
                
            }
            
        }
        
        /*
            Model: CustomPage
            Used By: Content
        */
        struct CustomPage: Codable {
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [String: Any]?) {
                
                self.data = data
                
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
            Used By: Content
        */
        struct CustomBlog: Codable {
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [String: Any]?) {
                
                self.data = data
                
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
            Used By: Content
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

            public init(created: Bool?, id: String?, configType: String?, application: String?, createdAt: String?, updatedAt: String?, contact: [String: Any]?) {
                
                self.created = created
                
                self.id = id
                
                self.configType = configType
                
                self.application = application
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.contact = contact
                
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
            Used By: Communication
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

            public init(response: String?, action: String?, channel: String?) {
                
                self.response = response
                
                self.action = action
                
                self.channel = channel
                
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
            Used By: Communication
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

            public init(appId: String?, userId: String?, channels: [String: Any]?) {
                
                self.appId = appId
                
                self.userId = userId
                
                self.channels = channels
                
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
            Used By: Communication
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

            public init(appId: String?, userId: String?, channels: [String: Any]?) {
                
                self.appId = appId
                
                self.userId = userId
                
                self.channels = channels
                
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
            Used By: Communication
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

            public init(action: String?, bundleIdentifier: String?, pushToken: String?, uniqueDeviceId: String?, type: String?) {
                
                self.action = action
                
                self.bundleIdentifier = bundleIdentifier
                
                self.pushToken = pushToken
                
                self.uniqueDeviceId = uniqueDeviceId
                
                self.type = type
                
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
            Used By: Communication
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

            public init(id: String?, bundleIdentifier: String?, pushToken: String?, uniqueDeviceId: String?, type: String?, platform: String?, applicationId: String?, userId: String?, createdAt: String?, updatedAt: String?, expiredAt: String?) {
                
                self.id = id
                
                self.bundleIdentifier = bundleIdentifier
                
                self.pushToken = pushToken
                
                self.uniqueDeviceId = uniqueDeviceId
                
                self.type = type
                
                self.platform = platform
                
                self.applicationId = applicationId
                
                self.userId = userId
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.expiredAt = expiredAt
                
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
            Used By: Share
        */
        struct QRCodeResp: Codable {
            
            public var link: String?
            
            public var svg: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case link = "link"
                
                case svg = "svg"
                
            }

            public init(link: String?, svg: String?) {
                
                self.link = link
                
                self.svg = svg
                
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
            Used By: Share
        */
        struct RedirectDevice: Codable {
            
            public var link: String
            
            public var type: String
            

            public enum CodingKeys: String, CodingKey {
                
                case link = "link"
                
                case type = "type"
                
            }

            public init(link: String, type: String) {
                
                self.link = link
                
                self.type = type
                
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
            Used By: Share
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

            public init(ios: RedirectDevice?, android: RedirectDevice?, web: [String: Any]?, forceWeb: Bool?) {
                
                self.ios = ios
                
                self.android = android
                
                self.web = web
                
                self.forceWeb = forceWeb
                
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
            Used By: Share
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

            public init(title: String, url: String, hash: String?, active: String?, type: String?, expireAt: String?, enableTracking: Bool?, redirects: Redirects?) {
                
                self.title = title
                
                self.url = url
                
                self.hash = hash
                
                self.active = active
                
                self.type = type
                
                self.expireAt = expireAt
                
                self.enableTracking = enableTracking
                
                self.redirects = redirects
                
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
            Used By: Share
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

            public init(title: String?, url: [String: Any]?, createdBy: String?, personalized: String?, appRedirect: String?, fallback: String?, active: Bool?, id: String?, enableTracking: Bool?, expireAt: Bool?, application: String?, userId: Bool?, createdAt: Bool?, updatedAt: Bool?, redirects: Redirects?) {
                
                self.title = title
                
                self.url = url
                
                self.createdBy = createdBy
                
                self.personalized = personalized
                
                self.appRedirect = appRedirect
                
                self.fallback = fallback
                
                self.active = active
                
                self.id = id
                
                self.enableTracking = enableTracking
                
                self.expireAt = expireAt
                
                self.application = application
                
                self.userId = userId
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.redirects = redirects
                
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
            Used By: FileStorage
        */
        struct FailedResponse: Codable {
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String) {
                
                self.message = message
                
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
            Used By: FileStorage
        */
        struct CDN: Codable {
            
            public var url: String
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
            }

            public init(url: String) {
                
                self.url = url
                
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
            Used By: FileStorage
        */
        struct Upload: Codable {
            
            public var expiry: Int
            
            public var url: String
            

            public enum CodingKeys: String, CodingKey {
                
                case expiry = "expiry"
                
                case url = "url"
                
            }

            public init(expiry: Int, url: String) {
                
                self.expiry = expiry
                
                self.url = url
                
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
            Used By: FileStorage
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

            public init(fileName: String, filePath: String, contentType: String, method: String, namespace: String, operation: String, size: Int, upload: Upload, cdn: CDN) {
                
                self.fileName = fileName
                
                self.filePath = filePath
                
                self.contentType = contentType
                
                self.method = method
                
                self.namespace = namespace
                
                self.operation = operation
                
                self.size = size
                
                self.upload = upload
                
                self.cdn = cdn
                
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
            Used By: FileStorage
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

            public init(fileName: String, contentType: String, size: Int, tags: [String]?) {
                
                self.fileName = fileName
                
                self.contentType = contentType
                
                self.size = size
                
                self.tags = tags
                
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
            Used By: FileStorage
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

            public init(id: String, fileName: String, filePath: String, contentType: String, method: String, namespace: String, operation: String, size: Int, upload: Upload, cdn: CDN, success: String, tags: [String]?, createdOn: String, modifiedOn: String) {
                
                self.id = id
                
                self.fileName = fileName
                
                self.filePath = filePath
                
                self.contentType = contentType
                
                self.method = method
                
                self.namespace = namespace
                
                self.operation = operation
                
                self.size = size
                
                self.upload = upload
                
                self.cdn = cdn
                
                self.success = success
                
                self.tags = tags
                
                self.createdOn = createdOn
                
                self.modifiedOn = modifiedOn
                
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
            Used By: Payment
        */
        struct AggregatorConfigDetail: Codable {
            
            public var merchantKey: String?
            
            public var verifyApi: String?
            
            public var api: String?
            
            public var userId: String?
            
            public var merchantId: String?
            
            public var sdk: Bool?
            
            public var configType: String
            
            public var key: String
            
            public var pin: String?
            
            public var secret: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantKey = "merchant_key"
                
                case verifyApi = "verify_api"
                
                case api = "api"
                
                case userId = "user_id"
                
                case merchantId = "merchant_id"
                
                case sdk = "sdk"
                
                case configType = "config_type"
                
                case key = "key"
                
                case pin = "pin"
                
                case secret = "secret"
                
            }

            public init(merchantKey: String?, verifyApi: String?, api: String?, userId: String?, merchantId: String?, sdk: Bool?, configType: String, key: String, pin: String?, secret: String) {
                
                self.merchantKey = merchantKey
                
                self.verifyApi = verifyApi
                
                self.api = api
                
                self.userId = userId
                
                self.merchantId = merchantId
                
                self.sdk = sdk
                
                self.configType = configType
                
                self.key = key
                
                self.pin = pin
                
                self.secret = secret
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                merchantKey = try? container.decode(String.self, forKey: .merchantKey)
                
                verifyApi = try? container.decode(String.self, forKey: .verifyApi)
                
                api = try? container.decode(String.self, forKey: .api)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                merchantId = try? container.decode(String.self, forKey: .merchantId)
                
                sdk = try? container.decode(Bool.self, forKey: .sdk)
                
                configType = try container.decode(String.self, forKey: .configType)
                
                key = try container.decode(String.self, forKey: .key)
                
                pin = try? container.decode(String.self, forKey: .pin)
                
                secret = try container.decode(String.self, forKey: .secret)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
                
                try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
                
                try? container.encodeIfPresent(api, forKey: .api)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(merchantId, forKey: .merchantId)
                
                try? container.encodeIfPresent(sdk, forKey: .sdk)
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(pin, forKey: .pin)
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        struct AggregatorsConfigDetailResponse: Codable {
            
            public var mswipe: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var juspay: AggregatorConfigDetail?
            
            public var simpl: AggregatorConfigDetail?
            
            public var payumoney: AggregatorConfigDetail?
            
            public var success: Bool
            
            public var razorpay: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var env: String
            
            public var rupifi: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case mswipe = "mswipe"
                
                case stripe = "stripe"
                
                case juspay = "juspay"
                
                case simpl = "simpl"
                
                case payumoney = "payumoney"
                
                case success = "success"
                
                case razorpay = "razorpay"
                
                case ccavenue = "ccavenue"
                
                case env = "env"
                
                case rupifi = "rupifi"
                
            }

            public init(mswipe: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, juspay: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, success: Bool, razorpay: AggregatorConfigDetail?, ccavenue: AggregatorConfigDetail?, env: String, rupifi: AggregatorConfigDetail?) {
                
                self.mswipe = mswipe
                
                self.stripe = stripe
                
                self.juspay = juspay
                
                self.simpl = simpl
                
                self.payumoney = payumoney
                
                self.success = success
                
                self.razorpay = razorpay
                
                self.ccavenue = ccavenue
                
                self.env = env
                
                self.rupifi = rupifi
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
                stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                
                juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                
                simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
                payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
                ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                
                env = try container.decode(String.self, forKey: .env)
                
                rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
            }
            
        }
        
        /*
            Model: ErrorCodeAndDescription
            Used By: Payment
        */
        struct ErrorCodeAndDescription: Codable {
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(code: String, description: String) {
                
                self.code = code
                
                self.description = description
                
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
            Used By: Payment
        */
        struct HttpErrorCodeAndResponse: Codable {
            
            public var error: ErrorCodeAndDescription
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
                case success = "success"
                
            }

            public init(error: ErrorCodeAndDescription, success: Bool) {
                
                self.error = error
                
                self.success = success
                
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
            Used By: Payment
        */
        struct AttachCardRequest: Codable {
            
            public var cardId: String
            
            public var refresh: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
                case refresh = "refresh"
                
            }

            public init(cardId: String, refresh: Bool?) {
                
                self.cardId = cardId
                
                self.refresh = refresh
                
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
            Used By: Payment
        */
        struct AttachCardsResponse: Codable {
            
            public var data: [String: Any]
            
            public var success: Bool
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(data: [String: Any], success: Bool, message: String?) {
                
                self.data = data
                
                self.success = success
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try? container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: CardPaymentGateway
            Used By: Payment
        */
        struct CardPaymentGateway: Codable {
            
            public var aggregator: String
            
            public var api: String?
            
            public var customerId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case api = "api"
                
                case customerId = "customer_id"
                
            }

            public init(aggregator: String, api: String?, customerId: String?) {
                
                self.aggregator = aggregator
                
                self.api = api
                
                self.customerId = customerId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                api = try? container.decode(String.self, forKey: .api)
                
                customerId = try? container.decode(String.self, forKey: .customerId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(api, forKey: .api)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        struct ActiveCardPaymentGatewayResponse: Codable {
            
            public var cards: CardPaymentGateway
            
            public var success: Bool
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cards = "cards"
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(cards: CardPaymentGateway, success: Bool, message: String) {
                
                self.cards = cards
                
                self.success = success
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        struct Card: Codable {
            
            public var cardName: String?
            
            public var expYear: Int?
            
            public var expMonth: Int?
            
            public var cardBrandImage: String?
            
            public var cardNumber: String?
            
            public var cardToken: String?
            
            public var cardReference: String?
            
            public var cardId: String?
            
            public var aggregatorName: String
            
            public var nickname: String?
            
            public var cardFingerprint: String?
            
            public var expired: Bool?
            
            public var cardBrand: String?
            
            public var cardType: String?
            
            public var cardIssuer: String?
            
            public var cardIsin: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardName = "card_name"
                
                case expYear = "exp_year"
                
                case expMonth = "exp_month"
                
                case cardBrandImage = "card_brand_image"
                
                case cardNumber = "card_number"
                
                case cardToken = "card_token"
                
                case cardReference = "card_reference"
                
                case cardId = "card_id"
                
                case aggregatorName = "aggregator_name"
                
                case nickname = "nickname"
                
                case cardFingerprint = "card_fingerprint"
                
                case expired = "expired"
                
                case cardBrand = "card_brand"
                
                case cardType = "card_type"
                
                case cardIssuer = "card_issuer"
                
                case cardIsin = "card_isin"
                
            }

            public init(cardName: String?, expYear: Int?, expMonth: Int?, cardBrandImage: String?, cardNumber: String?, cardToken: String?, cardReference: String?, cardId: String?, aggregatorName: String, nickname: String?, cardFingerprint: String?, expired: Bool?, cardBrand: String?, cardType: String?, cardIssuer: String?, cardIsin: String?) {
                
                self.cardName = cardName
                
                self.expYear = expYear
                
                self.expMonth = expMonth
                
                self.cardBrandImage = cardBrandImage
                
                self.cardNumber = cardNumber
                
                self.cardToken = cardToken
                
                self.cardReference = cardReference
                
                self.cardId = cardId
                
                self.aggregatorName = aggregatorName
                
                self.nickname = nickname
                
                self.cardFingerprint = cardFingerprint
                
                self.expired = expired
                
                self.cardBrand = cardBrand
                
                self.cardType = cardType
                
                self.cardIssuer = cardIssuer
                
                self.cardIsin = cardIsin
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cardName = try? container.decode(String.self, forKey: .cardName)
                
                expYear = try? container.decode(Int.self, forKey: .expYear)
                
                expMonth = try? container.decode(Int.self, forKey: .expMonth)
                
                cardBrandImage = try? container.decode(String.self, forKey: .cardBrandImage)
                
                cardNumber = try? container.decode(String.self, forKey: .cardNumber)
                
                cardToken = try? container.decode(String.self, forKey: .cardToken)
                
                cardReference = try? container.decode(String.self, forKey: .cardReference)
                
                cardId = try? container.decode(String.self, forKey: .cardId)
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                nickname = try? container.decode(String.self, forKey: .nickname)
                
                cardFingerprint = try? container.decode(String.self, forKey: .cardFingerprint)
                
                expired = try? container.decode(Bool.self, forKey: .expired)
                
                cardBrand = try? container.decode(String.self, forKey: .cardBrand)
                
                cardType = try? container.decode(String.self, forKey: .cardType)
                
                cardIssuer = try? container.decode(String.self, forKey: .cardIssuer)
                
                cardIsin = try? container.decode(String.self, forKey: .cardIsin)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
            }
            
        }
        
        /*
            Model: ListCardsResponse
            Used By: Payment
        */
        struct ListCardsResponse: Codable {
            
            public var data: [Card]?
            
            public var success: Bool
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(data: [Card]?, success: Bool, message: String) {
                
                self.data = data
                
                self.success = success
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                data = try? container.decode([Card].self, forKey: .data)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: DeletehCardRequest
            Used By: Payment
        */
        struct DeletehCardRequest: Codable {
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
            }

            public init(cardId: String) {
                
                self.cardId = cardId
                
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
            Used By: Payment
        */
        struct DeleteCardsResponse: Codable {
            
            public var success: Bool
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(success: Bool, message: String?) {
                
                self.success = success
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try? container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: ValidateCustomerRequest
            Used By: Payment
        */
        struct ValidateCustomerRequest: Codable {
            
            public var payload: String
            
            public var merchantParams: [String: Any]
            
            public var aggregator: String
            
            public var phoneNumber: String
            
            public var transactionAmountInPaise: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case payload = "payload"
                
                case merchantParams = "merchant_params"
                
                case aggregator = "aggregator"
                
                case phoneNumber = "phone_number"
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
            }

            public init(payload: String, merchantParams: [String: Any], aggregator: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.payload = payload
                
                self.merchantParams = merchantParams
                
                self.aggregator = aggregator
                
                self.phoneNumber = phoneNumber
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                payload = try container.decode(String.self, forKey: .payload)
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(payload, forKey: .payload)
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
            }
            
        }
        
        /*
            Model: ValidateCustomerResponse
            Used By: Payment
        */
        struct ValidateCustomerResponse: Codable {
            
            public var data: [String: Any]
            
            public var success: Bool
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(data: [String: Any], success: Bool, message: String) {
                
                self.data = data
                
                self.success = success
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: ChargeCustomerRequest
            Used By: Payment
        */
        struct ChargeCustomerRequest: Codable {
            
            public var amount: Int
            
            public var aggregator: String
            
            public var verified: Bool?
            
            public var orderId: String
            
            public var transactionToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case aggregator = "aggregator"
                
                case verified = "verified"
                
                case orderId = "order_id"
                
                case transactionToken = "transaction_token"
                
            }

            public init(amount: Int, aggregator: String, verified: Bool?, orderId: String, transactionToken: String?) {
                
                self.amount = amount
                
                self.aggregator = aggregator
                
                self.verified = verified
                
                self.orderId = orderId
                
                self.transactionToken = transactionToken
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                verified = try? container.decode(Bool.self, forKey: .verified)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                transactionToken = try? container.decode(String.self, forKey: .transactionToken)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        struct ChargeCustomerResponse: Codable {
            
            public var status: String
            
            public var aggregator: String
            
            public var success: Bool
            
            public var message: String
            
            public var orderId: String
            
            public var cartId: String?
            
            public var deliveryAddressId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case aggregator = "aggregator"
                
                case success = "success"
                
                case message = "message"
                
                case orderId = "order_id"
                
                case cartId = "cart_id"
                
                case deliveryAddressId = "delivery_address_id"
                
            }

            public init(status: String, aggregator: String, success: Bool, message: String, orderId: String, cartId: String?, deliveryAddressId: String?) {
                
                self.status = status
                
                self.aggregator = aggregator
                
                self.success = success
                
                self.message = message
                
                self.orderId = orderId
                
                self.cartId = cartId
                
                self.deliveryAddressId = deliveryAddressId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                status = try container.decode(String.self, forKey: .status)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try container.decode(String.self, forKey: .message)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                cartId = try? container.decode(String.self, forKey: .cartId)
                
                deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        struct PaymentInitializationRequest: Codable {
            
            public var aggregator: String
            
            public var customerId: String
            
            public var merchantOrderId: String
            
            public var timeout: Int
            
            public var method: String
            
            public var aggregatorOrderId: String
            
            public var virtualId: String?
            
            public var pollingUrl: String
            
            public var razorpayPaymentId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case timeout = "timeout"
                
                case method = "method"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case virtualId = "virtual_id"
                
                case pollingUrl = "polling_url"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
            }

            public init(aggregator: String, customerId: String, merchantOrderId: String, timeout: Int, method: String, aggregatorOrderId: String, virtualId: String?, pollingUrl: String, razorpayPaymentId: String) {
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.merchantOrderId = merchantOrderId
                
                self.timeout = timeout
                
                self.method = method
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.virtualId = virtualId
                
                self.pollingUrl = pollingUrl
                
                self.razorpayPaymentId = razorpayPaymentId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                timeout = try container.decode(Int.self, forKey: .timeout)
                
                method = try container.decode(String.self, forKey: .method)
                
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                virtualId = try? container.decode(String.self, forKey: .virtualId)
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(timeout, forKey: .timeout)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                try? container.encodeIfPresent(virtualId, forKey: .virtualId)
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        struct PaymentInitializationResponse: Codable {
            
            public var amount: Int
            
            public var email: String
            
            public var status: String
            
            public var vpa: String
            
            public var aggregator: String
            
            public var customerId: String
            
            public var merchantOrderId: String
            
            public var success: Bool
            
            public var message: String?
            
            public var orderId: String
            
            public var contact: String
            
            public var method: String
            
            public var currency: String
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case email = "email"
                
                case status = "status"
                
                case vpa = "vpa"
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case success = "success"
                
                case message = "message"
                
                case orderId = "order_id"
                
                case contact = "contact"
                
                case method = "method"
                
                case currency = "currency"
                
            }

            public init(amount: Int, email: String, status: String, vpa: String, aggregator: String, customerId: String, merchantOrderId: String, success: Bool, message: String?, orderId: String, contact: String, method: String, currency: String) {
                
                self.amount = amount
                
                self.email = email
                
                self.status = status
                
                self.vpa = vpa
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.merchantOrderId = merchantOrderId
                
                self.success = success
                
                self.message = message
                
                self.orderId = orderId
                
                self.contact = contact
                
                self.method = method
                
                self.currency = currency
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                email = try container.decode(String.self, forKey: .email)
                
                status = try container.decode(String.self, forKey: .status)
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try? container.decode(String.self, forKey: .message)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                contact = try container.decode(String.self, forKey: .contact)
                
                method = try container.decode(String.self, forKey: .method)
                
                currency = try container.decode(String.self, forKey: .currency)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        struct PaymentStatusUpdateRequest: Codable {
            
            public var amount: Int
            
            public var email: String
            
            public var status: String
            
            public var vpa: String
            
            public var aggregator: String
            
            public var customerId: String
            
            public var merchantOrderId: String
            
            public var contact: String
            
            public var orderId: String
            
            public var method: String
            
            public var currency: String
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case email = "email"
                
                case status = "status"
                
                case vpa = "vpa"
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case contact = "contact"
                
                case orderId = "order_id"
                
                case method = "method"
                
                case currency = "currency"
                
            }

            public init(amount: Int, email: String, status: String, vpa: String, aggregator: String, customerId: String, merchantOrderId: String, contact: String, orderId: String, method: String, currency: String) {
                
                self.amount = amount
                
                self.email = email
                
                self.status = status
                
                self.vpa = vpa
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.merchantOrderId = merchantOrderId
                
                self.contact = contact
                
                self.orderId = orderId
                
                self.method = method
                
                self.currency = currency
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                email = try container.decode(String.self, forKey: .email)
                
                status = try container.decode(String.self, forKey: .status)
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                contact = try container.decode(String.self, forKey: .contact)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                method = try container.decode(String.self, forKey: .method)
                
                currency = try container.decode(String.self, forKey: .currency)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        struct PaymentStatusUpdateResponse: Codable {
            
            public var aggregatorName: String
            
            public var status: String
            
            public var retry: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregatorName = "aggregator_name"
                
                case status = "status"
                
                case retry = "retry"
                
            }

            public init(aggregatorName: String, status: String, retry: Bool) {
                
                self.aggregatorName = aggregatorName
                
                self.status = status
                
                self.retry = retry
                
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
            Model: PaymentModeLogo
            Used By: Payment
        */
        struct PaymentModeLogo: Codable {
            
            public var large: String
            
            public var small: String
            

            public enum CodingKeys: String, CodingKey {
                
                case large = "large"
                
                case small = "small"
                
            }

            public init(large: String, small: String) {
                
                self.large = large
                
                self.small = small
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                large = try container.decode(String.self, forKey: .large)
                
                small = try container.decode(String.self, forKey: .small)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(large, forKey: .large)
                
                try? container.encodeIfPresent(small, forKey: .small)
                
            }
            
        }
        
        /*
            Model: PaymentModeList
            Used By: Payment
        */
        struct PaymentModeList: Codable {
            
            public var expYear: Int?
            
            public var expMonth: Int?
            
            public var cardNumber: String?
            
            public var name: String?
            
            public var cardId: String?
            
            public var displayPriority: Int?
            
            public var expired: Bool?
            
            public var cardToken: String?
            
            public var cardReference: String?
            
            public var merchantCode: String?
            
            public var cardBrandImage: String?
            
            public var cardFingerprint: String?
            
            public var nickname: String?
            
            public var displayName: String?
            
            public var cardType: String?
            
            public var cardIssuer: String?
            
            public var cardIsin: String?
            
            public var cardName: String?
            
            public var logoUrl: PaymentModeLogo?
            
            public var code: String?
            
            public var aggregatorName: String
            
            public var cardBrand: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case expYear = "exp_year"
                
                case expMonth = "exp_month"
                
                case cardNumber = "card_number"
                
                case name = "name"
                
                case cardId = "card_id"
                
                case displayPriority = "display_priority"
                
                case expired = "expired"
                
                case cardToken = "card_token"
                
                case cardReference = "card_reference"
                
                case merchantCode = "merchant_code"
                
                case cardBrandImage = "card_brand_image"
                
                case cardFingerprint = "card_fingerprint"
                
                case nickname = "nickname"
                
                case displayName = "display_name"
                
                case cardType = "card_type"
                
                case cardIssuer = "card_issuer"
                
                case cardIsin = "card_isin"
                
                case cardName = "card_name"
                
                case logoUrl = "logo_url"
                
                case code = "code"
                
                case aggregatorName = "aggregator_name"
                
                case cardBrand = "card_brand"
                
            }

            public init(expYear: Int?, expMonth: Int?, cardNumber: String?, name: String?, cardId: String?, displayPriority: Int?, expired: Bool?, cardToken: String?, cardReference: String?, merchantCode: String?, cardBrandImage: String?, cardFingerprint: String?, nickname: String?, displayName: String?, cardType: String?, cardIssuer: String?, cardIsin: String?, cardName: String?, logoUrl: PaymentModeLogo?, code: String?, aggregatorName: String, cardBrand: String?) {
                
                self.expYear = expYear
                
                self.expMonth = expMonth
                
                self.cardNumber = cardNumber
                
                self.name = name
                
                self.cardId = cardId
                
                self.displayPriority = displayPriority
                
                self.expired = expired
                
                self.cardToken = cardToken
                
                self.cardReference = cardReference
                
                self.merchantCode = merchantCode
                
                self.cardBrandImage = cardBrandImage
                
                self.cardFingerprint = cardFingerprint
                
                self.nickname = nickname
                
                self.displayName = displayName
                
                self.cardType = cardType
                
                self.cardIssuer = cardIssuer
                
                self.cardIsin = cardIsin
                
                self.cardName = cardName
                
                self.logoUrl = logoUrl
                
                self.code = code
                
                self.aggregatorName = aggregatorName
                
                self.cardBrand = cardBrand
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                expYear = try? container.decode(Int.self, forKey: .expYear)
                
                expMonth = try? container.decode(Int.self, forKey: .expMonth)
                
                cardNumber = try? container.decode(String.self, forKey: .cardNumber)
                
                name = try? container.decode(String.self, forKey: .name)
                
                cardId = try? container.decode(String.self, forKey: .cardId)
                
                displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
                
                expired = try? container.decode(Bool.self, forKey: .expired)
                
                cardToken = try? container.decode(String.self, forKey: .cardToken)
                
                cardReference = try? container.decode(String.self, forKey: .cardReference)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                cardBrandImage = try? container.decode(String.self, forKey: .cardBrandImage)
                
                cardFingerprint = try? container.decode(String.self, forKey: .cardFingerprint)
                
                nickname = try? container.decode(String.self, forKey: .nickname)
                
                displayName = try? container.decode(String.self, forKey: .displayName)
                
                cardType = try? container.decode(String.self, forKey: .cardType)
                
                cardIssuer = try? container.decode(String.self, forKey: .cardIssuer)
                
                cardIsin = try? container.decode(String.self, forKey: .cardIsin)
                
                cardName = try? container.decode(String.self, forKey: .cardName)
                
                logoUrl = try? container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                code = try? container.decode(String.self, forKey: .code)
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                cardBrand = try? container.decode(String.self, forKey: .cardBrand)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        struct RootPaymentMode: Codable {
            
            public var anonymousEnable: Bool?
            
            public var list: [PaymentModeList]?
            
            public var name: String
            
            public var aggregatorName: String?
            
            public var displayName: String
            
            public var displayPriority: Int
            
            public var addCardEnabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case anonymousEnable = "anonymous_enable"
                
                case list = "list"
                
                case name = "name"
                
                case aggregatorName = "aggregator_name"
                
                case displayName = "display_name"
                
                case displayPriority = "display_priority"
                
                case addCardEnabled = "add_card_enabled"
                
            }

            public init(anonymousEnable: Bool?, list: [PaymentModeList]?, name: String, aggregatorName: String?, displayName: String, displayPriority: Int, addCardEnabled: Bool?) {
                
                self.anonymousEnable = anonymousEnable
                
                self.list = list
                
                self.name = name
                
                self.aggregatorName = aggregatorName
                
                self.displayName = displayName
                
                self.displayPriority = displayPriority
                
                self.addCardEnabled = addCardEnabled
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                anonymousEnable = try? container.decode(Bool.self, forKey: .anonymousEnable)
                
                list = try? container.decode([PaymentModeList].self, forKey: .list)
                
                name = try container.decode(String.self, forKey: .name)
                
                aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                addCardEnabled = try? container.decode(Bool.self, forKey: .addCardEnabled)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(anonymousEnable, forKey: .anonymousEnable)
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                try? container.encodeIfPresent(addCardEnabled, forKey: .addCardEnabled)
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        struct AggregatorRoute: Codable {
            
            public var data: [String: Any]?
            
            public var paymentFlow: String?
            
            public var apiLink: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case paymentFlow = "payment_flow"
                
                case apiLink = "api_link"
                
            }

            public init(data: [String: Any]?, paymentFlow: String?, apiLink: String?) {
                
                self.data = data
                
                self.paymentFlow = paymentFlow
                
                self.apiLink = apiLink
                
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
            Model: PaymentModeRouteResponse
            Used By: Payment
        */
        struct PaymentModeRouteResponse: Codable {
            
            public var paymentOptions: [RootPaymentMode]
            
            public var paymentFlows: PaymentFlow
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOptions = "payment_options"
                
                case paymentFlows = "payment_flows"
                
                case success = "success"
                
            }

            public init(paymentOptions: [RootPaymentMode], paymentFlows: PaymentFlow, success: Bool) {
                
                self.paymentOptions = paymentOptions
                
                self.paymentFlows = paymentFlows
                
                self.success = success
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                paymentOptions = try container.decode([RootPaymentMode].self, forKey: .paymentOptions)
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                success = try container.decode(Bool.self, forKey: .success)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryDetails
            Used By: Payment
        */
        struct OrderBeneficiaryDetails: Codable {
            
            public var accountHolder: String
            
            public var email: String
            
            public var branchName: Bool?
            
            public var transferMode: String
            
            public var accountNo: String
            
            public var id: Int
            
            public var title: String
            
            public var delightsUserName: String
            
            public var isActive: Bool
            
            public var bankName: String
            
            public var subtitle: String
            
            public var address: String
            
            public var comment: Bool?
            
            public var modifiedOn: String
            
            public var beneficiaryId: String
            
            public var displayName: String
            
            public var ifscCode: String
            
            public var createdOn: String
            
            public var mobile: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case accountHolder = "account_holder"
                
                case email = "email"
                
                case branchName = "branch_name"
                
                case transferMode = "transfer_mode"
                
                case accountNo = "account_no"
                
                case id = "id"
                
                case title = "title"
                
                case delightsUserName = "delights_user_name"
                
                case isActive = "is_active"
                
                case bankName = "bank_name"
                
                case subtitle = "subtitle"
                
                case address = "address"
                
                case comment = "comment"
                
                case modifiedOn = "modified_on"
                
                case beneficiaryId = "beneficiary_id"
                
                case displayName = "display_name"
                
                case ifscCode = "ifsc_code"
                
                case createdOn = "created_on"
                
                case mobile = "mobile"
                
            }

            public init(accountHolder: String, email: String, branchName: Bool?, transferMode: String, accountNo: String, id: Int, title: String, delightsUserName: String, isActive: Bool, bankName: String, subtitle: String, address: String, comment: Bool?, modifiedOn: String, beneficiaryId: String, displayName: String, ifscCode: String, createdOn: String, mobile: Bool?) {
                
                self.accountHolder = accountHolder
                
                self.email = email
                
                self.branchName = branchName
                
                self.transferMode = transferMode
                
                self.accountNo = accountNo
                
                self.id = id
                
                self.title = title
                
                self.delightsUserName = delightsUserName
                
                self.isActive = isActive
                
                self.bankName = bankName
                
                self.subtitle = subtitle
                
                self.address = address
                
                self.comment = comment
                
                self.modifiedOn = modifiedOn
                
                self.beneficiaryId = beneficiaryId
                
                self.displayName = displayName
                
                self.ifscCode = ifscCode
                
                self.createdOn = createdOn
                
                self.mobile = mobile
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                email = try container.decode(String.self, forKey: .email)
                
                branchName = try? container.decode(Bool.self, forKey: .branchName)
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                id = try container.decode(Int.self, forKey: .id)
                
                title = try container.decode(String.self, forKey: .title)
                
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                address = try container.decode(String.self, forKey: .address)
                
                comment = try? container.decode(Bool.self, forKey: .comment)
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                mobile = try? container.decode(Bool.self, forKey: .mobile)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryResponse
            Used By: Payment
        */
        struct OrderBeneficiaryResponse: Codable {
            
            public var beneficiaries: [OrderBeneficiaryDetails]
            

            public enum CodingKeys: String, CodingKey {
                
                case beneficiaries = "beneficiaries"
                
            }

            public init(beneficiaries: [OrderBeneficiaryDetails]) {
                
                self.beneficiaries = beneficiaries
                
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
            Used By: Payment
        */
        struct NotFoundResourceError: Codable {
            
            public var success: Bool
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(success: Bool, code: String, description: String) {
                
                self.success = success
                
                self.code = code
                
                self.description = description
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                code = try container.decode(String.self, forKey: .code)
                
                description = try container.decode(String.self, forKey: .description)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
            }
            
        }
        
        /*
            Model: IfscCodeResponse
            Used By: Payment
        */
        struct IfscCodeResponse: Codable {
            
            public var bankName: String
            
            public var success: Bool?
            
            public var branchName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case bankName = "bank_name"
                
                case success = "success"
                
                case branchName = "branch_name"
                
            }

            public init(bankName: String, success: Bool?, branchName: String) {
                
                self.bankName = bankName
                
                self.success = success
                
                self.branchName = branchName
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
            }
            
        }
        
        /*
            Model: ErrorCodeDescription
            Used By: Payment
        */
        struct ErrorCodeDescription: Codable {
            
            public var success: Bool
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(success: Bool, code: String, description: String) {
                
                self.success = success
                
                self.code = code
                
                self.description = description
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                code = try container.decode(String.self, forKey: .code)
                
                description = try container.decode(String.self, forKey: .description)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        struct AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var requestId: String
            
            public var hashKey: String
            
            public var otp: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case hashKey = "hash_key"
                
                case otp = "otp"
                
            }

            public init(requestId: String, hashKey: String, otp: String) {
                
                self.requestId = requestId
                
                self.hashKey = hashKey
                
                self.otp = otp
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                otp = try container.decode(String.self, forKey: .otp)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationResponse
            Used By: Payment
        */
        struct AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var requestId: String
            
            public var hashKey: String
            
            public var otp: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case hashKey = "hash_key"
                
                case otp = "otp"
                
            }

            public init(requestId: String, hashKey: String, otp: String) {
                
                self.requestId = requestId
                
                self.hashKey = hashKey
                
                self.otp = otp
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                otp = try container.decode(String.self, forKey: .otp)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
            }
            
        }
        
        /*
            Model: WrongOtpError
            Used By: Payment
        */
        struct WrongOtpError: Codable {
            
            public var success: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case description = "description"
                
            }

            public init(success: String, description: String) {
                
                self.success = success
                
                self.description = description
                
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
            Model: BankDetails
            Used By: Payment
        */
        struct BankDetails: Codable {
            
            public var accountHolder: String
            
            public var email: String
            
            public var bankName: String
            
            public var branchName: String
            
            public var ifscCode: String
            
            public var address: String
            
            public var comment: String?
            
            public var accountNo: String
            
            public var mobile: String
            

            public enum CodingKeys: String, CodingKey {
                
                case accountHolder = "account_holder"
                
                case email = "email"
                
                case bankName = "bank_name"
                
                case branchName = "branch_name"
                
                case ifscCode = "ifsc_code"
                
                case address = "address"
                
                case comment = "comment"
                
                case accountNo = "account_no"
                
                case mobile = "mobile"
                
            }

            public init(accountHolder: String, email: String, bankName: String, branchName: String, ifscCode: String, address: String, comment: String?, accountNo: String, mobile: String) {
                
                self.accountHolder = accountHolder
                
                self.email = email
                
                self.bankName = bankName
                
                self.branchName = branchName
                
                self.ifscCode = ifscCode
                
                self.address = address
                
                self.comment = comment
                
                self.accountNo = accountNo
                
                self.mobile = mobile
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                email = try container.decode(String.self, forKey: .email)
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                address = try container.decode(String.self, forKey: .address)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        struct AddBeneficiaryDetailsRequest: Codable {
            
            public var shipmentId: String
            
            public var delights: Bool
            
            public var details: BankDetails
            
            public var orderId: String
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case shipmentId = "shipment_id"
                
                case delights = "delights"
                
                case details = "details"
                
                case orderId = "order_id"
                
                case transferMode = "transfer_mode"
                
            }

            public init(shipmentId: String, delights: Bool, details: BankDetails, orderId: String, transferMode: String) {
                
                self.shipmentId = shipmentId
                
                self.delights = delights
                
                self.details = details
                
                self.orderId = orderId
                
                self.transferMode = transferMode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                details = try container.decode(BankDetails.self, forKey: .details)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        struct RefundAccountResponse: Codable {
            
            public var data: [String: Any]?
            
            public var success: Bool
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(data: [String: Any]?, success: Bool, message: String) {
                
                self.data = data
                
                self.success = success
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                data = try? container.decode([String: Any].self, forKey: .data)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: WalletOtpRequest
            Used By: Payment
        */
        struct WalletOtpRequest: Codable {
            
            public var countryCode: String
            
            public var mobile: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case mobile = "mobile"
                
            }

            public init(countryCode: String, mobile: Bool) {
                
                self.countryCode = countryCode
                
                self.mobile = mobile
                
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
            Used By: Payment
        */
        struct WalletOtpResponse: Codable {
            
            public var isVerifiedFlag: String
            
            public var success: Bool?
            
            public var requestId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case isVerifiedFlag = "is_verified_flag"
                
                case success = "success"
                
                case requestId = "request_id"
                
            }

            public init(isVerifiedFlag: String, success: Bool?, requestId: String) {
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.success = success
                
                self.requestId = requestId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryRequest
            Used By: Payment
        */
        struct SetDefaultBeneficiaryRequest: Codable {
            
            public var orderId: String
            
            public var beneficiaryId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case beneficiaryId = "beneficiary_id"
                
            }

            public init(orderId: String, beneficiaryId: String) {
                
                self.orderId = orderId
                
                self.beneficiaryId = beneficiaryId
                
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
            Used By: Payment
        */
        struct SetDefaultBeneficiaryResponse: Codable {
            
            public var success: Bool?
            
            public var isBeneficiarySet: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isBeneficiarySet = "is_beneficiary_set"
                
            }

            public init(success: Bool?, isBeneficiarySet: Bool) {
                
                self.success = success
                
                self.isBeneficiarySet = isBeneficiarySet
                
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
            Model: OrderById
            Used By: Order
        */
        struct OrderById: Codable {
            
            public var order: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case order = "order"
                
            }

            public init(order: [String: Any]) {
                
                self.order = order
                
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
            Used By: Order
        */
        struct OrderList: Codable {
            
            public var orders: [[String: Any]]
            
            public var page: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case orders = "orders"
                
                case page = "page"
                
            }

            public init(orders: [[String: Any]], page: [String: Any]) {
                
                self.orders = orders
                
                self.page = page
                
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
            Used By: Order
        */
        struct ShipmentById: Codable {
            
            public var shipment: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case shipment = "shipment"
                
            }

            public init(shipment: [String: Any]) {
                
                self.shipment = shipment
                
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
            Used By: Order
        */
        struct ShipmentReasons: Codable {
            
            public var reasons: [[String: Any]]
            

            public enum CodingKeys: String, CodingKey {
                
                case reasons = "reasons"
                
            }

            public init(reasons: [[String: Any]]) {
                
                self.reasons = reasons
                
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
            Used By: Order
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

            public init(shipments: [String: Any], forceTransition: Bool, task: Bool) {
                
                self.shipments = shipments
                
                self.forceTransition = forceTransition
                
                self.task = task
                
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
            Used By: Order
        */
        struct ShipmentStatusUpdate: Codable {
            
            public var shipments: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case shipments = "shipments"
                
            }

            public init(shipments: [String: Any]) {
                
                self.shipments = shipments
                
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
            Used By: Order
        */
        struct ShipmentTrack: Codable {
            
            public var results: [[String: Any]]
            

            public enum CodingKeys: String, CodingKey {
                
                case results = "results"
                
            }

            public init(results: [[String: Any]]) {
                
                self.results = results
                
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
            Model: ApefaceApiError
            Used By: Order
        */
        struct ApefaceApiError: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
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
            Model: Article
            Used By: Rewards
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

            public init(id: String?, points: Double?, price: Double?) {
                
                self.id = id
                
                self.points = points
                
                self.price = price
                
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
            Used By: Rewards
        */
        struct CatalogueOrderRequest: Codable {
            
            public var articles: [Article]?
            

            public enum CodingKeys: String, CodingKey {
                
                case articles = "articles"
                
            }

            public init(articles: [Article]?) {
                
                self.articles = articles
                
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
            Used By: Rewards
        */
        struct CatalogueOrderResponse: Codable {
            
            public var articles: [Article]?
            

            public enum CodingKeys: String, CodingKey {
                
                case articles = "articles"
                
            }

            public init(articles: [Article]?) {
                
                self.articles = articles
                
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
            Used By: Rewards
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

            public init(hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, type: String?) {
                
                self.hasNext = hasNext
                
                self.hasPrevious = hasPrevious
                
                self.itemTotal = itemTotal
                
                self.nextId = nextId
                
                self.type = type
                
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
            Used By: Rewards
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

            public init(absolute: Double?, currency: String?, displayAbsolute: String?, displayPercent: String?, percent: Double?) {
                
                self.absolute = absolute
                
                self.currency = currency
                
                self.displayAbsolute = displayAbsolute
                
                self.displayPercent = displayPercent
                
                self.percent = percent
                
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
            Used By: Rewards
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

            public init(code: Int?, exception: String?, info: String?, message: String?) {
                
                self.code = code
                
                self.exception = exception
                
                self.info = info
                
                self.message = message
                
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
            Used By: Rewards
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

            public init(schedule: String?, active: Bool?, applicationId: String?, bannerImage: Asset?, createdAt: String?, infoAction: Action?, name: String?, rule: [String: Any]?, share: ShareMessages?, subText: String?, text: String?, type: String?, updatedAt: String?, updatedBy: String?, url: String?) {
                
                self.schedule = schedule
                
                self.active = active
                
                self.applicationId = applicationId
                
                self.bannerImage = bannerImage
                
                self.createdAt = createdAt
                
                self.infoAction = infoAction
                
                self.name = name
                
                self.rule = rule
                
                self.share = share
                
                self.subText = subText
                
                self.text = text
                
                self.type = type
                
                self.updatedAt = updatedAt
                
                self.updatedBy = updatedBy
                
                self.url = url
                
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
            Used By: Rewards
        */
        struct OrderDiscountRequest: Codable {
            
            public var currency: String?
            
            public var orderAmount: Double
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case orderAmount = "order_amount"
                
            }

            public init(currency: String?, orderAmount: Double) {
                
                self.currency = currency
                
                self.orderAmount = orderAmount
                
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
            Used By: Rewards
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

            public init(appliedRuleBucket: OrderDiscountRuleBucket?, baseDiscount: Discount?, discount: Discount?, orderAmount: Double?, points: Double?) {
                
                self.appliedRuleBucket = appliedRuleBucket
                
                self.baseDiscount = baseDiscount
                
                self.discount = discount
                
                self.orderAmount = orderAmount
                
                self.points = points
                
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
            Used By: Rewards
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

            public init(high: Double?, low: Double?, max: Double?, value: Double?, valueType: String?) {
                
                self.high = high
                
                self.low = low
                
                self.max = max
                
                self.value = value
                
                self.valueType = valueType
                
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
            Used By: Rewards
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

            public init(id: String?, applicationId: String?, claimed: Bool?, createdAt: String?, expiresOn: String?, meta: String?, points: Double?, remainingPoints: Double?, text1: String?, text2: String?, text3: String?, txnName: String?, updatedAt: String?, userId: String?) {
                
                self.id = id
                
                self.applicationId = applicationId
                
                self.claimed = claimed
                
                self.createdAt = createdAt
                
                self.expiresOn = expiresOn
                
                self.meta = meta
                
                self.points = points
                
                self.remainingPoints = remainingPoints
                
                self.text1 = text1
                
                self.text2 = text2
                
                self.text3 = text3
                
                self.txnName = txnName
                
                self.updatedAt = updatedAt
                
                self.userId = userId
                
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
            Used By: Rewards
        */
        struct PointsHistoryResponse: Codable {
            
            public var history: [PointsHistory]?
            
            public var page: CursorPage?
            

            public enum CodingKeys: String, CodingKey {
                
                case history = "history"
                
                case page = "page"
                
            }

            public init(history: [PointsHistory]?, page: CursorPage?) {
                
                self.history = history
                
                self.page = page
                
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
            Used By: Rewards
        */
        struct PointsResponse: Codable {
            
            public var points: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case points = "points"
                
            }

            public init(points: Double?) {
                
                self.points = points
                
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
            Used By: Rewards
        */
        struct RedeemReferralCodeRequest: Codable {
            
            public var deviceId: String
            
            public var referralCode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case deviceId = "device_id"
                
                case referralCode = "referral_code"
                
            }

            public init(deviceId: String, referralCode: String) {
                
                self.deviceId = deviceId
                
                self.referralCode = referralCode
                
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
            Used By: Rewards
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

            public init(message: String?, points: Double?, redeemed: Bool?, referrerId: String?, referrerInfo: String?) {
                
                self.message = message
                
                self.points = points
                
                self.redeemed = redeemed
                
                self.referrerId = referrerId
                
                self.referrerInfo = referrerInfo
                
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
            Used By: Rewards
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

            public init(referral: Offer?, referrerInfo: String?, share: ShareMessages?, user: [String: Any]?) {
                
                self.referral = referral
                
                self.referrerInfo = referrerInfo
                
                self.share = share
                
                self.user = user
                
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
            Used By: Rewards
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

            public init(email: String?, facebook: String?, fallback: String?, message: String?, messenger: String?, sms: String?, text: String?, twitter: String?, whatsapp: String?) {
                
                self.email = email
                
                self.facebook = facebook
                
                self.fallback = fallback
                
                self.message = message
                
                self.messenger = messenger
                
                self.sms = sms
                
                self.text = text
                
                self.twitter = twitter
                
                self.whatsapp = whatsapp
                
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
            Used By: Feedback
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

            public init(answer: Bool?, askQuestion: Bool?, comment: Bool?, rnr: Bool?) {
                
                self.answer = answer
                
                self.askQuestion = askQuestion
                
                self.comment = comment
                
                self.rnr = rnr
                
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
            Used By: Feedback
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

            public init(entityId: String?, entityType: String?, mediaList: [AddMediaRequest]?, refId: String?, refType: String?) {
                
                self.entityId = entityId
                
                self.entityType = entityType
                
                self.mediaList = mediaList
                
                self.refId = refId
                
                self.refType = refType
                
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
            Used By: Feedback
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

            public init(cloudId: String?, cloudName: String?, cloudProvider: String?, entityId: String?, entityType: String?, mediaUrl: String?, refId: String?, refType: String?, tags: [String]?, thumbnailUrl: String?, type: String?) {
                
                self.cloudId = cloudId
                
                self.cloudName = cloudName
                
                self.cloudProvider = cloudProvider
                
                self.entityId = entityId
                
                self.entityType = entityType
                
                self.mediaUrl = mediaUrl
                
                self.refId = refId
                
                self.refType = refType
                
                self.tags = tags
                
                self.thumbnailUrl = thumbnailUrl
                
                self.type = type
                
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
            Used By: Feedback
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

            public init(createdOn: String?, description: String?, id: String?, modifiedOn: String?, name: String?, slug: String?, tags: [TagMeta]?) {
                
                self.createdOn = createdOn
                
                self.description = description
                
                self.id = id
                
                self.modifiedOn = modifiedOn
                
                self.name = name
                
                self.slug = slug
                
                self.tags = tags
                
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
            Used By: Feedback
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

            public init(description: String?, name: String, slug: String?, title: String?, type: String, value: Double) {
                
                self.description = description
                
                self.name = name
                
                self.slug = slug
                
                self.title = title
                
                self.type = type
                
                self.value = value
                
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
            Used By: Feedback
        */
        struct CheckEligibilityResponse: Codable {
            
            public var access: Access?
            
            public var mediaCloud: MediaCloud?
            

            public enum CodingKeys: String, CodingKey {
                
                case access = "access"
                
                case mediaCloud = "media_cloud"
                
            }

            public init(access: Access?, mediaCloud: MediaCloud?) {
                
                self.access = access
                
                self.mediaCloud = mediaCloud
                
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
            Used By: Feedback
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

            public init(id: String?, name: String?, provider: String?) {
                
                self.id = id
                
                self.name = name
                
                self.provider = provider
                
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
            Used By: Feedback
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

            public init(comment: [String], entityId: String, entityType: String) {
                
                self.comment = comment
                
                self.entityId = entityId
                
                self.entityType = entityType
                
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
            Used By: Feedback
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

            public init(choices: [String]?, entityId: String, entityType: String, maxLen: Int?, sortPriority: Int?, tags: [String]?, text: String, type: String?) {
                
                self.choices = choices
                
                self.entityId = entityId
                
                self.entityType = entityType
                
                self.maxLen = maxLen
                
                self.sortPriority = sortPriority
                
                self.tags = tags
                
                self.text = text
                
                self.type = type
                
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
            Used By: Feedback
        */
        struct DeviceMeta: Codable {
            
            public var appVersion: String?
            
            public var platform: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case appVersion = "app_version"
                
                case platform = "platform"
                
            }

            public init(appVersion: String?, platform: String?) {
                
                self.appVersion = appVersion
                
                self.platform = platform
                
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
            Used By: Feedback
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

            public init(key: String?, name: String?, namespace: String?, path: String?, provider: String?, secret: String?) {
                
                self.key = key
                
                self.name = name
                
                self.namespace = namespace
                
                self.path = path
                
                self.provider = provider
                
                self.secret = secret
                
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
            Used By: Feedback
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

            public init(cloud: Cloud?, comment: [String]?, description: String?, id: String?, type: String?, url: Url?) {
                
                self.cloud = cloud
                
                self.comment = comment
                
                self.description = description
                
                self.id = id
                
                self.type = type
                
                self.url = url
                
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
            Used By: Feedback
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

            public init(hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, type: String?) {
                
                self.hasNext = hasNext
                
                self.hasPrevious = hasPrevious
                
                self.itemTotal = itemTotal
                
                self.nextId = nextId
                
                self.type = type
                
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
            Used By: Feedback
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

            public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
                
                self.current = current
                
                self.hasNext = hasNext
                
                self.itemTotal = itemTotal
                
                self.size = size
                
                self.type = type
                
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
            Used By: Feedback
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

            public init(description: String?, entityId: String, entityType: String) {
                
                self.description = description
                
                self.entityId = entityId
                
                self.entityType = entityType
                
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
            Used By: Feedback
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

            public init(description: String?, name: String, slug: String) {
                
                self.description = description
                
                self.name = name
                
                self.slug = slug
                
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
            Used By: Feedback
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

            public init(media: [MediaMeta]?, name: String?, type: String?) {
                
                self.media = media
                
                self.name = name
                
                self.type = type
                
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
            Used By: Feedback
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

            public init(abusive: Bool?, active: Bool?, approve: Bool?, description: String?, entityId: String?, entityType: String?, id: String?) {
                
                self.abusive = abusive
                
                self.active = active
                
                self.approve = approve
                
                self.description = description
                
                self.entityId = entityId
                
                self.entityType = entityType
                
                self.id = id
                
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
            Used By: Feedback
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

            public init(description: String?, name: String, slug: String?) {
                
                self.description = description
                
                self.name = name
                
                self.slug = slug
                
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
            Used By: Feedback
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

            public init(active: Bool?, approve: Bool?, comment: [String], id: String) {
                
                self.active = active
                
                self.approve = approve
                
                self.comment = comment
                
                self.id = id
                
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
            Used By: Feedback
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

            public init(approve: Bool?, archive: Bool?, entityType: String?, ids: [String]?) {
                
                self.approve = approve
                
                self.archive = archive
                
                self.entityType = entityType
                
                self.ids = ids
                
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
            Used By: Feedback
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

            public init(active: Bool?, approve: Bool?, choices: [String]?, id: String?, tags: [String]?) {
                
                self.active = active
                
                self.approve = approve
                
                self.choices = choices
                
                self.id = id
                
                self.tags = tags
                
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
            Used By: Feedback
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

            public init(active: Bool?, application: String?, approve: Bool?, archive: Bool?, attributesRating: [AttributeObject]?, description: String?, deviceMeta: DeviceMeta?, entityId: String?, entityType: String?, mediaResource: [MediaMeta]?, rating: Double?, reviewId: String?, templateId: String?, title: String?) {
                
                self.active = active
                
                self.application = application
                
                self.approve = approve
                
                self.archive = archive
                
                self.attributesRating = attributesRating
                
                self.description = description
                
                self.deviceMeta = deviceMeta
                
                self.entityId = entityId
                
                self.entityType = entityType
                
                self.mediaResource = mediaResource
                
                self.rating = rating
                
                self.reviewId = reviewId
                
                self.templateId = templateId
                
                self.title = title
                
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
            Used By: Feedback
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

            public init(action: String?, active: Bool?, id: String?, refId: String?, refType: String?) {
                
                self.action = action
                
                self.active = active
                
                self.id = id
                
                self.refId = refId
                
                self.refType = refType
                
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
            Used By: Feedback
        */
        struct Url: Codable {
            
            public var main: String?
            
            public var thumbnail: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case main = "main"
                
                case thumbnail = "thumbnail"
                
            }

            public init(main: String?, thumbnail: String?) {
                
                self.main = main
                
                self.thumbnail = thumbnail
                
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
            Used By: Feedback
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

            public init(action: String?, entityId: String?, entityType: String?, refId: String?, refType: String?) {
                
                self.action = action
                
                self.entityId = entityId
                
                self.entityType = entityType
                
                self.refId = refId
                
                self.refType = refType
                
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
            Used By: Feedback
        */
        struct XCursorGetResponse: Codable {
            
            public var items: [String: Any]?
            
            public var page: PageCursor?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [String: Any]?, page: PageCursor?) {
                
                self.items = items
                
                self.page = page
                
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
            Used By: Feedback
        */
        struct XInsertResponse: Codable {
            
            public var ids: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case ids = "ids"
                
            }

            public init(ids: String?) {
                
                self.ids = ids
                
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
            Used By: Feedback
        */
        struct XNumberGetResponse: Codable {
            
            public var items: [String: Any]?
            
            public var page: PageNumber?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [String: Any]?, page: PageNumber?) {
                
                self.items = items
                
                self.page = page
                
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
            Used By: Feedback
        */
        struct XUpdateResponse: Codable {
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
            }

            public init(id: String?) {
                
                self.id = id
                
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
            Used By: PosCart
        */
        struct UpdateCartShipmentItem: Codable {
            
            public var shipmentType: String
            
            public var quantity: Int?
            
            public var articleUid: String
            

            public enum CodingKeys: String, CodingKey {
                
                case shipmentType = "shipment_type"
                
                case quantity = "quantity"
                
                case articleUid = "article_uid"
                
            }

            public init(shipmentType: String, quantity: Int?, articleUid: String) {
                
                self.shipmentType = shipmentType
                
                self.quantity = quantity
                
                self.articleUid = articleUid
                
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
            Model: UpdateCartShipmentRequest
            Used By: PosCart
        */
        struct UpdateCartShipmentRequest: Codable {
            
            public var shipments: [UpdateCartShipmentItem]
            

            public enum CodingKeys: String, CodingKey {
                
                case shipments = "shipments"
                
            }

            public init(shipments: [UpdateCartShipmentItem]) {
                
                self.shipments = shipments
                
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
            Used By: PosCart
        */
        struct CartDeliveryModesResponse: Codable {
            
            public var availableModes: [String]?
            
            public var pickupStores: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case availableModes = "available_modes"
                
                case pickupStores = "pickup_stores"
                
            }

            public init(availableModes: [String]?, pickupStores: [Int]?) {
                
                self.availableModes = availableModes
                
                self.pickupStores = pickupStores
                
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
            Used By: PosCart
        */
        struct StoreDetailsResponse: Codable {
            
            public var items: [StoreDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [StoreDetail]?) {
                
                self.items = items
                
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
        
        
        
        /*
            Model: GetPincodeCityResponse
            Used By: Logistic
        */
        struct GetPincodeCityResponse: Codable {
            
            public var stormbreakerUuid: String
            
            public var error: [String: Any]
            
            public var success: Bool
            
            public var data: [[String: Any]]
            
            public var requestUuid: String
            

            public enum CodingKeys: String, CodingKey {
                
                case stormbreakerUuid = "stormbreaker_uuid"
                
                case error = "error"
                
                case success = "success"
                
                case data = "data"
                
                case requestUuid = "request_uuid"
                
            }

            public init(stormbreakerUuid: String, error: [String: Any], success: Bool, data: [[String: Any]], requestUuid: String) {
                
                self.stormbreakerUuid = stormbreakerUuid
                
                self.error = error
                
                self.success = success
                
                self.data = data
                
                self.requestUuid = requestUuid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
                
                error = try container.decode([String: Any].self, forKey: .error)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                data = try container.decode([[String: Any]].self, forKey: .data)
                
                requestUuid = try container.decode(String.self, forKey: .requestUuid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
                
            }
            
        }
        
        /*
            Model: GetTatProductReqBody
            Used By: Logistic
        */
        struct GetTatProductReqBody: Codable {
            
            public var locationDetails: [[String: Any]]
            
            public var source: String
            
            public var toPincode: String
            
            public var action: String
            
            public var identifier: String
            
            public var journey: String
            

            public enum CodingKeys: String, CodingKey {
                
                case locationDetails = "location_details"
                
                case source = "source"
                
                case toPincode = "to_pincode"
                
                case action = "action"
                
                case identifier = "identifier"
                
                case journey = "journey"
                
            }

            public init(locationDetails: [[String: Any]], source: String, toPincode: String, action: String, identifier: String, journey: String) {
                
                self.locationDetails = locationDetails
                
                self.source = source
                
                self.toPincode = toPincode
                
                self.action = action
                
                self.identifier = identifier
                
                self.journey = journey
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                locationDetails = try container.decode([[String: Any]].self, forKey: .locationDetails)
                
                source = try container.decode(String.self, forKey: .source)
                
                toPincode = try container.decode(String.self, forKey: .toPincode)
                
                action = try container.decode(String.self, forKey: .action)
                
                identifier = try container.decode(String.self, forKey: .identifier)
                
                journey = try container.decode(String.self, forKey: .journey)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                try? container.encodeIfPresent(toPincode, forKey: .toPincode)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(journey, forKey: .journey)
                
            }
            
        }
        
        /*
            Model: GetTatProductResponse
            Used By: Logistic
        */
        struct GetTatProductResponse: Codable {
            
            public var locationDetails: [[String: Any]]
            
            public var requestUuid: String
            
            public var error: [String: Any]
            
            public var toCity: String
            
            public var source: String
            
            public var toPincode: String
            
            public var action: String
            
            public var stormbreakerUuid: String
            
            public var success: Bool
            
            public var identifier: String
            
            public var journey: String
            

            public enum CodingKeys: String, CodingKey {
                
                case locationDetails = "location_details"
                
                case requestUuid = "request_uuid"
                
                case error = "error"
                
                case toCity = "to_city"
                
                case source = "source"
                
                case toPincode = "to_pincode"
                
                case action = "action"
                
                case stormbreakerUuid = "stormbreaker_uuid"
                
                case success = "success"
                
                case identifier = "identifier"
                
                case journey = "journey"
                
            }

            public init(locationDetails: [[String: Any]], requestUuid: String, error: [String: Any], toCity: String, source: String, toPincode: String, action: String, stormbreakerUuid: String, success: Bool, identifier: String, journey: String) {
                
                self.locationDetails = locationDetails
                
                self.requestUuid = requestUuid
                
                self.error = error
                
                self.toCity = toCity
                
                self.source = source
                
                self.toPincode = toPincode
                
                self.action = action
                
                self.stormbreakerUuid = stormbreakerUuid
                
                self.success = success
                
                self.identifier = identifier
                
                self.journey = journey
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                locationDetails = try container.decode([[String: Any]].self, forKey: .locationDetails)
                
                requestUuid = try container.decode(String.self, forKey: .requestUuid)
                
                error = try container.decode([String: Any].self, forKey: .error)
                
                toCity = try container.decode(String.self, forKey: .toCity)
                
                source = try container.decode(String.self, forKey: .source)
                
                toPincode = try container.decode(String.self, forKey: .toPincode)
                
                action = try container.decode(String.self, forKey: .action)
                
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                identifier = try container.decode(String.self, forKey: .identifier)
                
                journey = try container.decode(String.self, forKey: .journey)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
                
                try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                try? container.encodeIfPresent(toCity, forKey: .toCity)
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                try? container.encodeIfPresent(toPincode, forKey: .toPincode)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(journey, forKey: .journey)
                
            }
            
        }
        
        
    }