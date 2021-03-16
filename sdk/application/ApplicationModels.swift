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

            public init(key: String?, type: String?, value: String?) {
                
                self.key = key
                
                self.value = value
                
                self.type = type
                
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

            public init(query: [String: Any]?, type: String?) {
                
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

            public init(page: ProductListingActionPage?, type: String?) {
                
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
            
            public var logo: Media?
            
            public var action: ProductListingAction?
            
            public var uid: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case logo = "logo"
                
                case action = "action"
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(action: ProductListingAction?, logo: Media?, name: String?, uid: Int?) {
                
                self.logo = logo
                
                self.action = action
                
                self.uid = uid
                
                self.name = name
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
            }
            
        }
        
        /*
            Model: ProductDetail
            Used By: Catalog
        */
        struct ProductDetail: Codable {
            
            public var tryouts: [String]?
            
            public var productOnlineDate: String?
            
            public var hasVariant: Bool?
            
            public var highlights: [String]?
            
            public var teaserTag: String?
            
            public var itemType: String?
            
            public var name: String?
            
            public var rating: Double?
            
            public var description: String?
            
            public var attributes: [String: Any]?
            
            public var medias: [Media]?
            
            public var uid: Int?
            
            public var type: String?
            
            public var color: String?
            
            public var shortDescription: String?
            
            public var ratingCount: Int?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var brand: ProductBrand?
            
            public var imageNature: String?
            
            public var similars: [String]?
            
            public var categories: [ProductBrand]?
            
            public var slug: String
            

            public enum CodingKeys: String, CodingKey {
                
                case tryouts = "tryouts"
                
                case productOnlineDate = "product_online_date"
                
                case hasVariant = "has_variant"
                
                case highlights = "highlights"
                
                case teaserTag = "teaser_tag"
                
                case itemType = "item_type"
                
                case name = "name"
                
                case rating = "rating"
                
                case description = "description"
                
                case attributes = "attributes"
                
                case medias = "medias"
                
                case uid = "uid"
                
                case type = "type"
                
                case color = "color"
                
                case shortDescription = "short_description"
                
                case ratingCount = "rating_count"
                
                case groupedAttributes = "grouped_attributes"
                
                case brand = "brand"
                
                case imageNature = "image_nature"
                
                case similars = "similars"
                
                case categories = "categories"
                
                case slug = "slug"
                
            }

            public init(attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemType: String?, medias: [Media]?, name: String?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?) {
                
                self.tryouts = tryouts
                
                self.productOnlineDate = productOnlineDate
                
                self.hasVariant = hasVariant
                
                self.highlights = highlights
                
                self.teaserTag = teaserTag
                
                self.itemType = itemType
                
                self.name = name
                
                self.rating = rating
                
                self.description = description
                
                self.attributes = attributes
                
                self.medias = medias
                
                self.uid = uid
                
                self.type = type
                
                self.color = color
                
                self.shortDescription = shortDescription
                
                self.ratingCount = ratingCount
                
                self.groupedAttributes = groupedAttributes
                
                self.brand = brand
                
                self.imageNature = imageNature
                
                self.similars = similars
                
                self.categories = categories
                
                self.slug = slug
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                tryouts = try? container.decode([String].self, forKey: .tryouts)
                
                productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
                
                hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
                
                highlights = try? container.decode([String].self, forKey: .highlights)
                
                teaserTag = try? container.decode(String.self, forKey: .teaserTag)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                name = try? container.decode(String.self, forKey: .name)
                
                rating = try? container.decode(Double.self, forKey: .rating)
                
                description = try? container.decode(String.self, forKey: .description)
                
                attributes = try? container.decode([String: Any].self, forKey: .attributes)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                type = try? container.decode(String.self, forKey: .type)
                
                color = try? container.decode(String.self, forKey: .color)
                
                shortDescription = try? container.decode(String.self, forKey: .shortDescription)
                
                ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
                
                groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
                brand = try? container.decode(ProductBrand.self, forKey: .brand)
                
                imageNature = try? container.decode(String.self, forKey: .imageNature)
                
                similars = try? container.decode([String].self, forKey: .similars)
                
                categories = try? container.decode([ProductBrand].self, forKey: .categories)
                
                slug = try container.decode(String.self, forKey: .slug)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
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
            Model: Price
            Used By: Catalog
        */
        struct Price: Codable {
            
            public var min: Double?
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var max: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case max = "max"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
                
                self.min = min
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.max = max
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                min = try? container.decode(Double.self, forKey: .min)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                max = try? container.decode(Double.self, forKey: .max)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
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
            
            public var display: String?
            
            public var quantity: Int?
            
            public var isAvailable: Bool?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case quantity = "quantity"
                
                case isAvailable = "is_available"
                
                case value = "value"
                
            }

            public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
                
                self.display = display
                
                self.quantity = quantity
                
                self.isAvailable = isAvailable
                
                self.value = value
                
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
            Model: ProductSizes
            Used By: Catalog
        */
        struct ProductSizes: Codable {
            
            public var discount: String?
            
            public var stores: ProductSizeStores?
            
            public var price: ProductListingPrice?
            
            public var sizeChart: [String: Any]?
            
            public var sellable: Bool?
            
            public var sizes: [ProductSize]?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case stores = "stores"
                
                case price = "price"
                
                case sizeChart = "size_chart"
                
                case sellable = "sellable"
                
                case sizes = "sizes"
                
            }

            public init(discount: String?, price: ProductListingPrice?, sellable: Bool?, sizes: [ProductSize]?, sizeChart: [String: Any]?, stores: ProductSizeStores?) {
                
                self.discount = discount
                
                self.stores = stores
                
                self.price = price
                
                self.sizeChart = sizeChart
                
                self.sellable = sellable
                
                self.sizes = sizes
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
                
                price = try? container.decode(ProductListingPrice.self, forKey: .price)
                
                sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
                
                sellable = try? container.decode(Bool.self, forKey: .sellable)
                
                sizes = try? container.decode([ProductSize].self, forKey: .sizes)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
            }
            
        }
        
        /*
            Model: Store
            Used By: Catalog
        */
        struct Store: Codable {
            
            public var count: Int?
            
            public var uid: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.count = count
                
                self.uid = uid
                
                self.name = name
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                count = try? container.decode(Int.self, forKey: .count)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
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

            public init(currency: String?, effective: Double?, marked: Double?) {
                
                self.currency = currency
                
                self.effective = effective
                
                self.marked = marked
                
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
            Model: Seller
            Used By: Catalog
        */
        struct Seller: Codable {
            
            public var count: Int?
            
            public var uid: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.count = count
                
                self.uid = uid
                
                self.name = name
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                count = try? container.decode(Int.self, forKey: .count)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
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
            
            public var discount: String?
            
            public var pincode: Int?
            
            public var store: Store?
            
            public var quantity: Int?
            
            public var articleId: String?
            
            public var strategyWiseListing: [[String: Any]]?
            
            public var price: ProductStockPrice?
            
            public var seller: Seller?
            
            public var itemType: String?
            
            public var specialBadge: String?
            
            public var set: [String: Any]?
            
            public var longLat: [Double]?
            
            public var pricePerPrice: ProductStockPrice?
            
            public var articleAssignment: ArticleAssignment?
            
            public var sellerCount: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case pincode = "pincode"
                
                case store = "store"
                
                case quantity = "quantity"
                
                case articleId = "article_id"
                
                case strategyWiseListing = "strategy_wise_listing"
                
                case price = "price"
                
                case seller = "seller"
                
                case itemType = "item_type"
                
                case specialBadge = "special_badge"
                
                case set = "set"
                
                case longLat = "long_lat"
                
                case pricePerPrice = "price_per_price"
                
                case articleAssignment = "article_assignment"
                
                case sellerCount = "seller_count"
                
            }

            public init(articleAssignment: ArticleAssignment?, articleId: String?, discount: String?, itemType: String?, longLat: [Double]?, pincode: Int?, price: ProductStockPrice?, pricePerPrice: ProductStockPrice?, quantity: Int?, seller: Seller?, sellerCount: Int?, set: [String: Any]?, specialBadge: String?, store: Store?, strategyWiseListing: [[String: Any]]?) {
                
                self.discount = discount
                
                self.pincode = pincode
                
                self.store = store
                
                self.quantity = quantity
                
                self.articleId = articleId
                
                self.strategyWiseListing = strategyWiseListing
                
                self.price = price
                
                self.seller = seller
                
                self.itemType = itemType
                
                self.specialBadge = specialBadge
                
                self.set = set
                
                self.longLat = longLat
                
                self.pricePerPrice = pricePerPrice
                
                self.articleAssignment = articleAssignment
                
                self.sellerCount = sellerCount
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                pincode = try? container.decode(Int.self, forKey: .pincode)
                
                store = try? container.decode(Store.self, forKey: .store)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
                
                price = try? container.decode(ProductStockPrice.self, forKey: .price)
                
                seller = try? container.decode(Seller.self, forKey: .seller)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                specialBadge = try? container.decode(String.self, forKey: .specialBadge)
                
                set = try? container.decode([String: Any].self, forKey: .set)
                
                longLat = try? container.decode([Double].self, forKey: .longLat)
                
                pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
                
                articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                
                sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
                
                try? container.encodeIfPresent(set, forKey: .set)
                
                try? container.encodeIfPresent(longLat, forKey: .longLat)
                
                try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
                
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

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.value = value
                
                self.name = name
                
                self.isSelected = isSelected
                
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
            Model: Page
            Used By: Catalog
        */
        struct Page: Codable {
            
            public var hasNext: Bool?
            
            public var nextId: String?
            
            public var type: String?
            
            public var current: Int?
            
            public var itemTotal: Int?
            
            public var hasPrevious: Bool?
            
            public var size: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case hasNext = "has_next"
                
                case nextId = "next_id"
                
                case type = "type"
                
                case current = "current"
                
                case itemTotal = "item_total"
                
                case hasPrevious = "has_previous"
                
                case size = "size"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, size: Int?, type: String?) {
                
                self.hasNext = hasNext
                
                self.nextId = nextId
                
                self.type = type
                
                self.current = current
                
                self.itemTotal = itemTotal
                
                self.hasPrevious = hasPrevious
                
                self.size = size
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                hasNext = try? container.decode(Bool.self, forKey: .hasNext)
                
                nextId = try? container.decode(String.self, forKey: .nextId)
                
                type = try? container.decode(String.self, forKey: .type)
                
                current = try? container.decode(Int.self, forKey: .current)
                
                itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
                
                hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
                
                size = try? container.decode(Int.self, forKey: .size)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(nextId, forKey: .nextId)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
            }
            
        }
        
        /*
            Model: ProductSizeSellersResponse
            Used By: Catalog
        */
        struct ProductSizeSellersResponse: Codable {
            
            public var sortOn: [ProductSizeSellerFilter]?
            
            public var page: Page?
            
            public var items: [ProductSizePriceResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sortOn = "sort_on"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [ProductSizePriceResponse]?, page: Page?, sortOn: [ProductSizeSellerFilter]?) {
                
                self.sortOn = sortOn
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                sortOn = try? container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            Model: AttributeDetail
            Used By: Catalog
        */
        struct AttributeDetail: Codable {
            
            public var key: String?
            
            public var description: String?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case description = "description"
                
                case display = "display"
                
            }

            public init(description: String?, display: String?, key: String?) {
                
                self.key = key
                
                self.description = description
                
                self.display = display
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                key = try? container.decode(String.self, forKey: .key)
                
                description = try? container.decode(String.self, forKey: .description)
                
                display = try? container.decode(String.self, forKey: .display)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
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
            
            public var attributesMetadata: [AttributeDetail]?
            
            public var subtitle: String?
            
            public var title: String?
            
            public var items: [ProductDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case attributesMetadata = "attributes_metadata"
                
                case subtitle = "subtitle"
                
                case title = "title"
                
                case items = "items"
                
            }

            public init(attributesMetadata: [AttributeDetail]?, items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.attributesMetadata = attributesMetadata
                
                self.subtitle = subtitle
                
                self.title = title
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
                
                subtitle = try? container.decode(String.self, forKey: .subtitle)
                
                title = try? container.decode(String.self, forKey: .title)
                
                items = try? container.decode([ProductDetail].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
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

            public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
                
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
            
            public var colorName: String?
            
            public var medias: [Media]?
            
            public var uid: Int?
            
            public var name: String?
            
            public var color: String?
            
            public var slug: String?
            
            public var value: String?
            
            public var action: ProductListingAction?
            
            public var isAvailable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case colorName = "color_name"
                
                case medias = "medias"
                
                case uid = "uid"
                
                case name = "name"
                
                case color = "color"
                
                case slug = "slug"
                
                case value = "value"
                
                case action = "action"
                
                case isAvailable = "is_available"
                
            }

            public init(action: ProductListingAction?, color: String?, colorName: String?, isAvailable: Bool?, medias: [Media]?, name: String?, slug: String?, uid: Int?, value: String?) {
                
                self.colorName = colorName
                
                self.medias = medias
                
                self.uid = uid
                
                self.name = name
                
                self.color = color
                
                self.slug = slug
                
                self.value = value
                
                self.action = action
                
                self.isAvailable = isAvailable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                colorName = try? container.decode(String.self, forKey: .colorName)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
                color = try? container.decode(String.self, forKey: .color)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                value = try? container.decode(String.self, forKey: .value)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(colorName, forKey: .colorName)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
            }
            
        }
        
        /*
            Model: ProductVariantResponse
            Used By: Catalog
        */
        struct ProductVariantResponse: Codable {
            
            public var displayType: String?
            
            public var items: [ProductVariantItemResponse]?
            
            public var header: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayType = "display_type"
                
                case items = "items"
                
                case header = "header"
                
            }

            public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?) {
                
                self.displayType = displayType
                
                self.items = items
                
                self.header = header
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                displayType = try? container.decode(String.self, forKey: .displayType)
                
                items = try? container.decode([ProductVariantItemResponse].self, forKey: .items)
                
                header = try? container.decode(String.self, forKey: .header)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(displayType, forKey: .displayType)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
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
            Model: StoreDetail
            Used By: Catalog
        */
        struct StoreDetail: Codable {
            
            public var city: String?
            
            public var code: String?
            
            public var name: String?
            
            public var id: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case city = "city"
                
                case code = "code"
                
                case name = "name"
                
                case id = "id"
                
            }

            public init(city: String?, code: String?, id: Int?, name: String?) {
                
                self.city = city
                
                self.code = code
                
                self.name = name
                
                self.id = id
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                city = try? container.decode(String.self, forKey: .city)
                
                code = try? container.decode(String.self, forKey: .code)
                
                name = try? container.decode(String.self, forKey: .name)
                
                id = try? container.decode(Int.self, forKey: .id)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
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

            public init(id: Int?, name: String?) {
                
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
            Model: ProductStockStatusItem
            Used By: Catalog
        */
        struct ProductStockStatusItem: Codable {
            
            public var identifier: [String: Any]?
            
            public var store: StoreDetail?
            
            public var quantity: Int?
            
            public var price: ProductStockPrice?
            
            public var uid: String?
            
            public var company: CompanyDetail?
            
            public var seller: Seller?
            
            public var itemId: Int?
            
            public var size: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifier = "identifier"
                
                case store = "store"
                
                case quantity = "quantity"
                
                case price = "price"
                
                case uid = "uid"
                
                case company = "company"
                
                case seller = "seller"
                
                case itemId = "item_id"
                
                case size = "size"
                
            }

            public init(company: CompanyDetail?, identifier: [String: Any]?, itemId: Int?, price: ProductStockPrice?, quantity: Int?, seller: Seller?, size: String?, store: StoreDetail?, uid: String?) {
                
                self.identifier = identifier
                
                self.store = store
                
                self.quantity = quantity
                
                self.price = price
                
                self.uid = uid
                
                self.company = company
                
                self.seller = seller
                
                self.itemId = itemId
                
                self.size = size
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                identifier = try? container.decode([String: Any].self, forKey: .identifier)
                
                store = try? container.decode(StoreDetail.self, forKey: .store)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                price = try? container.decode(ProductStockPrice.self, forKey: .price)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                company = try? container.decode(CompanyDetail.self, forKey: .company)
                
                seller = try? container.decode(Seller.self, forKey: .seller)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                size = try? container.decode(String.self, forKey: .size)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
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

            public init(items: [ProductStockStatusItem]?, page: Page?) {
                
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
            Model: ProductSortOn
            Used By: Catalog
        */
        struct ProductSortOn: Codable {
            
            public var value: String?
            
            public var name: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case name = "name"
                
                case isSelected = "is_selected"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.value = value
                
                self.name = name
                
                self.isSelected = isSelected
                
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
            Model: ProductFiltersKey
            Used By: Catalog
        */
        struct ProductFiltersKey: Codable {
            
            public var display: String
            
            public var logo: String?
            
            public var kind: String?
            
            public var name: String
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case logo = "logo"
                
                case kind = "kind"
                
                case name = "name"
                
            }

            public init(display: String, kind: String?, logo: String?, name: String) {
                
                self.display = display
                
                self.logo = logo
                
                self.kind = kind
                
                self.name = name
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                display = try container.decode(String.self, forKey: .display)
                
                logo = try? container.decode(String.self, forKey: .logo)
                
                kind = try? container.decode(String.self, forKey: .kind)
                
                name = try container.decode(String.self, forKey: .name)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(kind, forKey: .kind)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
            }
            
        }
        
        /*
            Model: ProductFiltersValue
            Used By: Catalog
        */
        struct ProductFiltersValue: Codable {
            
            public var min: Int?
            
            public var currencySymbol: String?
            
            public var queryFormat: String?
            
            public var count: Int?
            
            public var max: Int?
            
            public var display: String
            
            public var currencyCode: String?
            
            public var displayFormat: String?
            
            public var value: String
            
            public var selectedMin: Int?
            
            public var selectedMax: Int?
            
            public var isSelected: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case currencySymbol = "currency_symbol"
                
                case queryFormat = "query_format"
                
                case count = "count"
                
                case max = "max"
                
                case display = "display"
                
                case currencyCode = "currency_code"
                
                case displayFormat = "display_format"
                
                case value = "value"
                
                case selectedMin = "selected_min"
                
                case selectedMax = "selected_max"
                
                case isSelected = "is_selected"
                
            }

            public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String) {
                
                self.min = min
                
                self.currencySymbol = currencySymbol
                
                self.queryFormat = queryFormat
                
                self.count = count
                
                self.max = max
                
                self.display = display
                
                self.currencyCode = currencyCode
                
                self.displayFormat = displayFormat
                
                self.value = value
                
                self.selectedMin = selectedMin
                
                self.selectedMax = selectedMax
                
                self.isSelected = isSelected
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                min = try? container.decode(Int.self, forKey: .min)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                queryFormat = try? container.decode(String.self, forKey: .queryFormat)
                
                count = try? container.decode(Int.self, forKey: .count)
                
                max = try? container.decode(Int.self, forKey: .max)
                
                display = try container.decode(String.self, forKey: .display)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                displayFormat = try? container.decode(String.self, forKey: .displayFormat)
                
                value = try container.decode(String.self, forKey: .value)
                
                selectedMin = try? container.decode(Int.self, forKey: .selectedMin)
                
                selectedMax = try? container.decode(Int.self, forKey: .selectedMax)
                
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
                
                try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
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
            Model: ProductListingDetail
            Used By: Catalog
        */
        struct ProductListingDetail: Codable {
            
            public var tryouts: [String]?
            
            public var productOnlineDate: String?
            
            public var hasVariant: Bool?
            
            public var highlights: [String]?
            
            public var price: ProductListingPrice?
            
            public var sellable: Bool?
            
            public var teaserTag: String?
            
            public var itemType: String?
            
            public var name: String?
            
            public var rating: Double?
            
            public var description: String?
            
            public var attributes: [String: Any]?
            
            public var discount: String?
            
            public var medias: [Media]?
            
            public var uid: Int?
            
            public var type: String?
            
            public var color: String?
            
            public var shortDescription: String?
            
            public var ratingCount: Int?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var brand: ProductBrand?
            
            public var imageNature: String?
            
            public var similars: [String]?
            
            public var categories: [ProductBrand]?
            
            public var slug: String
            

            public enum CodingKeys: String, CodingKey {
                
                case tryouts = "tryouts"
                
                case productOnlineDate = "product_online_date"
                
                case hasVariant = "has_variant"
                
                case highlights = "highlights"
                
                case price = "price"
                
                case sellable = "sellable"
                
                case teaserTag = "teaser_tag"
                
                case itemType = "item_type"
                
                case name = "name"
                
                case rating = "rating"
                
                case description = "description"
                
                case attributes = "attributes"
                
                case discount = "discount"
                
                case medias = "medias"
                
                case uid = "uid"
                
                case type = "type"
                
                case color = "color"
                
                case shortDescription = "short_description"
                
                case ratingCount = "rating_count"
                
                case groupedAttributes = "grouped_attributes"
                
                case brand = "brand"
                
                case imageNature = "image_nature"
                
                case similars = "similars"
                
                case categories = "categories"
                
                case slug = "slug"
                
            }

            public init(attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?) {
                
                self.tryouts = tryouts
                
                self.productOnlineDate = productOnlineDate
                
                self.hasVariant = hasVariant
                
                self.highlights = highlights
                
                self.price = price
                
                self.sellable = sellable
                
                self.teaserTag = teaserTag
                
                self.itemType = itemType
                
                self.name = name
                
                self.rating = rating
                
                self.description = description
                
                self.attributes = attributes
                
                self.discount = discount
                
                self.medias = medias
                
                self.uid = uid
                
                self.type = type
                
                self.color = color
                
                self.shortDescription = shortDescription
                
                self.ratingCount = ratingCount
                
                self.groupedAttributes = groupedAttributes
                
                self.brand = brand
                
                self.imageNature = imageNature
                
                self.similars = similars
                
                self.categories = categories
                
                self.slug = slug
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                tryouts = try? container.decode([String].self, forKey: .tryouts)
                
                productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
                
                hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
                
                highlights = try? container.decode([String].self, forKey: .highlights)
                
                price = try? container.decode(ProductListingPrice.self, forKey: .price)
                
                sellable = try? container.decode(Bool.self, forKey: .sellable)
                
                teaserTag = try? container.decode(String.self, forKey: .teaserTag)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                name = try? container.decode(String.self, forKey: .name)
                
                rating = try? container.decode(Double.self, forKey: .rating)
                
                description = try? container.decode(String.self, forKey: .description)
                
                attributes = try? container.decode([String: Any].self, forKey: .attributes)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                type = try? container.decode(String.self, forKey: .type)
                
                color = try? container.decode(String.self, forKey: .color)
                
                shortDescription = try? container.decode(String.self, forKey: .shortDescription)
                
                ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
                
                groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
                brand = try? container.decode(ProductBrand.self, forKey: .brand)
                
                imageNature = try? container.decode(String.self, forKey: .imageNature)
                
                similars = try? container.decode([String].self, forKey: .similars)
                
                categories = try? container.decode([ProductBrand].self, forKey: .categories)
                
                slug = try container.decode(String.self, forKey: .slug)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
            }
            
        }
        
        /*
            Model: ProductListingResponse
            Used By: Catalog
        */
        struct ProductListingResponse: Codable {
            
            public var sortOn: [ProductSortOn]?
            
            public var filters: [ProductFilters]?
            
            public var page: Page?
            
            public var items: [ProductListingDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sortOn = "sort_on"
                
                case filters = "filters"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page?, sortOn: [ProductSortOn]?) {
                
                self.sortOn = sortOn
                
                self.filters = filters
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                sortOn = try? container.decode([ProductSortOn].self, forKey: .sortOn)
                
                filters = try? container.decode([ProductFilters].self, forKey: .filters)
                
                page = try? container.decode(Page.self, forKey: .page)
                
                items = try? container.decode([ProductListingDetail].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
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
            
            public var discount: String?
            
            public var uid: Int?
            
            public var name: String?
            
            public var departments: [String]?
            
            public var slug: String?
            
            public var action: ProductListingAction?
            
            public var banners: ImageUrls?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case uid = "uid"
                
                case name = "name"
                
                case departments = "departments"
                
                case slug = "slug"
                
                case action = "action"
                
                case banners = "banners"
                
                case logo = "logo"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
                
                self.discount = discount
                
                self.uid = uid
                
                self.name = name
                
                self.departments = departments
                
                self.slug = slug
                
                self.action = action
                
                self.banners = banners
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
                departments = try? container.decode([String].self, forKey: .departments)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
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

            public init(items: [BrandItem]?, page: Page?) {
                
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
            
            public var banners: ImageUrls?
            
            public var logo: Media?
            
            public var uid: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case banners = "banners"
                
                case logo = "logo"
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.banners = banners
                
                self.logo = logo
                
                self.uid = uid
                
                self.name = name
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
            }
            
        }
        
        /*
            Model: CategoryItems
            Used By: Catalog
        */
        struct CategoryItems: Codable {
            
            public var uid: Int?
            
            public var name: String?
            
            public var slug: String?
            
            public var action: ProductListingAction?
            
            public var banners: ImageUrls?
            
            public var childs: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
                case slug = "slug"
                
                case action = "action"
                
                case banners = "banners"
                
                case childs = "childs"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?) {
                
                self.uid = uid
                
                self.name = name
                
                self.slug = slug
                
                self.action = action
                
                self.banners = banners
                
                self.childs = childs
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                childs = try? container.decode([[String: Any]].self, forKey: .childs)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
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

            public init(department: String?, items: [CategoryItems]?) {
                
                self.items = items
                
                self.department = department
                
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
            Model: CategoryListingResponse
            Used By: Catalog
        */
        struct CategoryListingResponse: Codable {
            
            public var data: [DepartmentCategoryTree]?
            
            public var departments: [DepartmentIdentifier]?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case departments = "departments"
                
            }

            public init(data: [DepartmentCategoryTree]?, departments: [DepartmentIdentifier]?) {
                
                self.data = data
                
                self.departments = departments
                
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
            Model: CategoryMetaResponse
            Used By: Catalog
        */
        struct CategoryMetaResponse: Codable {
            
            public var banners: ImageUrls?
            
            public var logo: Media?
            
            public var uid: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case banners = "banners"
                
                case logo = "logo"
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.banners = banners
                
                self.logo = logo
                
                self.uid = uid
                
                self.name = name
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
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

            public init(items: [ProductListingDetail]?, message: String?, page: Page?) {
                
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
            
            public var name: String?
            
            public var slug: String?
            
            public var priorityOrder: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
                case slug = "slug"
                
                case priorityOrder = "priority_order"
                
                case logo = "logo"
                
            }

            public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
                
                self.uid = uid
                
                self.name = name
                
                self.slug = slug
                
                self.priorityOrder = priorityOrder
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                name = try? container.decode(String.self, forKey: .name)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
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
            
            public var type: String?
            
            public var logo: Media?
            
            public var display: String?
            
            public var action: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case logo = "logo"
                
                case display = "display"
                
                case action = "action"
                
            }

            public init(action: [String: Any]?, display: String?, logo: Media?, type: String?) {
                
                self.type = type
                
                self.logo = logo
                
                self.display = display
                
                self.action = action
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                type = try? container.decode(String.self, forKey: .type)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                display = try? container.decode(String.self, forKey: .display)
                
                action = try? container.decode([String: Any].self, forKey: .action)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
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
            
            public var display: String?
            
            public var name: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case name = "name"
                
                case isSelected = "is_selected"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.display = display
                
                self.name = name
                
                self.isSelected = isSelected
                
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
            Model: CollectionListingFilterTag
            Used By: Catalog
        */
        struct CollectionListingFilterTag: Codable {
            
            public var display: String?
            
            public var name: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case name = "name"
                
                case isSelected = "is_selected"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.display = display
                
                self.name = name
                
                self.isSelected = isSelected
                
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
            
            public var type: [CollectionListingFilterType]?
            
            public var tags: [CollectionListingFilterTag]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case tags = "tags"
                
            }

            public init(tags: [CollectionListingFilterTag]?, type: [CollectionListingFilterType]?) {
                
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
            
            public var allowSort: Bool?
            
            public var banners: ImageUrls?
            
            public var logo: Media?
            
            public var isActive: Bool?
            
            public var name: String?
            
            public var query: [String: Any]?
            
            public var cron: [String: Any]?
            
            public var visibleFacetsKeys: [String]?
            
            public var description: String?
            
            public var meta: [String: Any]?
            
            public var schedule: [String: Any]?
            
            public var uid: String?
            
            public var type: String?
            
            public var badge: [String: Any]?
            
            public var action: ProductListingAction?
            
            public var appId: String?
            
            public var tag: [String]?
            
            public var allowFacets: Bool?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case allowSort = "allow_sort"
                
                case banners = "banners"
                
                case logo = "logo"
                
                case isActive = "is_active"
                
                case name = "name"
                
                case query = "query"
                
                case cron = "cron"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case description = "description"
                
                case meta = "meta"
                
                case schedule = "_schedule"
                
                case uid = "uid"
                
                case type = "type"
                
                case badge = "badge"
                
                case action = "action"
                
                case appId = "app_id"
                
                case tag = "tag"
                
                case allowFacets = "allow_facets"
                
                case slug = "slug"
                
            }

            public init(action: ProductListingAction?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.allowSort = allowSort
                
                self.banners = banners
                
                self.logo = logo
                
                self.isActive = isActive
                
                self.name = name
                
                self.query = query
                
                self.cron = cron
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.description = description
                
                self.meta = meta
                
                self.schedule = schedule
                
                self.uid = uid
                
                self.type = type
                
                self.badge = badge
                
                self.action = action
                
                self.appId = appId
                
                self.tag = tag
                
                self.allowFacets = allowFacets
                
                self.slug = slug
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                allowSort = try? container.decode(Bool.self, forKey: .allowSort)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                name = try? container.decode(String.self, forKey: .name)
                
                query = try? container.decode([String: Any].self, forKey: .query)
                
                cron = try? container.decode([String: Any].self, forKey: .cron)
                
                visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
                
                description = try? container.decode(String.self, forKey: .description)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                schedule = try? container.decode([String: Any].self, forKey: .schedule)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                type = try? container.decode(String.self, forKey: .type)
                
                badge = try? container.decode([String: Any].self, forKey: .badge)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                appId = try? container.decode(String.self, forKey: .appId)
                
                tag = try? container.decode([String].self, forKey: .tag)
                
                allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
            }
            
        }
        
        /*
            Model: GetCollectionListingResponse
            Used By: Catalog
        */
        struct GetCollectionListingResponse: Codable {
            
            public var filters: CollectionListingFilter?
            
            public var page: Page?
            
            public var items: [GetCollectionDetailNest]?
            

            public enum CodingKeys: String, CodingKey {
                
                case filters = "filters"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page?) {
                
                self.filters = filters
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                filters = try? container.decode(CollectionListingFilter.self, forKey: .filters)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            Model: CollectionDetailResponse
            Used By: Catalog
        */
        struct CollectionDetailResponse: Codable {
            
            public var appId: String?
            
            public var schedule: [String: Any]?
            
            public var tag: [String]?
            
            public var isActive: Bool?
            
            public var name: String?
            
            public var type: String?
            
            public var query: [String: Any]?
            
            public var allowSort: Bool?
            
            public var allowFacets: Bool?
            
            public var slug: String?
            
            public var cron: [String: Any]?
            
            public var logo: Media?
            
            public var banners: ImageUrls?
            
            public var description: String?
            
            public var visibleFacetsKeys: [String]?
            
            public var meta: [String: Any]?
            
            public var badge: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
                case schedule = "_schedule"
                
                case tag = "tag"
                
                case isActive = "is_active"
                
                case name = "name"
                
                case type = "type"
                
                case query = "query"
                
                case allowSort = "allow_sort"
                
                case allowFacets = "allow_facets"
                
                case slug = "slug"
                
                case cron = "cron"
                
                case logo = "logo"
                
                case banners = "banners"
                
                case description = "description"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case meta = "meta"
                
                case badge = "badge"
                
            }

            public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.appId = appId
                
                self.schedule = schedule
                
                self.tag = tag
                
                self.isActive = isActive
                
                self.name = name
                
                self.type = type
                
                self.query = query
                
                self.allowSort = allowSort
                
                self.allowFacets = allowFacets
                
                self.slug = slug
                
                self.cron = cron
                
                self.logo = logo
                
                self.banners = banners
                
                self.description = description
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.meta = meta
                
                self.badge = badge
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                appId = try? container.decode(String.self, forKey: .appId)
                
                schedule = try? container.decode([String: Any].self, forKey: .schedule)
                
                tag = try? container.decode([String].self, forKey: .tag)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                name = try? container.decode(String.self, forKey: .name)
                
                type = try? container.decode(String.self, forKey: .type)
                
                query = try? container.decode([String: Any].self, forKey: .query)
                
                allowSort = try? container.decode(Bool.self, forKey: .allowSort)
                
                allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                cron = try? container.decode([String: Any].self, forKey: .cron)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                description = try? container.decode(String.self, forKey: .description)
                
                visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                badge = try? container.decode([String: Any].self, forKey: .badge)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
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

            public init(items: [[String: Any]], page: Page) {
                
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

            public init(id: String, message: String) {
                
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
            
            public var collections: [Int]?
            
            public var products: [Int]?
            
            public var brands: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case collections = "collections"
                
                case products = "products"
                
                case brands = "brands"
                
            }

            public init(brands: [Int]?, collections: [Int]?, products: [Int]?) {
                
                self.collections = collections
                
                self.products = products
                
                self.brands = brands
                
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

            public init(coordinates: [Double]?, type: String?) {
                
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
            
            public var storeCode: String?
            
            public var country: String?
            
            public var address: String?
            
            public var storeEmail: String?
            
            public var name: String?
            
            public var uid: Int?
            
            public var state: String?
            
            public var pincode: Int?
            
            public var city: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case latLong = "lat_long"
                
                case storeCode = "store_code"
                
                case country = "country"
                
                case address = "address"
                
                case storeEmail = "store_email"
                
                case name = "name"
                
                case uid = "uid"
                
                case state = "state"
                
                case pincode = "pincode"
                
                case city = "city"
                
            }

            public init(address: String?, city: String?, country: String?, latLong: LatLong?, name: String?, pincode: Int?, state: String?, storeCode: String?, storeEmail: String?, uid: Int?) {
                
                self.latLong = latLong
                
                self.storeCode = storeCode
                
                self.country = country
                
                self.address = address
                
                self.storeEmail = storeEmail
                
                self.name = name
                
                self.uid = uid
                
                self.state = state
                
                self.pincode = pincode
                
                self.city = city
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                latLong = try? container.decode(LatLong.self, forKey: .latLong)
                
                storeCode = try? container.decode(String.self, forKey: .storeCode)
                
                country = try? container.decode(String.self, forKey: .country)
                
                address = try? container.decode(String.self, forKey: .address)
                
                storeEmail = try? container.decode(String.self, forKey: .storeEmail)
                
                name = try? container.decode(String.self, forKey: .name)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                state = try? container.decode(String.self, forKey: .state)
                
                pincode = try? container.decode(Int.self, forKey: .pincode)
                
                city = try? container.decode(String.self, forKey: .city)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
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

            public init(items: [Store1]?, page: Page?) {
                
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
            Model: CartProductIdentifer
            Used By: Cart
        */
        struct CartProductIdentifer: Codable {
            
            public var identifier: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifier = "identifier"
                
            }

            public init(identifier: String?) {
                
                self.identifier = identifier
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                identifier = try? container.decode(String.self, forKey: .identifier)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
            }
            
        }
        
        /*
            Model: CategoryInfo
            Used By: Cart
        */
        struct CategoryInfo: Codable {
            
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

            public init(query: ActionQuery?, type: String?, url: String?) {
                
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
            
            public var aspectRatio: String?
            
            public var secureUrl: String?
            
            public var url: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aspectRatio = "aspect_ratio"
                
                case secureUrl = "secure_url"
                
                case url = "url"
                
            }

            public init(aspectRatio: String?, secureUrl: String?, url: String?) {
                
                self.aspectRatio = aspectRatio
                
                self.secureUrl = secureUrl
                
                self.url = url
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
                
                secureUrl = try? container.decode(String.self, forKey: .secureUrl)
                
                url = try? container.decode(String.self, forKey: .url)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
                
                try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
            }
            
        }
        
        /*
            Model: Product
            Used By: Cart
        */
        struct Product: Codable {
            
            public var categories: [CategoryInfo]?
            
            public var brand: BaseInfo?
            
            public var action: Action?
            
            public var type: String?
            
            public var uid: Int?
            
            public var images: [Image]?
            
            public var name: String?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case categories = "categories"
                
                case brand = "brand"
                
                case action = "action"
                
                case type = "type"
                
                case uid = "uid"
                
                case images = "images"
                
                case name = "name"
                
                case slug = "slug"
                
            }

            public init(action: Action?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [Image]?, name: String?, slug: String?, type: String?, uid: Int?) {
                
                self.categories = categories
                
                self.brand = brand
                
                self.action = action
                
                self.type = type
                
                self.uid = uid
                
                self.images = images
                
                self.name = name
                
                self.slug = slug
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                categories = try? container.decode([CategoryInfo].self, forKey: .categories)
                
                brand = try? container.decode(BaseInfo.self, forKey: .brand)
                
                action = try? container.decode(Action.self, forKey: .action)
                
                type = try? container.decode(String.self, forKey: .type)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                images = try? container.decode([Image].self, forKey: .images)
                
                name = try? container.decode(String.self, forKey: .name)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
            }
            
        }
        
        /*
            Model: ArticlePriceInfo
            Used By: Cart
        */
        struct ArticlePriceInfo: Codable {
            
            public var base: Price?
            
            public var converted: Price?
            

            public enum CodingKeys: String, CodingKey {
                
                case base = "base"
                
                case converted = "converted"
                
            }

            public init(base: Price?, converted: Price?) {
                
                self.base = base
                
                self.converted = converted
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                base = try? container.decode(Price.self, forKey: .base)
                
                converted = try? container.decode(Price.self, forKey: .converted)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(base, forKey: .base)
                
                try? container.encodeIfPresent(converted, forKey: .converted)
                
            }
            
        }
        
        /*
            Model: ProductArticle
            Used By: Cart
        */
        struct ProductArticle: Codable {
            
            public var size: String?
            
            public var seller: BaseInfo?
            
            public var type: String?
            
            public var uid: String?
            
            public var quantity: Int?
            
            public var price: ArticlePriceInfo?
            
            public var store: BaseInfo?
            

            public enum CodingKeys: String, CodingKey {
                
                case size = "size"
                
                case seller = "seller"
                
                case type = "type"
                
                case uid = "uid"
                
                case quantity = "quantity"
                
                case price = "price"
                
                case store = "store"
                
            }

            public init(price: ArticlePriceInfo?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
                
                self.size = size
                
                self.seller = seller
                
                self.type = type
                
                self.uid = uid
                
                self.quantity = quantity
                
                self.price = price
                
                self.store = store
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                size = try? container.decode(String.self, forKey: .size)
                
                seller = try? container.decode(BaseInfo.self, forKey: .seller)
                
                type = try? container.decode(String.self, forKey: .type)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                price = try? container.decode(ArticlePriceInfo.self, forKey: .price)
                
                store = try? container.decode(BaseInfo.self, forKey: .store)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
            }
            
        }
        
        /*
            Model: ProductAvailability
            Used By: Cart
        */
        struct ProductAvailability: Codable {
            
            public var outOfStock: Bool?
            
            public var isValid: Bool?
            
            public var deliverable: Bool?
            
            public var otherStoreQuantity: Int?
            
            public var sizes: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case outOfStock = "out_of_stock"
                
                case isValid = "is_valid"
                
                case deliverable = "deliverable"
                
                case otherStoreQuantity = "other_store_quantity"
                
                case sizes = "sizes"
                
            }

            public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
                
                self.outOfStock = outOfStock
                
                self.isValid = isValid
                
                self.deliverable = deliverable
                
                self.otherStoreQuantity = otherStoreQuantity
                
                self.sizes = sizes
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                deliverable = try? container.decode(Bool.self, forKey: .deliverable)
                
                otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
                
                sizes = try? container.decode([String].self, forKey: .sizes)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(deliverable, forKey: .deliverable)
                
                try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
            }
            
        }
        
        /*
            Model: ProductPrice
            Used By: Cart
        */
        struct ProductPrice: Codable {
            
            public var marked: Double?
            
            public var currencySymbol: String?
            
            public var effective: Double?
            
            public var addOn: Double?
            
            public var selling: Double?
            
            public var currencyCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case effective = "effective"
                
                case addOn = "add_on"
                
                case selling = "selling"
                
                case currencyCode = "currency_code"
                
            }

            public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.effective = effective
                
                self.addOn = addOn
                
                self.selling = selling
                
                self.currencyCode = currencyCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                marked = try? container.decode(Double.self, forKey: .marked)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                effective = try? container.decode(Double.self, forKey: .effective)
                
                addOn = try? container.decode(Double.self, forKey: .addOn)
                
                selling = try? container.decode(Double.self, forKey: .selling)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(addOn, forKey: .addOn)
                
                try? container.encodeIfPresent(selling, forKey: .selling)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
            }
            
        }
        
        /*
            Model: ProductPriceInfo
            Used By: Cart
        */
        struct ProductPriceInfo: Codable {
            
            public var base: ProductPrice?
            
            public var converted: ProductPrice?
            

            public enum CodingKeys: String, CodingKey {
                
                case base = "base"
                
                case converted = "converted"
                
            }

            public init(base: ProductPrice?, converted: ProductPrice?) {
                
                self.base = base
                
                self.converted = converted
                
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
            Model: CartProductInfo
            Used By: Cart
        */
        struct CartProductInfo: Codable {
            
            public var identifiers: CartProductIdentifer
            
            public var product: Product?
            
            public var discount: String?
            
            public var key: String?
            
            public var article: ProductArticle?
            
            public var bulkOffer: [String: Any]?
            
            public var availability: ProductAvailability?
            
            public var quantity: Int?
            
            public var message: String?
            
            public var price: ProductPriceInfo?
            
            public var couponMessage: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifiers = "identifiers"
                
                case product = "product"
                
                case discount = "discount"
                
                case key = "key"
                
                case article = "article"
                
                case bulkOffer = "bulk_offer"
                
                case availability = "availability"
                
                case quantity = "quantity"
                
                case message = "message"
                
                case price = "price"
                
                case couponMessage = "coupon_message"
                
            }

            public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, key: String?, message: String?, price: ProductPriceInfo?, product: Product?, quantity: Int?) {
                
                self.identifiers = identifiers
                
                self.product = product
                
                self.discount = discount
                
                self.key = key
                
                self.article = article
                
                self.bulkOffer = bulkOffer
                
                self.availability = availability
                
                self.quantity = quantity
                
                self.message = message
                
                self.price = price
                
                self.couponMessage = couponMessage
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                product = try? container.decode(Product.self, forKey: .product)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                key = try? container.decode(String.self, forKey: .key)
                
                article = try? container.decode(ProductArticle.self, forKey: .article)
                
                bulkOffer = try? container.decode([String: Any].self, forKey: .bulkOffer)
                
                availability = try? container.decode(ProductAvailability.self, forKey: .availability)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                message = try? container.decode(String.self, forKey: .message)
                
                price = try? container.decode(ProductPriceInfo.self, forKey: .price)
                
                couponMessage = try? container.decode(String.self, forKey: .couponMessage)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                try? container.encodeIfPresent(product, forKey: .product)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(article, forKey: .article)
                
                try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
                
                try? container.encodeIfPresent(availability, forKey: .availability)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
                
            }
            
        }
        
        /*
            Model: DisplayBreakup
            Used By: Cart
        */
        struct DisplayBreakup: Codable {
            
            public var display: String?
            
            public var currencySymbol: String?
            
            public var key: String?
            
            public var value: Double?
            
            public var message: [String]?
            
            public var currencyCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case currencySymbol = "currency_symbol"
                
                case key = "key"
                
                case value = "value"
                
                case message = "message"
                
                case currencyCode = "currency_code"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
                
                self.display = display
                
                self.currencySymbol = currencySymbol
                
                self.key = key
                
                self.value = value
                
                self.message = message
                
                self.currencyCode = currencyCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                display = try? container.decode(String.self, forKey: .display)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                key = try? container.decode(String.self, forKey: .key)
                
                value = try? container.decode(Double.self, forKey: .value)
                
                message = try? container.decode([String].self, forKey: .message)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
            }
            
        }
        
        /*
            Model: RawBreakup
            Used By: Cart
        */
        struct RawBreakup: Codable {
            
            public var fyndCash: Double?
            
            public var total: Double?
            
            public var deliveryCharge: Double?
            
            public var subtotal: Double?
            
            public var codCharge: Double?
            
            public var coupon: Double?
            
            public var youSaved: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case fyndCash = "fynd_cash"
                
                case total = "total"
                
                case deliveryCharge = "delivery_charge"
                
                case subtotal = "subtotal"
                
                case codCharge = "cod_charge"
                
                case coupon = "coupon"
                
                case youSaved = "you_saved"
                
            }

            public init(codCharge: Double?, coupon: Double?, deliveryCharge: Double?, fyndCash: Double?, subtotal: Double?, total: Double?, youSaved: Double?) {
                
                self.fyndCash = fyndCash
                
                self.total = total
                
                self.deliveryCharge = deliveryCharge
                
                self.subtotal = subtotal
                
                self.codCharge = codCharge
                
                self.coupon = coupon
                
                self.youSaved = youSaved
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
                
                subtotal = try? container.decode(Double.self, forKey: .subtotal)
                
                codCharge = try? container.decode(Double.self, forKey: .codCharge)
                
                coupon = try? container.decode(Double.self, forKey: .coupon)
                
                youSaved = try? container.decode(Double.self, forKey: .youSaved)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                try? container.encodeIfPresent(subtotal, forKey: .subtotal)
                
                try? container.encodeIfPresent(codCharge, forKey: .codCharge)
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                try? container.encodeIfPresent(youSaved, forKey: .youSaved)
                
            }
            
        }
        
        /*
            Model: CouponBreakup
            Used By: Cart
        */
        struct CouponBreakup: Codable {
            
            public var isApplied: Bool?
            
            public var code: String?
            
            public var value: Double?
            
            public var type: String?
            
            public var uid: Int?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isApplied = "is_applied"
                
                case code = "code"
                
                case value = "value"
                
                case type = "type"
                
                case uid = "uid"
                
                case message = "message"
                
            }

            public init(code: String?, isApplied: Bool?, message: String?, type: String?, uid: Int?, value: Double?) {
                
                self.isApplied = isApplied
                
                self.code = code
                
                self.value = value
                
                self.type = type
                
                self.uid = uid
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
                code = try? container.decode(String.self, forKey: .code)
                
                value = try? container.decode(Double.self, forKey: .value)
                
                type = try? container.decode(String.self, forKey: .type)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                message = try? container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: LoyaltyPoints
            Used By: Cart
        */
        struct LoyaltyPoints: Codable {
            
            public var total: Double?
            
            public var applicable: Double?
            
            public var description: String?
            
            public var isApplied: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case total = "total"
                
                case applicable = "applicable"
                
                case description = "description"
                
                case isApplied = "is_applied"
                
            }

            public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
                
                self.total = total
                
                self.applicable = applicable
                
                self.description = description
                
                self.isApplied = isApplied
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                applicable = try? container.decode(Double.self, forKey: .applicable)
                
                description = try? container.decode(String.self, forKey: .description)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(applicable, forKey: .applicable)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
            }
            
        }
        
        /*
            Model: CartBreakup
            Used By: Cart
        */
        struct CartBreakup: Codable {
            
            public var display: [DisplayBreakup]?
            
            public var raw: RawBreakup?
            
            public var coupon: CouponBreakup?
            
            public var loyaltyPoints: LoyaltyPoints?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case raw = "raw"
                
                case coupon = "coupon"
                
                case loyaltyPoints = "loyalty_points"
                
            }

            public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
                
                self.display = display
                
                self.raw = raw
                
                self.coupon = coupon
                
                self.loyaltyPoints = loyaltyPoints
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                display = try? container.decode([DisplayBreakup].self, forKey: .display)
                
                raw = try? container.decode(RawBreakup.self, forKey: .raw)
                
                coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
                
                loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(raw, forKey: .raw)
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
                
            }
            
        }
        
        /*
            Model: CartCurrency
            Used By: Cart
        */
        struct CartCurrency: Codable {
            
            public var code: String?
            
            public var symbol: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case symbol = "symbol"
                
            }

            public init(code: String?, symbol: String?) {
                
                self.code = code
                
                self.symbol = symbol
                
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
            Model: PaymentFlow
            Used By: Cart
        */
        struct PaymentFlow: Codable {
            
            public var data: [String: Any]?
            
            public var paymentFlow: String?
            
            public var apiLink: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case paymentFlow = "payment_flow"
                
                case apiLink = "api_link"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?) {
                
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
            Model: PaymentFlows
            Used By: Cart
        */
        struct PaymentFlows: Codable {
            
            public var fynd: PaymentFlow?
            
            public var juspay: PaymentFlow?
            
            public var razorpay: PaymentFlow?
            
            public var simpl: PaymentFlow?
            
            public var upiRazorpay: PaymentFlow?
            

            public enum CodingKeys: String, CodingKey {
                
                case fynd = "Fynd"
                
                case juspay = "Juspay"
                
                case razorpay = "Razorpay"
                
                case simpl = "Simpl"
                
                case upiRazorpay = "UPI_Razorpay"
                
            }

            public init(fynd: PaymentFlow?, juspay: PaymentFlow?, razorpay: PaymentFlow?, simpl: PaymentFlow?, upiRazorpay: PaymentFlow?) {
                
                self.fynd = fynd
                
                self.juspay = juspay
                
                self.razorpay = razorpay
                
                self.simpl = simpl
                
                self.upiRazorpay = upiRazorpay
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
                
                juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
                
                razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
                
                simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
                
                upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(fynd, forKey: .fynd)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
                
            }
            
        }
        
        /*
            Model: PaymentOption
            Used By: Cart
        */
        struct PaymentOption: Codable {
            
            public var displayName: String?
            
            public var list: [[String: Any]]?
            
            public var paymentModeId: Int?
            
            public var name: String?
            
            public var displayPriority: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayName = "display_name"
                
                case list = "list"
                
                case paymentModeId = "payment_mode_id"
                
                case name = "name"
                
                case displayPriority = "display_priority"
                
            }

            public init(displayName: String?, displayPriority: Int?, list: [[String: Any]]?, name: String?, paymentModeId: Int?) {
                
                self.displayName = displayName
                
                self.list = list
                
                self.paymentModeId = paymentModeId
                
                self.name = name
                
                self.displayPriority = displayPriority
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                displayName = try? container.decode(String.self, forKey: .displayName)
                
                list = try? container.decode([[String: Any]].self, forKey: .list)
                
                paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
                
                name = try? container.decode(String.self, forKey: .name)
                
                displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
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

            public init(max: Int?, min: Int?) {
                
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

            public init(max: String?, min: String?) {
                
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

            public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
                
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
            Model: CartResponse
            Used By: Cart
        */
        struct CartResponse: Codable {
            
            public var items: [CartProductInfo]?
            
            public var breakupValues: CartBreakup?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var currency: CartCurrency?
            
            public var comment: String?
            
            public var restrictCheckout: Bool?
            
            public var uid: String?
            
            public var message: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var gstin: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var deliveryChargeInfo: String?
            
            public var cartId: Int?
            
            public var checkoutMode: String?
            
            public var couponText: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case breakupValues = "breakup_values"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case currency = "currency"
                
                case comment = "comment"
                
                case restrictCheckout = "restrict_checkout"
                
                case uid = "uid"
                
                case message = "message"
                
                case paymentOptions = "payment_options"
                
                case gstin = "gstin"
                
                case deliveryPromise = "delivery_promise"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case checkoutMode = "checkout_mode"
                
                case couponText = "coupon_text"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentOptions: PaymentOptions?, restrictCheckout: Bool?, uid: String?) {
                
                self.items = items
                
                self.breakupValues = breakupValues
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.currency = currency
                
                self.comment = comment
                
                self.restrictCheckout = restrictCheckout
                
                self.uid = uid
                
                self.message = message
                
                self.paymentOptions = paymentOptions
                
                self.gstin = gstin
                
                self.deliveryPromise = deliveryPromise
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.checkoutMode = checkoutMode
                
                self.couponText = couponText
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                message = try? container.decode(String.self, forKey: .message)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
            }
            
        }
        
        /*
            Model: AddProductCart
            Used By: Cart
        */
        struct AddProductCart: Codable {
            
            public var display: String?
            
            public var articleId: String?
            
            public var storeId: Int?
            
            public var itemSize: String?
            
            public var itemId: Int?
            
            public var pos: Bool?
            
            public var articleAssignment: [String: Any]?
            
            public var quantity: Int?
            
            public var sellerId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case articleId = "article_id"
                
                case storeId = "store_id"
                
                case itemSize = "item_size"
                
                case itemId = "item_id"
                
                case pos = "pos"
                
                case articleAssignment = "article_assignment"
                
                case quantity = "quantity"
                
                case sellerId = "seller_id"
                
            }

            public init(articleAssignment: [String: Any]?, articleId: String?, display: String?, itemId: Int?, itemSize: String?, pos: Bool?, quantity: Int?, sellerId: Int?, storeId: Int?) {
                
                self.display = display
                
                self.articleId = articleId
                
                self.storeId = storeId
                
                self.itemSize = itemSize
                
                self.itemId = itemId
                
                self.pos = pos
                
                self.articleAssignment = articleAssignment
                
                self.quantity = quantity
                
                self.sellerId = sellerId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                display = try? container.decode(String.self, forKey: .display)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                storeId = try? container.decode(Int.self, forKey: .storeId)
                
                itemSize = try? container.decode(String.self, forKey: .itemSize)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                pos = try? container.decode(Bool.self, forKey: .pos)
                
                articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                sellerId = try? container.decode(Int.self, forKey: .sellerId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(storeId, forKey: .storeId)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(sellerId, forKey: .sellerId)
                
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
            
            public var cart: CartResponse?
            
            public var success: Bool?
            
            public var message: String?
            
            public var partial: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case cart = "cart"
                
                case success = "success"
                
                case message = "message"
                
                case partial = "partial"
                
            }

            public init(cart: CartResponse?, message: String?, partial: Bool?, success: Bool?) {
                
                self.cart = cart
                
                self.success = success
                
                self.message = message
                
                self.partial = partial
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cart = try? container.decode(CartResponse.self, forKey: .cart)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                message = try? container.decode(String.self, forKey: .message)
                
                partial = try? container.decode(Bool.self, forKey: .partial)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(partial, forKey: .partial)
                
            }
            
        }
        
        /*
            Model: UpdateProductCart
            Used By: Cart
        */
        struct UpdateProductCart: Codable {
            
            public var identifiers: CartProductIdentifer
            
            public var articleId: String?
            
            public var itemSize: String?
            
            public var itemId: Int?
            
            public var itemIndex: Int?
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifiers = "identifiers"
                
                case articleId = "article_id"
                
                case itemSize = "item_size"
                
                case itemId = "item_id"
                
                case itemIndex = "item_index"
                
                case quantity = "quantity"
                
            }

            public init(articleId: String?, identifiers: CartProductIdentifer, itemId: Int?, itemIndex: Int?, itemSize: String?, quantity: Int?) {
                
                self.identifiers = identifiers
                
                self.articleId = articleId
                
                self.itemSize = itemSize
                
                self.itemId = itemId
                
                self.itemIndex = itemIndex
                
                self.quantity = quantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                itemSize = try? container.decode(String.self, forKey: .itemSize)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
                
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
            
            public var cart: CartResponse?
            
            public var success: Bool?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cart = "cart"
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(cart: CartResponse?, message: String?, success: Bool?) {
                
                self.cart = cart
                
                self.success = success
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cart = try? container.decode(CartResponse.self, forKey: .cart)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                message = try? container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
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
            
            public var hasNext: Bool?
            
            public var total: Int?
            
            public var totalItemCount: Int?
            
            public var current: Int?
            
            public var hasPrevious: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case hasNext = "has_next"
                
                case total = "total"
                
                case totalItemCount = "total_item_count"
                
                case current = "current"
                
                case hasPrevious = "has_previous"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, total: Int?, totalItemCount: Int?) {
                
                self.hasNext = hasNext
                
                self.total = total
                
                self.totalItemCount = totalItemCount
                
                self.current = current
                
                self.hasPrevious = hasPrevious
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                hasNext = try? container.decode(Bool.self, forKey: .hasNext)
                
                total = try? container.decode(Int.self, forKey: .total)
                
                totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
                
                current = try? container.decode(Int.self, forKey: .current)
                
                hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
            }
            
        }
        
        /*
            Model: Coupon
            Used By: Cart
        */
        struct Coupon: Codable {
            
            public var couponValue: Double?
            
            public var minimumCartValue: Double?
            
            public var expiresOn: String?
            
            public var isApplied: Bool?
            
            public var couponCode: String?
            
            public var maxDiscountValue: Double?
            
            public var title: String?
            
            public var uid: String?
            
            public var message: String?
            
            public var isApplicable: Bool?
            
            public var subTitle: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case couponValue = "coupon_value"
                
                case minimumCartValue = "minimum_cart_value"
                
                case expiresOn = "expires_on"
                
                case isApplied = "is_applied"
                
                case couponCode = "coupon_code"
                
                case maxDiscountValue = "max_discount_value"
                
                case title = "title"
                
                case uid = "uid"
                
                case message = "message"
                
                case isApplicable = "is_applicable"
                
                case subTitle = "sub_title"
                
            }

            public init(couponCode: String?, couponValue: Double?, expiresOn: String?, isApplicable: Bool?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?, uid: String?) {
                
                self.couponValue = couponValue
                
                self.minimumCartValue = minimumCartValue
                
                self.expiresOn = expiresOn
                
                self.isApplied = isApplied
                
                self.couponCode = couponCode
                
                self.maxDiscountValue = maxDiscountValue
                
                self.title = title
                
                self.uid = uid
                
                self.message = message
                
                self.isApplicable = isApplicable
                
                self.subTitle = subTitle
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                couponValue = try? container.decode(Double.self, forKey: .couponValue)
                
                minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
                
                expiresOn = try? container.decode(String.self, forKey: .expiresOn)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
                couponCode = try? container.decode(String.self, forKey: .couponCode)
                
                maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
                
                title = try? container.decode(String.self, forKey: .title)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                message = try? container.decode(String.self, forKey: .message)
                
                isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
                
                subTitle = try? container.decode(String.self, forKey: .subTitle)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
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

            public init(availableCouponList: [Coupon]?, page: PageCoupon?) {
                
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
            Model: OfferPrice
            Used By: Cart
        */
        struct OfferPrice: Codable {
            
            public var marked: Int?
            
            public var bulkEffective: Double?
            
            public var effective: Int?
            
            public var currencySymbol: String?
            
            public var currencyCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case marked = "marked"
                
                case bulkEffective = "bulk_effective"
                
                case effective = "effective"
                
                case currencySymbol = "currency_symbol"
                
                case currencyCode = "currency_code"
                
            }

            public init(bulkEffective: Double?, currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?) {
                
                self.marked = marked
                
                self.bulkEffective = bulkEffective
                
                self.effective = effective
                
                self.currencySymbol = currencySymbol
                
                self.currencyCode = currencyCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                marked = try? container.decode(Int.self, forKey: .marked)
                
                bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
                
                effective = try? container.decode(Int.self, forKey: .effective)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
            }
            
        }
        
        /*
            Model: OfferItem
            Used By: Cart
        */
        struct OfferItem: Codable {
            
            public var autoApplied: Bool?
            
            public var total: Double?
            
            public var type: String?
            
            public var quantity: Int?
            
            public var price: OfferPrice?
            
            public var margin: Int?
            
            public var best: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case autoApplied = "auto_applied"
                
                case total = "total"
                
                case type = "type"
                
                case quantity = "quantity"
                
                case price = "price"
                
                case margin = "margin"
                
                case best = "best"
                
            }

            public init(autoApplied: Bool?, best: Bool?, margin: Int?, price: OfferPrice?, quantity: Int?, total: Double?, type: String?) {
                
                self.autoApplied = autoApplied
                
                self.total = total
                
                self.type = type
                
                self.quantity = quantity
                
                self.price = price
                
                self.margin = margin
                
                self.best = best
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                type = try? container.decode(String.self, forKey: .type)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                price = try? container.decode(OfferPrice.self, forKey: .price)
                
                margin = try? container.decode(Int.self, forKey: .margin)
                
                best = try? container.decode(Bool.self, forKey: .best)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                try? container.encodeIfPresent(best, forKey: .best)
                
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
            Model: BulkPriceOffer
            Used By: Cart
        */
        struct BulkPriceOffer: Codable {
            
            public var offers: [OfferItem]?
            
            public var seller: OfferSeller?
            

            public enum CodingKeys: String, CodingKey {
                
                case offers = "offers"
                
                case seller = "seller"
                
            }

            public init(offers: [OfferItem]?, seller: OfferSeller?) {
                
                self.offers = offers
                
                self.seller = seller
                
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
            
            public var longitude: Double?
            
            public var latitude: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case longitude = "longitude"
                
                case latitude = "latitude"
                
            }

            public init(latitude: Double?, longitude: Double?) {
                
                self.longitude = longitude
                
                self.latitude = latitude
                
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
            Used By: Cart
        */
        struct Address: Codable {
            
            public var email: String?
            
            public var addressType: String?
            
            public var isDefaultAddress: Bool?
            
            public var userId: String?
            
            public var uid: Int?
            
            public var addressId: Int?
            
            public var checkoutMode: String?
            
            public var country: String?
            
            public var city: String?
            
            public var isActive: Bool?
            
            public var phone: String?
            
            public var meta: [String: Any]?
            
            public var area: String?
            
            public var state: String?
            
            public var tags: [[String: Any]]?
            
            public var name: String?
            
            public var areaCode: String?
            
            public var address: String?
            
            public var geoLocation: GeoLocation?
            
            public var countryCode: String?
            
            public var areaCodeSlug: String?
            
            public var landmark: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case addressType = "address_type"
                
                case isDefaultAddress = "is_default_address"
                
                case userId = "user_id"
                
                case uid = "uid"
                
                case addressId = "address_id"
                
                case checkoutMode = "checkout_mode"
                
                case country = "country"
                
                case city = "city"
                
                case isActive = "is_active"
                
                case phone = "phone"
                
                case meta = "meta"
                
                case area = "area"
                
                case state = "state"
                
                case tags = "tags"
                
                case name = "name"
                
                case areaCode = "area_code"
                
                case address = "address"
                
                case geoLocation = "geo_location"
                
                case countryCode = "country_code"
                
                case areaCodeSlug = "area_code_slug"
                
                case landmark = "landmark"
                
            }

            public init(address: String?, addressId: Int?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, checkoutMode: String?, city: String?, country: String?, countryCode: String?, email: String?, geoLocation: GeoLocation?, isActive: Bool?, isDefaultAddress: Bool?, landmark: String?, meta: [String: Any]?, name: String?, phone: String?, state: String?, tags: [[String: Any]]?, uid: Int?, userId: String?) {
                
                self.email = email
                
                self.addressType = addressType
                
                self.isDefaultAddress = isDefaultAddress
                
                self.userId = userId
                
                self.uid = uid
                
                self.addressId = addressId
                
                self.checkoutMode = checkoutMode
                
                self.country = country
                
                self.city = city
                
                self.isActive = isActive
                
                self.phone = phone
                
                self.meta = meta
                
                self.area = area
                
                self.state = state
                
                self.tags = tags
                
                self.name = name
                
                self.areaCode = areaCode
                
                self.address = address
                
                self.geoLocation = geoLocation
                
                self.countryCode = countryCode
                
                self.areaCodeSlug = areaCodeSlug
                
                self.landmark = landmark
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                email = try? container.decode(String.self, forKey: .email)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                country = try? container.decode(String.self, forKey: .country)
                
                city = try? container.decode(String.self, forKey: .city)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                phone = try? container.decode(String.self, forKey: .phone)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                area = try? container.decode(String.self, forKey: .area)
                
                state = try? container.decode(String.self, forKey: .state)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                name = try? container.decode(String.self, forKey: .name)
                
                areaCode = try? container.decode(String.self, forKey: .areaCode)
                
                address = try? container.decode(String.self, forKey: .address)
                
                geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
                
                countryCode = try? container.decode(String.self, forKey: .countryCode)
                
                areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
                
                landmark = try? container.decode(String.self, forKey: .landmark)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
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
            Model: SaveAddressResponse
            Used By: Cart
        */
        struct SaveAddressResponse: Codable {
            
            public var success: String?
            
            public var isDefaultAddress: Bool?
            
            public var addressId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isDefaultAddress = "is_default_address"
                
                case addressId = "address_id"
                
            }

            public init(addressId: Int?, isDefaultAddress: Bool?, success: String?) {
                
                self.success = success
                
                self.isDefaultAddress = isDefaultAddress
                
                self.addressId = addressId
                
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
            Model: UpdateAddressResponse
            Used By: Cart
        */
        struct UpdateAddressResponse: Codable {
            
            public var isUpdated: Bool?
            
            public var success: Bool?
            
            public var isDefaultAddress: Bool?
            
            public var addressId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case isUpdated = "is_updated"
                
                case success = "success"
                
                case isDefaultAddress = "is_default_address"
                
                case addressId = "address_id"
                
            }

            public init(addressId: Int?, isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?) {
                
                self.isUpdated = isUpdated
                
                self.success = success
                
                self.isDefaultAddress = isDefaultAddress
                
                self.addressId = addressId
                
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
            Model: DeleteAddressResponse
            Used By: Cart
        */
        struct DeleteAddressResponse: Codable {
            
            public var isDeleted: Bool?
            
            public var addressId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case isDeleted = "is_deleted"
                
                case addressId = "address_id"
                
            }

            public init(addressId: Int?, isDeleted: Bool?) {
                
                self.isDeleted = isDeleted
                
                self.addressId = addressId
                
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
            Model: SelectCartAddressRequest
            Used By: Cart
        */
        struct SelectCartAddressRequest: Codable {
            
            public var uid: String?
            
            public var billingAddressId: Int?
            
            public var addressId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case billingAddressId = "billing_address_id"
                
                case addressId = "address_id"
                
            }

            public init(addressId: String?, billingAddressId: Int?, uid: String?) {
                
                self.uid = uid
                
                self.billingAddressId = billingAddressId
                
                self.addressId = addressId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
                
                addressId = try? container.decode(String.self, forKey: .addressId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
            }
            
        }
        
        /*
            Model: UpdateCartPaymentRequest
            Used By: Cart
        */
        struct UpdateCartPaymentRequest: Codable {
            
            public var aggregatorName: String?
            
            public var merchantCode: String?
            
            public var uid: Int?
            
            public var paymentIdentifier: String?
            
            public var addressId: Int?
            
            public var paymentMode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregatorName = "aggregator_name"
                
                case merchantCode = "merchant_code"
                
                case uid = "uid"
                
                case paymentIdentifier = "payment_identifier"
                
                case addressId = "address_id"
                
                case paymentMode = "payment_mode"
                
            }

            public init(addressId: Int?, aggregatorName: String?, merchantCode: String?, paymentIdentifier: String?, paymentMode: String?, uid: Int?) {
                
                self.aggregatorName = aggregatorName
                
                self.merchantCode = merchantCode
                
                self.uid = uid
                
                self.paymentIdentifier = paymentIdentifier
                
                self.addressId = addressId
                
                self.paymentMode = paymentMode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                paymentMode = try? container.decode(String.self, forKey: .paymentMode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
            }
            
        }
        
        /*
            Model: ShipmentResponse
            Used By: Cart
        */
        struct ShipmentResponse: Codable {
            
            public var dpOptions: [String: Any]?
            
            public var fulfillmentType: String?
            
            public var items: [CartProductInfo]?
            
            public var orderType: String?
            
            public var shipmentType: String?
            
            public var boxType: String?
            
            public var promise: ShipmentPromise?
            
            public var fulfillmentId: Int?
            
            public var shipments: Int?
            
            public var dpId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case dpOptions = "dp_options"
                
                case fulfillmentType = "fulfillment_type"
                
                case items = "items"
                
                case orderType = "order_type"
                
                case shipmentType = "shipment_type"
                
                case boxType = "box_type"
                
                case promise = "promise"
                
                case fulfillmentId = "fulfillment_id"
                
                case shipments = "shipments"
                
                case dpId = "dp_id"
                
            }

            public init(boxType: String?, dpId: Int?, dpOptions: [String: Any]?, fulfillmentId: Int?, fulfillmentType: String?, items: [CartProductInfo]?, orderType: String?, promise: ShipmentPromise?, shipments: Int?, shipmentType: String?) {
                
                self.dpOptions = dpOptions
                
                self.fulfillmentType = fulfillmentType
                
                self.items = items
                
                self.orderType = orderType
                
                self.shipmentType = shipmentType
                
                self.boxType = boxType
                
                self.promise = promise
                
                self.fulfillmentId = fulfillmentId
                
                self.shipments = shipments
                
                self.dpId = dpId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
                
                fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                orderType = try? container.decode(String.self, forKey: .orderType)
                
                shipmentType = try? container.decode(String.self, forKey: .shipmentType)
                
                boxType = try? container.decode(String.self, forKey: .boxType)
                
                promise = try? container.decode(ShipmentPromise.self, forKey: .promise)
                
                fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
                
                shipments = try? container.decode(Int.self, forKey: .shipments)
                
                dpId = try? container.decode(Int.self, forKey: .dpId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
                
                try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                try? container.encodeIfPresent(boxType, forKey: .boxType)
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(dpId, forKey: .dpId)
                
            }
            
        }
        
        /*
            Model: CartShipmentsResponse
            Used By: Cart
        */
        struct CartShipmentsResponse: Codable {
            
            public var breakupValues: CartBreakup?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var currency: CartCurrency?
            
            public var comment: String?
            
            public var shipments: [ShipmentResponse]?
            
            public var restrictCheckout: Bool?
            
            public var uid: String?
            
            public var message: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var gstin: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var deliveryChargeInfo: String?
            
            public var cartId: Int?
            
            public var checkoutMode: String?
            
            public var couponText: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case breakupValues = "breakup_values"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case currency = "currency"
                
                case comment = "comment"
                
                case shipments = "shipments"
                
                case restrictCheckout = "restrict_checkout"
                
                case uid = "uid"
                
                case message = "message"
                
                case paymentOptions = "payment_options"
                
                case gstin = "gstin"
                
                case deliveryPromise = "delivery_promise"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case checkoutMode = "checkout_mode"
                
                case couponText = "coupon_text"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, isValid: Bool?, lastModified: String?, message: String?, paymentOptions: PaymentOptions?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, uid: String?) {
                
                self.breakupValues = breakupValues
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.currency = currency
                
                self.comment = comment
                
                self.shipments = shipments
                
                self.restrictCheckout = restrictCheckout
                
                self.uid = uid
                
                self.message = message
                
                self.paymentOptions = paymentOptions
                
                self.gstin = gstin
                
                self.deliveryPromise = deliveryPromise
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.checkoutMode = checkoutMode
                
                self.couponText = couponText
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                message = try? container.decode(String.self, forKey: .message)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
            }
            
        }
        
        /*
            Model: CartCheckoutRequest
            Used By: Cart
        */
        struct CartCheckoutRequest: Codable {
            
            public var staff: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var aggregator: String?
            
            public var billingAddress: [String: Any]?
            
            public var extraMeta: [String: Any]?
            
            public var merchantCode: String?
            
            public var paymentParams: [String: Any]?
            
            public var paymentAutoConfirm: Bool?
            
            public var callbackUrl: String?
            
            public var billingAddressId: Int?
            
            public var paymentIdentifier: String?
            
            public var addressId: Int?
            
            public var orderingStore: Int?
            
            public var fyndstoreEmpId: String?
            
            public var paymentMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case staff = "staff"
                
                case meta = "meta"
                
                case aggregator = "aggregator"
                
                case billingAddress = "billing_address"
                
                case extraMeta = "extra_meta"
                
                case merchantCode = "merchant_code"
                
                case paymentParams = "payment_params"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case callbackUrl = "callback_url"
                
                case billingAddressId = "billing_address_id"
                
                case paymentIdentifier = "payment_identifier"
                
                case addressId = "address_id"
                
                case orderingStore = "ordering_store"
                
                case fyndstoreEmpId = "fyndstore_emp_id"
                
                case paymentMode = "payment_mode"
                
            }

            public init(addressId: Int?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: Int?, callbackUrl: String?, extraMeta: [String: Any]?, fyndstoreEmpId: String?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, staff: [String: Any]?) {
                
                self.staff = staff
                
                self.meta = meta
                
                self.aggregator = aggregator
                
                self.billingAddress = billingAddress
                
                self.extraMeta = extraMeta
                
                self.merchantCode = merchantCode
                
                self.paymentParams = paymentParams
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.callbackUrl = callbackUrl
                
                self.billingAddressId = billingAddressId
                
                self.paymentIdentifier = paymentIdentifier
                
                self.addressId = addressId
                
                self.orderingStore = orderingStore
                
                self.fyndstoreEmpId = fyndstoreEmpId
                
                self.paymentMode = paymentMode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                staff = try? container.decode([String: Any].self, forKey: .staff)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                aggregator = try? container.decode(String.self, forKey: .aggregator)
                
                billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
                
                extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
                
                paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
                
                billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
                
                paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
                
                fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
                
                try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
            }
            
        }
        
        /*
            Model: CheckCart
            Used By: Cart
        */
        struct CheckCart: Codable {
            
            public var deliveryCharges: Int?
            
            public var errorMessage: String?
            
            public var restrictCheckout: Bool?
            
            public var uid: String?
            
            public var message: String?
            
            public var orderId: String?
            
            public var codMessage: String?
            
            public var deliveryChargeInfo: String?
            
            public var checkoutMode: String?
            
            public var couponText: String?
            
            public var codCharges: Int?
            
            public var cartId: Int?
            
            public var items: [CartProductInfo]?
            
            public var comment: String?
            
            public var success: Bool?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var currency: CartCurrency?
            
            public var breakupValues: CartBreakup?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var storeEmps: [[String: Any]]?
            
            public var codAvailable: Bool?
            
            public var userType: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var deliveryChargeOrderValue: Int?
            
            public var gstin: String?
            
            public var storeCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case deliveryCharges = "delivery_charges"
                
                case errorMessage = "error_message"
                
                case restrictCheckout = "restrict_checkout"
                
                case uid = "uid"
                
                case message = "message"
                
                case orderId = "order_id"
                
                case codMessage = "cod_message"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case checkoutMode = "checkout_mode"
                
                case couponText = "coupon_text"
                
                case codCharges = "cod_charges"
                
                case cartId = "cart_id"
                
                case items = "items"
                
                case comment = "comment"
                
                case success = "success"
                
                case deliveryPromise = "delivery_promise"
                
                case currency = "currency"
                
                case breakupValues = "breakup_values"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case storeEmps = "store_emps"
                
                case codAvailable = "cod_available"
                
                case userType = "user_type"
                
                case paymentOptions = "payment_options"
                
                case deliveryChargeOrderValue = "delivery_charge_order_value"
                
                case gstin = "gstin"
                
                case storeCode = "store_code"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, codAvailable: Bool?, codCharges: Int?, codMessage: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryCharges: Int?, deliveryChargeInfo: String?, deliveryChargeOrderValue: Int?, deliveryPromise: ShipmentPromise?, errorMessage: String?, gstin: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, orderId: String?, paymentOptions: PaymentOptions?, restrictCheckout: Bool?, storeCode: String?, storeEmps: [[String: Any]]?, success: Bool?, uid: String?, userType: String?) {
                
                self.deliveryCharges = deliveryCharges
                
                self.errorMessage = errorMessage
                
                self.restrictCheckout = restrictCheckout
                
                self.uid = uid
                
                self.message = message
                
                self.orderId = orderId
                
                self.codMessage = codMessage
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.checkoutMode = checkoutMode
                
                self.couponText = couponText
                
                self.codCharges = codCharges
                
                self.cartId = cartId
                
                self.items = items
                
                self.comment = comment
                
                self.success = success
                
                self.deliveryPromise = deliveryPromise
                
                self.currency = currency
                
                self.breakupValues = breakupValues
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.storeEmps = storeEmps
                
                self.codAvailable = codAvailable
                
                self.userType = userType
                
                self.paymentOptions = paymentOptions
                
                self.deliveryChargeOrderValue = deliveryChargeOrderValue
                
                self.gstin = gstin
                
                self.storeCode = storeCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
                
                errorMessage = try? container.decode(String.self, forKey: .errorMessage)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                message = try? container.decode(String.self, forKey: .message)
                
                orderId = try? container.decode(String.self, forKey: .orderId)
                
                codMessage = try? container.decode(String.self, forKey: .codMessage)
                
                deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                codCharges = try? container.decode(Int.self, forKey: .codCharges)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
                
                codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
                
                userType = try? container.decode(String.self, forKey: .userType)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                storeCode = try? container.decode(String.self, forKey: .storeCode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
                
                try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(codMessage, forKey: .codMessage)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
                
                try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
                
                try? container.encodeIfPresent(userType, forKey: .userType)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
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
            
            public var success: Bool?
            
            public var appInterceptUrl: String?
            
            public var callbackUrl: String?
            
            public var message: String?
            
            public var orderId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cart = "cart"
                
                case data = "data"
                
                case success = "success"
                
                case appInterceptUrl = "app_intercept_url"
                
                case callbackUrl = "callback_url"
                
                case message = "message"
                
                case orderId = "order_id"
                
            }

            public init(appInterceptUrl: String?, callbackUrl: String?, cart: CheckCart?, data: OrderData?, message: String?, orderId: String?, success: Bool?) {
                
                self.cart = cart
                
                self.data = data
                
                self.success = success
                
                self.appInterceptUrl = appInterceptUrl
                
                self.callbackUrl = callbackUrl
                
                self.message = message
                
                self.orderId = orderId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cart = try? container.decode(CheckCart.self, forKey: .cart)
                
                data = try? container.decode(OrderData.self, forKey: .data)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
                
                callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
                
                message = try? container.decode(String.self, forKey: .message)
                
                orderId = try? container.decode(String.self, forKey: .orderId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
            }
            
        }
        
        /*
            Model: CartMetaRequest
            Used By: Cart
        */
        struct CartMetaRequest: Codable {
            
            public var gstin: String?
            
            public var pickUpCustomerDetails: [String: Any]?
            
            public var comment: String?
            
            public var checkoutMode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstin = "gstin"
                
                case pickUpCustomerDetails = "pick_up_customer_details"
                
                case comment = "comment"
                
                case checkoutMode = "checkout_mode"
                
            }

            public init(checkoutMode: String?, comment: String?, gstin: String?, pickUpCustomerDetails: [String: Any]?) {
                
                self.gstin = gstin
                
                self.pickUpCustomerDetails = pickUpCustomerDetails
                
                self.comment = comment
                
                self.checkoutMode = checkoutMode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                pickUpCustomerDetails = try? container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
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
            
            public var source: [String: Any]?
            
            public var token: String?
            
            public var user: [String: Any]?
            
            public var createdOn: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case source = "source"
                
                case token = "token"
                
                case user = "user"
                
                case createdOn = "created_on"
                
            }

            public init(createdOn: String?, meta: [String: Any]?, source: [String: Any]?, token: String?, user: [String: Any]?) {
                
                self.meta = meta
                
                self.source = source
                
                self.token = token
                
                self.user = user
                
                self.createdOn = createdOn
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                source = try? container.decode([String: Any].self, forKey: .source)
                
                token = try? container.decode(String.self, forKey: .token)
                
                user = try? container.decode([String: Any].self, forKey: .user)
                
                createdOn = try? container.decode(String.self, forKey: .createdOn)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
            }
            
        }
        
        /*
            Model: SharedCart
            Used By: Cart
        */
        struct SharedCart: Codable {
            
            public var items: [CartProductInfo]?
            
            public var breakupValues: CartBreakup?
            
            public var sharedCartDetails: SharedCartDetails?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var currency: CartCurrency?
            
            public var comment: String?
            
            public var restrictCheckout: Bool?
            
            public var uid: String?
            
            public var message: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var gstin: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var deliveryChargeInfo: String?
            
            public var cartId: Int?
            
            public var checkoutMode: String?
            
            public var couponText: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case breakupValues = "breakup_values"
                
                case sharedCartDetails = "shared_cart_details"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case currency = "currency"
                
                case comment = "comment"
                
                case restrictCheckout = "restrict_checkout"
                
                case uid = "uid"
                
                case message = "message"
                
                case paymentOptions = "payment_options"
                
                case gstin = "gstin"
                
                case deliveryPromise = "delivery_promise"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case checkoutMode = "checkout_mode"
                
                case couponText = "coupon_text"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentOptions: PaymentOptions?, restrictCheckout: Bool?, sharedCartDetails: SharedCartDetails?, uid: String?) {
                
                self.items = items
                
                self.breakupValues = breakupValues
                
                self.sharedCartDetails = sharedCartDetails
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.currency = currency
                
                self.comment = comment
                
                self.restrictCheckout = restrictCheckout
                
                self.uid = uid
                
                self.message = message
                
                self.paymentOptions = paymentOptions
                
                self.gstin = gstin
                
                self.deliveryPromise = deliveryPromise
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.checkoutMode = checkoutMode
                
                self.couponText = couponText
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                message = try? container.decode(String.self, forKey: .message)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
            }
            
        }
        
        /*
            Model: SharedCartResponse
            Used By: Cart
        */
        struct SharedCartResponse: Codable {
            
            public var cart: SharedCart?
            
            public var error: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cart = "cart"
                
                case error = "error"
                
            }

            public init(cart: SharedCart?, error: String?) {
                
                self.cart = cart
                
                self.error = error
                
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

            public init(description: String?, headerImage: String?, inputs: [[String: Any]], pollForAssignment: PollForAssignment?, shouldNotify: Bool?, slug: String, successMessage: String?, title: String) {
                
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

            public init(description: String?, headerImage: String?, inputs: [[String: Any]], loginRequired: Bool?, pollForAssignment: PollForAssignment?, shouldNotify: Bool?, successMessage: String?, title: String) {
                
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

            public init(assignedTo: AgentChangePayload?, category: String?, content: TicketContent?, priority: String?, source: String?, status: String?, tags: [String]?) {
                
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

            public init(notify: [[String: Any]]?, uniqueName: String) {
                
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

            public init(assignees: [[String: Any]], categories: Category?, priorities: Priority, statuses: Status) {
                
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

            public init(type: String?, value: [String: Any]?) {
                
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

            public init(display: String?, type: String, value: String) {
                
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

            public init(attachments: [Asset]?, description: String?, title: String) {
                
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

            public init(category: String, content: TicketContent, priority: String, status: String) {
                
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

            public init(color: String, display: String, key: String) {
                
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

            public init(color: String, display: String, key: String) {
                
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

            public init(display: String, form: CustomForm?, key: String) {
                
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

            public init(backgroundColor: String, title: String, titleColor: String) {
                
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

            public init(duration: Double, failureMessage: String, message: String, successMessage: String) {
                
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

            public init(applicationId: String, createdAt: String?, createdBy: [String: Any]?, createdOn: CreatedOn?, description: String?, headerImage: String?, inputs: [[String: Any]], loginRequired: Bool, pollForAssignment: PollForAssignment?, shouldNotify: Bool, slug: String, submitButton: SubmitButton?, successMessage: String?, title: String, updatedAt: String?, id: String) {
                
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

            public init(createdAt: String?, createdBy: [String: Any]?, createdOn: CreatedOn?, ticketId: String, type: String, updatedAt: String?, value: [String: Any], id: String) {
                
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

            public init(assignedTo: [String: Any]?, category: Category, content: TicketContent?, context: TicketContext?, createdAt: String?, createdBy: [String: Any]?, createdOn: CreatedOn?, priority: Priority, responseId: String?, source: String, status: Status, tags: [String]?, ticketId: String, updatedAt: String?, customJson: [String: Any]?, id: String?) {
                
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

            public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
                
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

            public init(appliedTheme: String?, parentTheme: String?, upgrade: Bool?) {
                
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

            public init(application: String?, applied: Bool?, archived: Bool?, assets: [String: Any]?, availablePages: [[String: Any]]?, availableSections: [availableSectionSchema]?, colors: [String: Any]?, config: [String: Any]?, constants: [String: Any]?, createdAt: String?, customized: Bool?, font: [String: Any]?, information: [String: Any]?, pages: [String: Any]?, parentTheme: String?, parentThemeVersion: String?, published: Bool?, sections: [sectionSchema]?, settings: [String: Any]?, src: [String: Any]?, styles: [String: Any]?, tags: [String]?, updatedAt: String?, version: String?, id: String?, v: Int?) {
                
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

            public init(path: String?, sections: [[String: Any]]?, text: String?, type: String?, value: String?) {
                
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

            public init(blocks: [[String: Any]]?, label: String?, name: String?, props: [[String: Any]]?) {
                
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

            public init(application: String?, createdAt: String?, faq: [[String: Any]]?, policy: String?, tnc: String?, updatedAt: String?, id: String?, v: Double?) {
                
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

            public init(app: String, customMetaTags: [[String: Any]]?, details: [String: Any]?, robotsTxt: String?, sitemapEnabled: Bool?) {
                
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

            public init(announcements: [String: Any]?, refreshPages: [String]?, refreshRate: Int?) {
                
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

            public init(announcement: String?, app: String?, author: [String: Any]?, createdAt: String?, editorMeta: [String: Any]?, modifiedAt: String?, pages: [[String: Any]]?, platform: [String]?, title: String?, id: String?, schedule: [String: Any]?) {
                
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

            public init(published: Bool?, schedule: [String: Any]?) {
                
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

            public init(application: String?, archived: Bool?, dateMeta: [String: Any]?, identifier: [String: Any]?, keyValues: [[String: Any]]?, id: String?) {
                
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

            public init(identifier: [String: Any]?, keyValues: [[String: Any]]?) {
                
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

            public init(data: AdminAnnouncementSchema?, message: String?) {
                
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

            public init(answer: String?, application: String?, question: String?, slug: String?, id: String?, v: Int?) {
                
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

            public init(application: String?, createdBy: [String: Any]?, dateMeta: [String: Any]?, name: String?, navigation: NavigationRef?, orientation: String?, platform: String?, position: String?, slug: String?, id: String?) {
                
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

            public init(acl: [[String: Any]]?, action: [String: Any]?, active: Bool?, display: String?, image: String?, sortOrder: Int?, subNavigation: [String: Any]?, type: String?, localeLanguage: [String: Any]?) {
                
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
            Model: LandingPageResponse
            Used By: Content
        */
        struct LandingPageResponse: Codable {
            
            public var items: [[String: Any]]?
            
            public var page: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [[String: Any]]?, page: [String: Any]?) {
                
                self.items = items
                
                self.page = page
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([[String: Any]].self, forKey: .items)
                
                page = try? container.decode([String: Any].self, forKey: .page)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
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

            public init(action: [String: Any]?, application: String?, createdBy: [String: Any]?, dateMeta: [String: Any]?, platform: [[String: Any]]?, slug: String?, id: String?) {
                
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

            public init(active: Bool?, application: String?, configuration: [String: Any]?, dateMeta: [String: Any]?, media: [[String: Any]]?, name: String?, platform: String?, slug: String?, id: String?) {
                
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

            public init(application: String?, tags: [[String: Any]]?, id: String?, v: Int?) {
                
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

            public init(answer: String?, application: String?, question: String?, slug: String?, id: String?, v: Int?) {
                
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

            public init(application: String?, archived: Bool?, dateMeta: [String: Any]?, identifier: [String: Any]?, keyValues: [[String: Any]]?, id: String?) {
                
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

            public init(application: String?, configType: String?, contact: [String: Any]?, created: Bool?, createdAt: String?, updatedAt: String?, id: String?) {
                
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

            public init(action: String?, channel: String?, response: String?) {
                
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

            public init(appId: String?, channels: [String: Any]?, userId: String?) {
                
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

            public init(appId: String?, channels: [String: Any]?, userId: String?) {
                
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

            public init(action: String?, bundleIdentifier: String?, pushToken: String?, type: String?, uniqueDeviceId: String?) {
                
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

            public init(applicationId: String?, bundleIdentifier: String?, createdAt: String?, expiredAt: String?, platform: String?, pushToken: String?, type: String?, uniqueDeviceId: String?, updatedAt: String?, userId: String?, id: String?) {
                
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

            public init(android: RedirectDevice?, forceWeb: Bool?, ios: RedirectDevice?, web: [String: Any]?) {
                
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

            public init(active: String?, enableTracking: Bool?, expireAt: String?, hash: String?, redirects: Redirects?, title: String, type: String?, url: String) {
                
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

            public init(active: Bool?, application: String?, appRedirect: String?, createdAt: Bool?, createdBy: String?, enableTracking: Bool?, expireAt: Bool?, fallback: String?, personalized: String?, redirects: Redirects?, title: String?, updatedAt: Bool?, url: [String: Any]?, userId: Bool?, id: String?) {
                
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

            public init(cdn: CDN, contentType: String, fileName: String, filePath: String, method: String, namespace: String, operation: String, size: Int, upload: Upload) {
                
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

            public init(contentType: String, fileName: String, size: Int, tags: [String]?) {
                
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

            public init(cdn: CDN, contentType: String, createdOn: String, fileName: String, filePath: String, method: String, modifiedOn: String, namespace: String, operation: String, size: Int, success: String, tags: [String]?, upload: Upload, id: String) {
                
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
            Model: ApplicationAboutResponse
            Used By: Configuration
        */
        struct ApplicationAboutResponse: Codable {
            
            public var applicationInfo: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case applicationInfo = "application_info"
                
            }

            public init(applicationInfo: [String: Any]?) {
                
                self.applicationInfo = applicationInfo
                
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
            Model: AppVersionRequest
            Used By: Configuration
        */
        struct AppVersionRequest: Codable {
            
            public var application: ApplicationVersionRequest
            
            public var device: Device
            
            public var locale: String?
            
            public var timezone: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case application = "application"
                
                case device = "device"
                
                case locale = "locale"
                
                case timezone = "timezone"
                
            }

            public init(application: ApplicationVersionRequest, device: Device, locale: String?, timezone: String?) {
                
                self.application = application
                
                self.device = device
                
                self.locale = locale
                
                self.timezone = timezone
                
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
            Model: ApplicationVersionRequest
            Used By: Configuration
        */
        struct ApplicationVersionRequest: Codable {
            
            public var id: String?
            
            public var name: String
            
            public var namespace: String?
            
            public var token: String?
            
            public var version: String
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case name = "name"
                
                case namespace = "namespace"
                
                case token = "token"
                
                case version = "version"
                
            }

            public init(id: String?, name: String, namespace: String?, token: String?, version: String) {
                
                self.id = id
                
                self.name = name
                
                self.namespace = namespace
                
                self.token = token
                
                self.version = version
                
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
            Model: Device
            Used By: Configuration
        */
        struct Device: Codable {
            
            public var build: Int?
            
            public var model: String?
            
            public var os: OS
            

            public enum CodingKeys: String, CodingKey {
                
                case build = "build"
                
                case model = "model"
                
                case os = "os"
                
            }

            public init(build: Int?, model: String?, os: OS) {
                
                self.build = build
                
                self.model = model
                
                self.os = os
                
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
            Model: OS
            Used By: Configuration
        */
        struct OS: Codable {
            
            public var name: String
            
            public var version: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case version = "version"
                
            }

            public init(name: String, version: String?) {
                
                self.name = name
                
                self.version = version
                
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
            Model: Language
            Used By: Configuration
        */
        struct Language: Codable {
            
            public var name: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case code = "code"
                
            }

            public init(code: String?, name: String?) {
                
                self.name = name
                
                self.code = code
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                code = try? container.decode(String.self, forKey: .code)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
            }
            
        }
        
        /*
            Model: LanguageResponse
            Used By: Configuration
        */
        struct LanguageResponse: Codable {
            
            public var items: [Language]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [Language]?) {
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([Language].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: TokensResponse
            Used By: Configuration
        */
        struct TokensResponse: Codable {
            
            public var tokens: [String: Any]?
            
            public var id: String?
            
            public var application: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case tokens = "tokens"
                
                case id = "_id"
                
                case application = "application"
                
                case createdAt = "createdAt"
                
                case updatedAt = "updatedAt"
                
                case v = "__v"
                
            }

            public init(application: String?, createdAt: String?, tokens: [String: Any]?, updatedAt: String?, id: String?, v: Int?) {
                
                self.tokens = tokens
                
                self.id = id
                
                self.application = application
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.v = v
                
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
            Model: AppStaffResponse
            Used By: Configuration
        */
        struct AppStaffResponse: Codable {
            
            public var staffUsers: [AppStaff]?
            

            public enum CodingKeys: String, CodingKey {
                
                case staffUsers = "staff_users"
                
            }

            public init(staffUsers: [AppStaff]?) {
                
                self.staffUsers = staffUsers
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                staffUsers = try? container.decode([AppStaff].self, forKey: .staffUsers)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(staffUsers, forKey: .staffUsers)
                
            }
            
        }
        
        /*
            Model: UpdateDialog
            Used By: Configuration
        */
        struct UpdateDialog: Codable {
            
            public var type: String?
            
            public var interval: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case interval = "interval"
                
            }

            public init(interval: Int?, type: String?) {
                
                self.type = type
                
                self.interval = interval
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                type = try? container.decode(String.self, forKey: .type)
                
                interval = try? container.decode(Int.self, forKey: .interval)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(interval, forKey: .interval)
                
            }
            
        }
        
        /*
            Model: AppVersionResponse
            Used By: Configuration
        */
        struct AppVersionResponse: Codable {
            
            public var forceVersion: String?
            
            public var latestVersion: String?
            
            public var isAppBlocked: Bool?
            
            public var updateDialog: UpdateDialog?
            
            public var type: String?
            
            public var title: String?
            
            public var description: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case forceVersion = "force_version"
                
                case latestVersion = "latest_version"
                
                case isAppBlocked = "is_app_blocked"
                
                case updateDialog = "update_dialog"
                
                case type = "type"
                
                case title = "title"
                
                case description = "description"
                
            }

            public init(description: String?, forceVersion: String?, isAppBlocked: Bool?, latestVersion: String?, title: String?, type: String?, updateDialog: UpdateDialog?) {
                
                self.forceVersion = forceVersion
                
                self.latestVersion = latestVersion
                
                self.isAppBlocked = isAppBlocked
                
                self.updateDialog = updateDialog
                
                self.type = type
                
                self.title = title
                
                self.description = description
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                forceVersion = try? container.decode(String.self, forKey: .forceVersion)
                
                latestVersion = try? container.decode(String.self, forKey: .latestVersion)
                
                isAppBlocked = try? container.decode(Bool.self, forKey: .isAppBlocked)
                
                updateDialog = try? container.decode(UpdateDialog.self, forKey: .updateDialog)
                
                type = try? container.decode(String.self, forKey: .type)
                
                title = try? container.decode(String.self, forKey: .title)
                
                description = try? container.decode(String.self, forKey: .description)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(forceVersion, forKey: .forceVersion)
                
                try? container.encodeIfPresent(latestVersion, forKey: .latestVersion)
                
                try? container.encodeIfPresent(isAppBlocked, forKey: .isAppBlocked)
                
                try? container.encodeIfPresent(updateDialog, forKey: .updateDialog)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
            }
            
        }
        
        /*
            Model: InvalidAppVersionRequest
            Used By: Configuration
        */
        struct InvalidAppVersionRequest: Codable {
            
            public var errors: [[String: Any]]?
            

            public enum CodingKeys: String, CodingKey {
                
                case errors = "errors"
                
            }

            public init(errors: [[String: Any]]?) {
                
                self.errors = errors
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                errors = try? container.decode([[String: Any]].self, forKey: .errors)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(errors, forKey: .errors)
                
            }
            
        }
        
        /*
            Model: AppStaff
            Used By: Configuration
        */
        struct AppStaff: Codable {
            
            public var id: String?
            
            public var orderIncent: Bool?
            
            public var stores: [Int]?
            
            public var application: String?
            
            public var title: String?
            
            public var user: String?
            
            public var employeeCode: String?
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var profilePicUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case orderIncent = "order_incent"
                
                case stores = "stores"
                
                case application = "application"
                
                case title = "title"
                
                case user = "user"
                
                case employeeCode = "employee_code"
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case profilePicUrl = "profile_pic_url"
                
            }

            public init(application: String?, employeeCode: String?, firstName: String?, lastName: String?, orderIncent: Bool?, profilePicUrl: String?, stores: [Int]?, title: String?, user: String?, id: String?) {
                
                self.id = id
                
                self.orderIncent = orderIncent
                
                self.stores = stores
                
                self.application = application
                
                self.title = title
                
                self.user = user
                
                self.employeeCode = employeeCode
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.profilePicUrl = profilePicUrl
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                id = try? container.decode(String.self, forKey: .id)
                
                orderIncent = try? container.decode(Bool.self, forKey: .orderIncent)
                
                stores = try? container.decode([Int].self, forKey: .stores)
                
                application = try? container.decode(String.self, forKey: .application)
                
                title = try? container.decode(String.self, forKey: .title)
                
                user = try? container.decode(String.self, forKey: .user)
                
                employeeCode = try? container.decode(String.self, forKey: .employeeCode)
                
                firstName = try? container.decode(String.self, forKey: .firstName)
                
                lastName = try? container.decode(String.self, forKey: .lastName)
                
                profilePicUrl = try? container.decode(String.self, forKey: .profilePicUrl)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(orderIncent, forKey: .orderIncent)
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
                
            }
            
        }
        
        /*
            Model: ProductDetailFeature
            Used By: Configuration
        */
        struct ProductDetailFeature: Codable {
            
            public var similar: [String]?
            
            public var sellerSelection: Bool?
            
            public var updateProductMeta: Bool?
            
            public var requestProduct: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case similar = "similar"
                
                case sellerSelection = "seller_selection"
                
                case updateProductMeta = "update_product_meta"
                
                case requestProduct = "request_product"
                
            }

            public init(requestProduct: Bool?, sellerSelection: Bool?, similar: [String]?, updateProductMeta: Bool?) {
                
                self.similar = similar
                
                self.sellerSelection = sellerSelection
                
                self.updateProductMeta = updateProductMeta
                
                self.requestProduct = requestProduct
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                similar = try? container.decode([String].self, forKey: .similar)
                
                sellerSelection = try? container.decode(Bool.self, forKey: .sellerSelection)
                
                updateProductMeta = try? container.decode(Bool.self, forKey: .updateProductMeta)
                
                requestProduct = try? container.decode(Bool.self, forKey: .requestProduct)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(similar, forKey: .similar)
                
                try? container.encodeIfPresent(sellerSelection, forKey: .sellerSelection)
                
                try? container.encodeIfPresent(updateProductMeta, forKey: .updateProductMeta)
                
                try? container.encodeIfPresent(requestProduct, forKey: .requestProduct)
                
            }
            
        }
        
        /*
            Model: LandingPageFeature
            Used By: Configuration
        */
        struct LandingPageFeature: Codable {
            
            public var launchPage: LandingPage?
            
            public var continueAsGuest: Bool?
            
            public var loginBtnText: String?
            
            public var showDomainTextbox: Bool?
            
            public var showRegisterBtn: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case launchPage = "launch_page"
                
                case continueAsGuest = "continue_as_guest"
                
                case loginBtnText = "login_btn_text"
                
                case showDomainTextbox = "show_domain_textbox"
                
                case showRegisterBtn = "show_register_btn"
                
            }

            public init(continueAsGuest: Bool?, launchPage: LandingPage?, loginBtnText: String?, showDomainTextbox: Bool?, showRegisterBtn: Bool?) {
                
                self.launchPage = launchPage
                
                self.continueAsGuest = continueAsGuest
                
                self.loginBtnText = loginBtnText
                
                self.showDomainTextbox = showDomainTextbox
                
                self.showRegisterBtn = showRegisterBtn
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                launchPage = try? container.decode(LandingPage.self, forKey: .launchPage)
                
                continueAsGuest = try? container.decode(Bool.self, forKey: .continueAsGuest)
                
                loginBtnText = try? container.decode(String.self, forKey: .loginBtnText)
                
                showDomainTextbox = try? container.decode(Bool.self, forKey: .showDomainTextbox)
                
                showRegisterBtn = try? container.decode(Bool.self, forKey: .showRegisterBtn)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(launchPage, forKey: .launchPage)
                
                try? container.encodeIfPresent(continueAsGuest, forKey: .continueAsGuest)
                
                try? container.encodeIfPresent(loginBtnText, forKey: .loginBtnText)
                
                try? container.encodeIfPresent(showDomainTextbox, forKey: .showDomainTextbox)
                
                try? container.encodeIfPresent(showRegisterBtn, forKey: .showRegisterBtn)
                
            }
            
        }
        
        /*
            Model: RegistrationPageFeature
            Used By: Configuration
        */
        struct RegistrationPageFeature: Codable {
            
            public var askStoreAddress: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case askStoreAddress = "ask_store_address"
                
            }

            public init(askStoreAddress: Bool?) {
                
                self.askStoreAddress = askStoreAddress
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                askStoreAddress = try? container.decode(Bool.self, forKey: .askStoreAddress)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(askStoreAddress, forKey: .askStoreAddress)
                
            }
            
        }
        
        /*
            Model: AppFeature
            Used By: Configuration
        */
        struct AppFeature: Codable {
            
            public var productDetail: ProductDetailFeature?
            
            public var landingPage: LandingPageFeature?
            
            public var registrationPage: RegistrationPageFeature?
            
            public var homePage: [String: Any]?
            
            public var common: [String: Any]?
            
            public var cart: [String: Any]?
            
            public var qr: [String: Any]?
            
            public var pcr: [String: Any]?
            
            public var order: [String: Any]?
            
            public var id: String?
            
            public var app: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case productDetail = "product_detail"
                
                case landingPage = "landing_page"
                
                case registrationPage = "registration_page"
                
                case homePage = "home_page"
                
                case common = "common"
                
                case cart = "cart"
                
                case qr = "qr"
                
                case pcr = "pcr"
                
                case order = "order"
                
                case id = "_id"
                
                case app = "app"
                
                case createdAt = "createdAt"
                
                case updatedAt = "updatedAt"
                
                case v = "__v"
                
            }

            public init(app: String?, cart: [String: Any]?, common: [String: Any]?, createdAt: String?, homePage: [String: Any]?, landingPage: LandingPageFeature?, order: [String: Any]?, pcr: [String: Any]?, productDetail: ProductDetailFeature?, qr: [String: Any]?, registrationPage: RegistrationPageFeature?, updatedAt: String?, id: String?, v: Int?) {
                
                self.productDetail = productDetail
                
                self.landingPage = landingPage
                
                self.registrationPage = registrationPage
                
                self.homePage = homePage
                
                self.common = common
                
                self.cart = cart
                
                self.qr = qr
                
                self.pcr = pcr
                
                self.order = order
                
                self.id = id
                
                self.app = app
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.v = v
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                productDetail = try? container.decode(ProductDetailFeature.self, forKey: .productDetail)
                
                landingPage = try? container.decode(LandingPageFeature.self, forKey: .landingPage)
                
                registrationPage = try? container.decode(RegistrationPageFeature.self, forKey: .registrationPage)
                
                homePage = try? container.decode([String: Any].self, forKey: .homePage)
                
                common = try? container.decode([String: Any].self, forKey: .common)
                
                cart = try? container.decode([String: Any].self, forKey: .cart)
                
                qr = try? container.decode([String: Any].self, forKey: .qr)
                
                pcr = try? container.decode([String: Any].self, forKey: .pcr)
                
                order = try? container.decode([String: Any].self, forKey: .order)
                
                id = try? container.decode(String.self, forKey: .id)
                
                app = try? container.decode(String.self, forKey: .app)
                
                createdAt = try? container.decode(String.self, forKey: .createdAt)
                
                updatedAt = try? container.decode(String.self, forKey: .updatedAt)
                
                v = try? container.decode(Int.self, forKey: .v)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(productDetail, forKey: .productDetail)
                
                try? container.encodeIfPresent(landingPage, forKey: .landingPage)
                
                try? container.encodeIfPresent(registrationPage, forKey: .registrationPage)
                
                try? container.encodeIfPresent(homePage, forKey: .homePage)
                
                try? container.encodeIfPresent(common, forKey: .common)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(qr, forKey: .qr)
                
                try? container.encodeIfPresent(pcr, forKey: .pcr)
                
                try? container.encodeIfPresent(order, forKey: .order)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(app, forKey: .app)
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                try? container.encodeIfPresent(v, forKey: .v)
                
            }
            
        }
        
        /*
            Model: AppFeatureRequest
            Used By: Configuration
        */
        struct AppFeatureRequest: Codable {
            
            public var feature: AppFeature?
            

            public enum CodingKeys: String, CodingKey {
                
                case feature = "feature"
                
            }

            public init(feature: AppFeature?) {
                
                self.feature = feature
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                feature = try? container.decode(AppFeature.self, forKey: .feature)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(feature, forKey: .feature)
                
            }
            
        }
        
        /*
            Model: AppFeatureResponse
            Used By: Configuration
        */
        struct AppFeatureResponse: Codable {
            
            public var feature: AppFeature?
            

            public enum CodingKeys: String, CodingKey {
                
                case feature = "feature"
                
            }

            public init(feature: AppFeature?) {
                
                self.feature = feature
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                feature = try? container.decode(AppFeature.self, forKey: .feature)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(feature, forKey: .feature)
                
            }
            
        }
        
        /*
            Model: Currency
            Used By: Configuration
        */
        struct Currency: Codable {
            
            public var id: String?
            
            public var isActive: Bool?
            
            public var name: String?
            
            public var code: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var decimalDigits: Int?
            
            public var symbol: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case isActive = "is_active"
                
                case name = "name"
                
                case code = "code"
                
                case createdAt = "createdAt"
                
                case updatedAt = "updatedAt"
                
                case decimalDigits = "decimal_digits"
                
                case symbol = "symbol"
                
            }

            public init(code: String?, createdAt: String?, decimalDigits: Int?, isActive: Bool?, name: String?, symbol: String?, updatedAt: String?, id: String?) {
                
                self.id = id
                
                self.isActive = isActive
                
                self.name = name
                
                self.code = code
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.decimalDigits = decimalDigits
                
                self.symbol = symbol
                
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
            Model: Domain
            Used By: Configuration
        */
        struct Domain: Codable {
            
            public var verified: Bool?
            
            public var isPrimary: Bool?
            
            public var isDefault: Bool?
            
            public var isShortlink: Bool?
            
            public var id: String?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case verified = "verified"
                
                case isPrimary = "is_primary"
                
                case isDefault = "is_default"
                
                case isShortlink = "is_shortlink"
                
                case id = "_id"
                
                case name = "name"
                
            }

            public init(isDefault: Bool?, isPrimary: Bool?, isShortlink: Bool?, name: String?, verified: Bool?, id: String?) {
                
                self.verified = verified
                
                self.isPrimary = isPrimary
                
                self.isDefault = isDefault
                
                self.isShortlink = isShortlink
                
                self.id = id
                
                self.name = name
                
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
            Model: ApplicationWebsite
            Used By: Configuration
        */
        struct ApplicationWebsite: Codable {
            
            public var enabled: Bool?
            
            public var basepath: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
                case basepath = "basepath"
                
            }

            public init(basepath: String?, enabled: Bool?) {
                
                self.enabled = enabled
                
                self.basepath = basepath
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                enabled = try? container.decode(Bool.self, forKey: .enabled)
                
                basepath = try? container.decode(String.self, forKey: .basepath)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                try? container.encodeIfPresent(basepath, forKey: .basepath)
                
            }
            
        }
        
        /*
            Model: ApplicationCors
            Used By: Configuration
        */
        struct ApplicationCors: Codable {
            
            public var domains: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case domains = "domains"
                
            }

            public init(domains: [String]?) {
                
                self.domains = domains
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                domains = try? container.decode([String].self, forKey: .domains)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(domains, forKey: .domains)
                
            }
            
        }
        
        /*
            Model: ApplicationAuth
            Used By: Configuration
        */
        struct ApplicationAuth: Codable {
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
            }

            public init(enabled: Bool?) {
                
                self.enabled = enabled
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                enabled = try? container.decode(Bool.self, forKey: .enabled)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
            }
            
        }
        
        /*
            Model: ApplicationRedirections
            Used By: Configuration
        */
        struct ApplicationRedirections: Codable {
            
            public var from: String?
            
            public var redirectTo: String?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case from = "from"
                
                case redirectTo = "redirectTo"
                
                case type = "type"
                
            }

            public init(from: String?, redirectTo: String?, type: String?) {
                
                self.from = from
                
                self.redirectTo = redirectTo
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                from = try? container.decode(String.self, forKey: .from)
                
                redirectTo = try? container.decode(String.self, forKey: .redirectTo)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(from, forKey: .from)
                
                try? container.encodeIfPresent(redirectTo, forKey: .redirectTo)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: ApplicationMeta
            Used By: Configuration
        */
        struct ApplicationMeta: Codable {
            
            public var name: String?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case value = "value"
                
            }

            public init(name: String?, value: String?) {
                
                self.name = name
                
                self.value = value
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                value = try? container.decode(String.self, forKey: .value)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
            }
            
        }
        
        /*
            Model: SecureUrl
            Used By: Configuration
        */
        struct SecureUrl: Codable {
            
            public var secureUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case secureUrl = "secure_url"
                
            }

            public init(secureUrl: String?) {
                
                self.secureUrl = secureUrl
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                secureUrl = try? container.decode(String.self, forKey: .secureUrl)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
                
            }
            
        }
        
        /*
            Model: Application
            Used By: Configuration
        */
        struct Application: Codable {
            
            public var website: ApplicationWebsite?
            
            public var cors: ApplicationCors?
            
            public var auth: ApplicationAuth?
            
            public var description: String?
            
            public var channelType: String?
            
            public var cacheTtl: Int?
            
            public var isInternal: Bool?
            
            public var isActive: Bool?
            
            public var id: String?
            
            public var name: String?
            
            public var owner: String?
            
            public var companyId: Int?
            
            public var token: String?
            
            public var redirections: [ApplicationRedirections]?
            
            public var meta: [ApplicationMeta]?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var v: Int?
            
            public var banner: SecureUrl?
            
            public var logo: SecureUrl?
            
            public var favicon: SecureUrl?
            
            public var domains: [Domain]?
            
            public var appType: String?
            
            public var mobileLogo: SecureUrl?
            
            public var domain: Domain?
            

            public enum CodingKeys: String, CodingKey {
                
                case website = "website"
                
                case cors = "cors"
                
                case auth = "auth"
                
                case description = "description"
                
                case channelType = "channel_type"
                
                case cacheTtl = "cache_ttl"
                
                case isInternal = "is_internal"
                
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
                
            }

            public init(appType: String?, auth: ApplicationAuth?, banner: SecureUrl?, cacheTtl: Int?, channelType: String?, companyId: Int?, cors: ApplicationCors?, createdAt: String?, description: String?, domain: Domain?, domains: [Domain]?, favicon: SecureUrl?, isActive: Bool?, isInternal: Bool?, logo: SecureUrl?, meta: [ApplicationMeta]?, mobileLogo: SecureUrl?, name: String?, owner: String?, redirections: [ApplicationRedirections]?, token: String?, updatedAt: String?, website: ApplicationWebsite?, id: String?, v: Int?) {
                
                self.website = website
                
                self.cors = cors
                
                self.auth = auth
                
                self.description = description
                
                self.channelType = channelType
                
                self.cacheTtl = cacheTtl
                
                self.isInternal = isInternal
                
                self.isActive = isActive
                
                self.id = id
                
                self.name = name
                
                self.owner = owner
                
                self.companyId = companyId
                
                self.token = token
                
                self.redirections = redirections
                
                self.meta = meta
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.v = v
                
                self.banner = banner
                
                self.logo = logo
                
                self.favicon = favicon
                
                self.domains = domains
                
                self.appType = appType
                
                self.mobileLogo = mobileLogo
                
                self.domain = domain
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                website = try? container.decode(ApplicationWebsite.self, forKey: .website)
                
                cors = try? container.decode(ApplicationCors.self, forKey: .cors)
                
                auth = try? container.decode(ApplicationAuth.self, forKey: .auth)
                
                description = try? container.decode(String.self, forKey: .description)
                
                channelType = try? container.decode(String.self, forKey: .channelType)
                
                cacheTtl = try? container.decode(Int.self, forKey: .cacheTtl)
                
                isInternal = try? container.decode(Bool.self, forKey: .isInternal)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                id = try? container.decode(String.self, forKey: .id)
                
                name = try? container.decode(String.self, forKey: .name)
                
                owner = try? container.decode(String.self, forKey: .owner)
                
                companyId = try? container.decode(Int.self, forKey: .companyId)
                
                token = try? container.decode(String.self, forKey: .token)
                
                redirections = try? container.decode([ApplicationRedirections].self, forKey: .redirections)
                
                meta = try? container.decode([ApplicationMeta].self, forKey: .meta)
                
                createdAt = try? container.decode(String.self, forKey: .createdAt)
                
                updatedAt = try? container.decode(String.self, forKey: .updatedAt)
                
                v = try? container.decode(Int.self, forKey: .v)
                
                banner = try? container.decode(SecureUrl.self, forKey: .banner)
                
                logo = try? container.decode(SecureUrl.self, forKey: .logo)
                
                favicon = try? container.decode(SecureUrl.self, forKey: .favicon)
                
                domains = try? container.decode([Domain].self, forKey: .domains)
                
                appType = try? container.decode(String.self, forKey: .appType)
                
                mobileLogo = try? container.decode(SecureUrl.self, forKey: .mobileLogo)
                
                domain = try? container.decode(Domain.self, forKey: .domain)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(website, forKey: .website)
                
                try? container.encodeIfPresent(cors, forKey: .cors)
                
                try? container.encodeIfPresent(auth, forKey: .auth)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(channelType, forKey: .channelType)
                
                try? container.encodeIfPresent(cacheTtl, forKey: .cacheTtl)
                
                try? container.encodeIfPresent(isInternal, forKey: .isInternal)
                
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
                
            }
            
        }
        
        /*
            Model: NotFound
            Used By: Configuration
        */
        struct NotFound: Codable {
            
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
            Model: UnhandledError
            Used By: Configuration
        */
        struct UnhandledError: Codable {
            
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
            Model: BadRequest
            Used By: Configuration
        */
        struct BadRequest: Codable {
            
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
            Model: SuccessResponse
            Used By: Configuration
        */
        struct SuccessResponse: Codable {
            
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
            Model: InventoryBrandRule
            Used By: Configuration
        */
        struct InventoryBrandRule: Codable {
            
            public var criteria: String?
            
            public var brands: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case criteria = "criteria"
                
                case brands = "brands"
                
            }

            public init(brands: [Int]?, criteria: String?) {
                
                self.criteria = criteria
                
                self.brands = brands
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                criteria = try? container.decode(String.self, forKey: .criteria)
                
                brands = try? container.decode([Int].self, forKey: .brands)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(criteria, forKey: .criteria)
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
            }
            
        }
        
        /*
            Model: StoreCriteriaRule
            Used By: Configuration
        */
        struct StoreCriteriaRule: Codable {
            
            public var companies: [Int]?
            
            public var brands: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case companies = "companies"
                
                case brands = "brands"
                
            }

            public init(brands: [Int]?, companies: [Int]?) {
                
                self.companies = companies
                
                self.brands = brands
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                companies = try? container.decode([Int].self, forKey: .companies)
                
                brands = try? container.decode([Int].self, forKey: .brands)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(companies, forKey: .companies)
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
            }
            
        }
        
        /*
            Model: InventoryStoreRule
            Used By: Configuration
        */
        struct InventoryStoreRule: Codable {
            
            public var criteria: String?
            
            public var rules: [StoreCriteriaRule]?
            
            public var stores: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case criteria = "criteria"
                
                case rules = "rules"
                
                case stores = "stores"
                
            }

            public init(criteria: String?, rules: [StoreCriteriaRule]?, stores: [Int]?) {
                
                self.criteria = criteria
                
                self.rules = rules
                
                self.stores = stores
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                criteria = try? container.decode(String.self, forKey: .criteria)
                
                rules = try? container.decode([StoreCriteriaRule].self, forKey: .rules)
                
                stores = try? container.decode([Int].self, forKey: .stores)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(criteria, forKey: .criteria)
                
                try? container.encodeIfPresent(rules, forKey: .rules)
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
            }
            
        }
        
        /*
            Model: InventoryPaymentConfig
            Used By: Configuration
        */
        struct InventoryPaymentConfig: Codable {
            
            public var modeOfPayment: String?
            
            public var source: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case modeOfPayment = "mode_of_payment"
                
                case source = "source"
                
            }

            public init(modeOfPayment: String?, source: String?) {
                
                self.modeOfPayment = modeOfPayment
                
                self.source = source
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                modeOfPayment = try? container.decode(String.self, forKey: .modeOfPayment)
                
                source = try? container.decode(String.self, forKey: .source)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
                
                try? container.encodeIfPresent(source, forKey: .source)
                
            }
            
        }
        
        /*
            Model: StorePriorityRule
            Used By: Configuration
        */
        struct StorePriorityRule: Codable {
            
            public var enabled: Bool?
            
            public var storetypeOrder: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
                case storetypeOrder = "storetype_order"
                
            }

            public init(enabled: Bool?, storetypeOrder: [String]?) {
                
                self.enabled = enabled
                
                self.storetypeOrder = storetypeOrder
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                enabled = try? container.decode(Bool.self, forKey: .enabled)
                
                storetypeOrder = try? container.decode([String].self, forKey: .storetypeOrder)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                try? container.encodeIfPresent(storetypeOrder, forKey: .storetypeOrder)
                
            }
            
        }
        
        /*
            Model: ArticleAssignmentRule
            Used By: Configuration
        */
        struct ArticleAssignmentRule: Codable {
            
            public var storePriority: StorePriorityRule?
            

            public enum CodingKeys: String, CodingKey {
                
                case storePriority = "store_priority"
                
            }

            public init(storePriority: StorePriorityRule?) {
                
                self.storePriority = storePriority
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                storePriority = try? container.decode(StorePriorityRule.self, forKey: .storePriority)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(storePriority, forKey: .storePriority)
                
            }
            
        }
        
        /*
            Model: InventoryArticleAssignment
            Used By: Configuration
        */
        struct InventoryArticleAssignment: Codable {
            
            public var postOrderReassignment: Bool?
            
            public var enforcedStores: [Int]?
            
            public var rules: ArticleAssignmentRule?
            

            public enum CodingKeys: String, CodingKey {
                
                case postOrderReassignment = "post_order_reassignment"
                
                case enforcedStores = "enforced_stores"
                
                case rules = "rules"
                
            }

            public init(enforcedStores: [Int]?, postOrderReassignment: Bool?, rules: ArticleAssignmentRule?) {
                
                self.postOrderReassignment = postOrderReassignment
                
                self.enforcedStores = enforcedStores
                
                self.rules = rules
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                postOrderReassignment = try? container.decode(Bool.self, forKey: .postOrderReassignment)
                
                enforcedStores = try? container.decode([Int].self, forKey: .enforcedStores)
                
                rules = try? container.decode(ArticleAssignmentRule.self, forKey: .rules)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)
                
                try? container.encodeIfPresent(enforcedStores, forKey: .enforcedStores)
                
                try? container.encodeIfPresent(rules, forKey: .rules)
                
            }
            
        }
        
        /*
            Model: CompanyAddress
            Used By: Configuration
        */
        struct CompanyAddress: Codable {
            
            public var pincode: Int?
            
            public var address1: String?
            
            public var city: String?
            
            public var state: String?
            
            public var country: String?
            
            public var addressType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pincode = "pincode"
                
                case address1 = "address1"
                
                case city = "city"
                
                case state = "state"
                
                case country = "country"
                
                case addressType = "address_type"
                
            }

            public init(address1: String?, addressType: String?, city: String?, country: String?, pincode: Int?, state: String?) {
                
                self.pincode = pincode
                
                self.address1 = address1
                
                self.city = city
                
                self.state = state
                
                self.country = country
                
                self.addressType = addressType
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                pincode = try? container.decode(Int.self, forKey: .pincode)
                
                address1 = try? container.decode(String.self, forKey: .address1)
                
                city = try? container.decode(String.self, forKey: .city)
                
                state = try? container.decode(String.self, forKey: .state)
                
                country = try? container.decode(String.self, forKey: .country)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(address1, forKey: .address1)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
            }
            
        }
        
        /*
            Model: UserEmail
            Used By: Configuration
        */
        struct UserEmail: Codable {
            
            public var active: Bool?
            
            public var primary: Bool?
            
            public var verified: Bool?
            
            public var email: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case active = "active"
                
                case primary = "primary"
                
                case verified = "verified"
                
                case email = "email"
                
            }

            public init(active: Bool?, email: String?, primary: Bool?, verified: Bool?) {
                
                self.active = active
                
                self.primary = primary
                
                self.verified = verified
                
                self.email = email
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                active = try? container.decode(Bool.self, forKey: .active)
                
                primary = try? container.decode(Bool.self, forKey: .primary)
                
                verified = try? container.decode(Bool.self, forKey: .verified)
                
                email = try? container.decode(String.self, forKey: .email)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
            }
            
        }
        
        /*
            Model: UserPhoneNumber
            Used By: Configuration
        */
        struct UserPhoneNumber: Codable {
            
            public var active: Bool?
            
            public var primary: Bool?
            
            public var verified: Bool?
            
            public var countryCode: Int?
            
            public var phone: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case active = "active"
                
                case primary = "primary"
                
                case verified = "verified"
                
                case countryCode = "countryCode"
                
                case phone = "phone"
                
            }

            public init(active: Bool?, countryCode: Int?, phone: String?, primary: Bool?, verified: Bool?) {
                
                self.active = active
                
                self.primary = primary
                
                self.verified = verified
                
                self.countryCode = countryCode
                
                self.phone = phone
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                active = try? container.decode(Bool.self, forKey: .active)
                
                primary = try? container.decode(Bool.self, forKey: .primary)
                
                verified = try? container.decode(Bool.self, forKey: .verified)
                
                countryCode = try? container.decode(Int.self, forKey: .countryCode)
                
                phone = try? container.decode(String.self, forKey: .phone)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
            }
            
        }
        
        /*
            Model: Pagination
            Used By: Configuration
        */
        struct Pagination: Codable {
            
            public var type: String?
            
            public var size: Int?
            
            public var current: Int?
            
            public var hasNext: Bool?
            
            public var itemTotal: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case size = "size"
                
                case current = "current"
                
                case hasNext = "has_next"
                
                case itemTotal = "item_total"
                
            }

            public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
                
                self.type = type
                
                self.size = size
                
                self.current = current
                
                self.hasNext = hasNext
                
                self.itemTotal = itemTotal
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                type = try? container.decode(String.self, forKey: .type)
                
                size = try? container.decode(Int.self, forKey: .size)
                
                current = try? container.decode(Int.self, forKey: .current)
                
                hasNext = try? container.decode(Bool.self, forKey: .hasNext)
                
                itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
                
            }
            
        }
        
        /*
            Model: ApplicationInformation
            Used By: Configuration
        */
        struct ApplicationInformation: Codable {
            
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
            

            public enum CodingKeys: String, CodingKey {
                
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

            public init(address: [String: Any]?, application: String?, businessHighlights: [[String: Any]]?, copyrightText: String?, createdAt: String?, links: [[String: Any]]?, socialLinks: [String: Any]?, support: [String: Any]?, updatedAt: String?, id: String?, v: Int?) {
                
                self.address = address
                
                self.support = support
                
                self.socialLinks = socialLinks
                
                self.links = links
                
                self.copyrightText = copyrightText
                
                self.id = id
                
                self.businessHighlights = businessHighlights
                
                self.application = application
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.v = v
                
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
            Model: ApplicationDetail
            Used By: Configuration
        */
        struct ApplicationDetail: Codable {
            
            public var name: String
            
            public var description: String
            
            public var logo: SecureUrl
            
            public var mobileLogo: SecureUrl
            
            public var favicon: SecureUrl
            
            public var banner: SecureUrl
            
            public var domain: Domain?
            
            public var domains: [Domain]?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case description = "description"
                
                case logo = "logo"
                
                case mobileLogo = "mobileLogo"
                
                case favicon = "favicon"
                
                case banner = "banner"
                
                case domain = "domain"
                
                case domains = "domains"
                
                case id = "_id"
                
            }

            public init(banner: SecureUrl, description: String, domain: Domain?, domains: [Domain]?, favicon: SecureUrl, logo: SecureUrl, mobileLogo: SecureUrl, name: String, id: String?) {
                
                self.name = name
                
                self.description = description
                
                self.logo = logo
                
                self.mobileLogo = mobileLogo
                
                self.favicon = favicon
                
                self.banner = banner
                
                self.domain = domain
                
                self.domains = domains
                
                self.id = id
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try container.decode(String.self, forKey: .name)
                
                description = try container.decode(String.self, forKey: .description)
                
                logo = try container.decode(SecureUrl.self, forKey: .logo)
                
                mobileLogo = try container.decode(SecureUrl.self, forKey: .mobileLogo)
                
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)
                
                banner = try container.decode(SecureUrl.self, forKey: .banner)
                
                domain = try? container.decode(Domain.self, forKey: .domain)
                
                domains = try? container.decode([Domain].self, forKey: .domains)
                
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
                
                try? container.encodeIfPresent(id, forKey: .id)
                
            }
            
        }
        
        /*
            Model: CurrenciesResponse
            Used By: Configuration
        */
        struct CurrenciesResponse: Codable {
            
            public var items: [Currency]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [Currency]?) {
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([Currency].self, forKey: .items)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: OrderingStore
            Used By: Configuration
        */
        struct OrderingStore: Codable {
            
            public var address: [String: Any]?
            
            public var id: String?
            
            public var uid: Int?
            
            public var name: String?
            
            public var displayName: String?
            
            public var storeType: String?
            
            public var storeCode: String?
            
            public var pincode: Int?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
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

            public init(address: [String: Any]?, code: String?, displayName: String?, name: String?, pincode: Int?, storeCode: String?, storeType: String?, uid: Int?, id: String?) {
                
                self.address = address
                
                self.id = id
                
                self.uid = uid
                
                self.name = name
                
                self.displayName = displayName
                
                self.storeType = storeType
                
                self.storeCode = storeCode
                
                self.pincode = pincode
                
                self.code = code
                
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
            Model: OrderingStores
            Used By: Configuration
        */
        struct OrderingStores: Codable {
            
            public var page: Pagination?
            
            public var items: [OrderingStore]?
            
            public var deployedStores: [Int]?
            
            public var allStores: Bool?
            
            public var enabled: Bool?
            
            public var type: String?
            
            public var id: String?
            
            public var app: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
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

            public init(allStores: Bool?, app: String?, deployedStores: [Int]?, enabled: Bool?, items: [OrderingStore]?, page: Pagination?, type: String?, id: String?, v: Int?) {
                
                self.page = page
                
                self.items = items
                
                self.deployedStores = deployedStores
                
                self.allStores = allStores
                
                self.enabled = enabled
                
                self.type = type
                
                self.id = id
                
                self.app = app
                
                self.v = v
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                page = try? container.decode(Pagination.self, forKey: .page)
                
                items = try? container.decode([OrderingStore].self, forKey: .items)
                
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
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        struct AggregatorConfigDetail: Codable {
            
            public var sdk: Bool?
            
            public var userId: String?
            
            public var api: String?
            
            public var configType: String
            
            public var merchantId: String?
            
            public var key: String
            
            public var secret: String
            
            public var merchantKey: String?
            
            public var verifyApi: String?
            
            public var pin: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case sdk = "sdk"
                
                case userId = "user_id"
                
                case api = "api"
                
                case configType = "config_type"
                
                case merchantId = "merchant_id"
                
                case key = "key"
                
                case secret = "secret"
                
                case merchantKey = "merchant_key"
                
                case verifyApi = "verify_api"
                
                case pin = "pin"
                
            }

            public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
                
                self.sdk = sdk
                
                self.userId = userId
                
                self.api = api
                
                self.configType = configType
                
                self.merchantId = merchantId
                
                self.key = key
                
                self.secret = secret
                
                self.merchantKey = merchantKey
                
                self.verifyApi = verifyApi
                
                self.pin = pin
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                sdk = try? container.decode(Bool.self, forKey: .sdk)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                api = try? container.decode(String.self, forKey: .api)
                
                configType = try container.decode(String.self, forKey: .configType)
                
                merchantId = try? container.decode(String.self, forKey: .merchantId)
                
                key = try container.decode(String.self, forKey: .key)
                
                secret = try container.decode(String.self, forKey: .secret)
                
                merchantKey = try? container.decode(String.self, forKey: .merchantKey)
                
                verifyApi = try? container.decode(String.self, forKey: .verifyApi)
                
                pin = try? container.decode(String.self, forKey: .pin)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sdk, forKey: .sdk)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(api, forKey: .api)
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                try? container.encodeIfPresent(merchantId, forKey: .merchantId)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
                
                try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
                
                try? container.encodeIfPresent(pin, forKey: .pin)
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        struct AggregatorsConfigDetailResponse: Codable {
            
            public var rupifi: AggregatorConfigDetail?
            
            public var env: String
            
            public var success: Bool
            
            public var simpl: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var payumoney: AggregatorConfigDetail?
            
            public var razorpay: AggregatorConfigDetail?
            
            public var juspay: AggregatorConfigDetail?
            
            public var mswipe: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case rupifi = "rupifi"
                
                case env = "env"
                
                case success = "success"
                
                case simpl = "simpl"
                
                case stripe = "stripe"
                
                case ccavenue = "ccavenue"
                
                case payumoney = "payumoney"
                
                case razorpay = "razorpay"
                
                case juspay = "juspay"
                
                case mswipe = "mswipe"
                
            }

            public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
                
                self.rupifi = rupifi
                
                self.env = env
                
                self.success = success
                
                self.simpl = simpl
                
                self.stripe = stripe
                
                self.ccavenue = ccavenue
                
                self.payumoney = payumoney
                
                self.razorpay = razorpay
                
                self.juspay = juspay
                
                self.mswipe = mswipe
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
                env = try container.decode(String.self, forKey: .env)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
                stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                
                ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                
                payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
                razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
                juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                
                mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
            }
            
        }
        
        /*
            Model: ErrorCodeAndDescription
            Used By: Payment
        */
        struct ErrorCodeAndDescription: Codable {
            
            public var description: String
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case code = "code"
                
            }

            public init(code: String, description: String) {
                
                self.description = description
                
                self.code = code
                
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
            Model: HttpErrorCodeAndResponse
            Used By: Payment
        */
        struct HttpErrorCodeAndResponse: Codable {
            
            public var success: Bool
            
            public var error: ErrorCodeAndDescription
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case error = "error"
                
            }

            public init(error: ErrorCodeAndDescription, success: Bool) {
                
                self.success = success
                
                self.error = error
                
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
            Used By: Payment
        */
        struct AttachCardRequest: Codable {
            
            public var refresh: Bool?
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case refresh = "refresh"
                
                case cardId = "card_id"
                
            }

            public init(cardId: String, refresh: Bool?) {
                
                self.refresh = refresh
                
                self.cardId = cardId
                
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

            public init(data: [String: Any], message: String?, success: Bool) {
                
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
            
            public var api: String?
            
            public var aggregator: String
            
            public var customerId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case api = "api"
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
            }

            public init(aggregator: String, api: String?, customerId: String?) {
                
                self.api = api
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
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
            Used By: Payment
        */
        struct ActiveCardPaymentGatewayResponse: Codable {
            
            public var success: Bool
            
            public var message: String
            
            public var cards: CardPaymentGateway
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case cards = "cards"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.success = success
                
                self.message = message
                
                self.cards = cards
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                message = try container.decode(String.self, forKey: .message)
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        struct Card: Codable {
            
            public var cardId: String?
            
            public var cardToken: String?
            
            public var cardNumber: String?
            
            public var cardType: String?
            
            public var cardName: String?
            
            public var cardBrand: String?
            
            public var cardIssuer: String?
            
            public var nickname: String?
            
            public var cardIsin: String?
            
            public var cardReference: String?
            
            public var expMonth: Int?
            
            public var expired: Bool?
            
            public var aggregatorName: String
            
            public var expYear: Int?
            
            public var cardFingerprint: String?
            
            public var cardBrandImage: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
                case cardToken = "card_token"
                
                case cardNumber = "card_number"
                
                case cardType = "card_type"
                
                case cardName = "card_name"
                
                case cardBrand = "card_brand"
                
                case cardIssuer = "card_issuer"
                
                case nickname = "nickname"
                
                case cardIsin = "card_isin"
                
                case cardReference = "card_reference"
                
                case expMonth = "exp_month"
                
                case expired = "expired"
                
                case aggregatorName = "aggregator_name"
                
                case expYear = "exp_year"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardBrandImage = "card_brand_image"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
                
                self.cardId = cardId
                
                self.cardToken = cardToken
                
                self.cardNumber = cardNumber
                
                self.cardType = cardType
                
                self.cardName = cardName
                
                self.cardBrand = cardBrand
                
                self.cardIssuer = cardIssuer
                
                self.nickname = nickname
                
                self.cardIsin = cardIsin
                
                self.cardReference = cardReference
                
                self.expMonth = expMonth
                
                self.expired = expired
                
                self.aggregatorName = aggregatorName
                
                self.expYear = expYear
                
                self.cardFingerprint = cardFingerprint
                
                self.cardBrandImage = cardBrandImage
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cardId = try? container.decode(String.self, forKey: .cardId)
                
                cardToken = try? container.decode(String.self, forKey: .cardToken)
                
                cardNumber = try? container.decode(String.self, forKey: .cardNumber)
                
                cardType = try? container.decode(String.self, forKey: .cardType)
                
                cardName = try? container.decode(String.self, forKey: .cardName)
                
                cardBrand = try? container.decode(String.self, forKey: .cardBrand)
                
                cardIssuer = try? container.decode(String.self, forKey: .cardIssuer)
                
                nickname = try? container.decode(String.self, forKey: .nickname)
                
                cardIsin = try? container.decode(String.self, forKey: .cardIsin)
                
                cardReference = try? container.decode(String.self, forKey: .cardReference)
                
                expMonth = try? container.decode(Int.self, forKey: .expMonth)
                
                expired = try? container.decode(Bool.self, forKey: .expired)
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                expYear = try? container.decode(Int.self, forKey: .expYear)
                
                cardFingerprint = try? container.decode(String.self, forKey: .cardFingerprint)
                
                cardBrandImage = try? container.decode(String.self, forKey: .cardBrandImage)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
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

            public init(data: [Card]?, message: String, success: Bool) {
                
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

            public init(message: String?, success: Bool) {
                
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
            
            public var transactionAmountInPaise: Int
            
            public var phoneNumber: String
            
            public var aggregator: String
            
            public var merchantParams: [String: Any]
            
            public var payload: String
            

            public enum CodingKeys: String, CodingKey {
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case phoneNumber = "phone_number"
                
                case aggregator = "aggregator"
                
                case merchantParams = "merchant_params"
                
                case payload = "payload"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
                self.phoneNumber = phoneNumber
                
                self.aggregator = aggregator
                
                self.merchantParams = merchantParams
                
                self.payload = payload
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                payload = try container.decode(String.self, forKey: .payload)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                try? container.encodeIfPresent(payload, forKey: .payload)
                
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

            public init(data: [String: Any], message: String, success: Bool) {
                
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
            
            public var orderId: String
            
            public var aggregator: String
            
            public var transactionToken: String?
            
            public var verified: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case transactionToken = "transaction_token"
                
                case verified = "verified"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
                
                self.amount = amount
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.transactionToken = transactionToken
                
                self.verified = verified
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                transactionToken = try? container.decode(String.self, forKey: .transactionToken)
                
                verified = try? container.decode(Bool.self, forKey: .verified)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        struct ChargeCustomerResponse: Codable {
            
            public var success: Bool
            
            public var orderId: String
            
            public var aggregator: String
            
            public var status: String
            
            public var message: String
            
            public var deliveryAddressId: String?
            
            public var cartId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case status = "status"
                
                case message = "message"
                
                case deliveryAddressId = "delivery_address_id"
                
                case cartId = "cart_id"
                
            }

            public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
                
                self.success = success
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.status = status
                
                self.message = message
                
                self.deliveryAddressId = deliveryAddressId
                
                self.cartId = cartId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                status = try container.decode(String.self, forKey: .status)
                
                message = try container.decode(String.self, forKey: .message)
                
                deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
                
                cartId = try? container.decode(String.self, forKey: .cartId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        struct PaymentInitializationRequest: Codable {
            
            public var customerId: String
            
            public var merchantOrderId: String
            
            public var aggregator: String
            
            public var pollingUrl: String
            
            public var razorpayPaymentId: String
            
            public var virtualId: String?
            
            public var method: String
            
            public var timeout: Int
            
            public var aggregatorOrderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case customerId = "customer_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case aggregator = "aggregator"
                
                case pollingUrl = "polling_url"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case virtualId = "virtual_id"
                
                case method = "method"
                
                case timeout = "timeout"
                
                case aggregatorOrderId = "aggregator_order_id"
                
            }

            public init(aggregator: String, aggregatorOrderId: String, customerId: String, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String, timeout: Int, virtualId: String?) {
                
                self.customerId = customerId
                
                self.merchantOrderId = merchantOrderId
                
                self.aggregator = aggregator
                
                self.pollingUrl = pollingUrl
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.virtualId = virtualId
                
                self.method = method
                
                self.timeout = timeout
                
                self.aggregatorOrderId = aggregatorOrderId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                virtualId = try? container.decode(String.self, forKey: .virtualId)
                
                method = try container.decode(String.self, forKey: .method)
                
                timeout = try container.decode(Int.self, forKey: .timeout)
                
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                try? container.encodeIfPresent(virtualId, forKey: .virtualId)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(timeout, forKey: .timeout)
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        struct PaymentInitializationResponse: Codable {
            
            public var success: Bool
            
            public var amount: Int
            
            public var orderId: String
            
            public var currency: String
            
            public var customerId: String
            
            public var merchantOrderId: String
            
            public var email: String
            
            public var aggregator: String
            
            public var contact: String
            
            public var status: String
            
            public var message: String?
            
            public var vpa: String
            
            public var method: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case amount = "amount"
                
                case orderId = "order_id"
                
                case currency = "currency"
                
                case customerId = "customer_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case email = "email"
                
                case aggregator = "aggregator"
                
                case contact = "contact"
                
                case status = "status"
                
                case message = "message"
                
                case vpa = "vpa"
                
                case method = "method"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, message: String?, method: String, orderId: String, status: String, success: Bool, vpa: String) {
                
                self.success = success
                
                self.amount = amount
                
                self.orderId = orderId
                
                self.currency = currency
                
                self.customerId = customerId
                
                self.merchantOrderId = merchantOrderId
                
                self.email = email
                
                self.aggregator = aggregator
                
                self.contact = contact
                
                self.status = status
                
                self.message = message
                
                self.vpa = vpa
                
                self.method = method
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                currency = try container.decode(String.self, forKey: .currency)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                email = try container.decode(String.self, forKey: .email)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                contact = try container.decode(String.self, forKey: .contact)
                
                status = try container.decode(String.self, forKey: .status)
                
                message = try? container.decode(String.self, forKey: .message)
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                method = try container.decode(String.self, forKey: .method)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        struct PaymentStatusUpdateRequest: Codable {
            
            public var amount: Int
            
            public var orderId: String
            
            public var currency: String
            
            public var customerId: String
            
            public var merchantOrderId: String
            
            public var email: String
            
            public var aggregator: String
            
            public var contact: String
            
            public var status: String
            
            public var vpa: String
            
            public var method: String
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case orderId = "order_id"
                
                case currency = "currency"
                
                case customerId = "customer_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case email = "email"
                
                case aggregator = "aggregator"
                
                case contact = "contact"
                
                case status = "status"
                
                case vpa = "vpa"
                
                case method = "method"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.amount = amount
                
                self.orderId = orderId
                
                self.currency = currency
                
                self.customerId = customerId
                
                self.merchantOrderId = merchantOrderId
                
                self.email = email
                
                self.aggregator = aggregator
                
                self.contact = contact
                
                self.status = status
                
                self.vpa = vpa
                
                self.method = method
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                currency = try container.decode(String.self, forKey: .currency)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                email = try container.decode(String.self, forKey: .email)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                contact = try container.decode(String.self, forKey: .contact)
                
                status = try container.decode(String.self, forKey: .status)
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                method = try container.decode(String.self, forKey: .method)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        struct PaymentStatusUpdateResponse: Codable {
            
            public var retry: Bool
            
            public var aggregatorName: String
            
            public var status: String
            

            public enum CodingKeys: String, CodingKey {
                
                case retry = "retry"
                
                case aggregatorName = "aggregator_name"
                
                case status = "status"
                
            }

            public init(aggregatorName: String, retry: Bool, status: String) {
                
                self.retry = retry
                
                self.aggregatorName = aggregatorName
                
                self.status = status
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                retry = try container.decode(Bool.self, forKey: .retry)
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                status = try container.decode(String.self, forKey: .status)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(retry, forKey: .retry)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
            }
            
        }
        
        /*
            Model: PaymentModeLogo
            Used By: Payment
        */
        struct PaymentModeLogo: Codable {
            
            public var small: String
            
            public var large: String
            

            public enum CodingKeys: String, CodingKey {
                
                case small = "small"
                
                case large = "large"
                
            }

            public init(large: String, small: String) {
                
                self.small = small
                
                self.large = large
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                small = try container.decode(String.self, forKey: .small)
                
                large = try container.decode(String.self, forKey: .large)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(small, forKey: .small)
                
                try? container.encodeIfPresent(large, forKey: .large)
                
            }
            
        }
        
        /*
            Model: PaymentModeList
            Used By: Payment
        */
        struct PaymentModeList: Codable {
            
            public var cardId: String?
            
            public var cardType: String?
            
            public var cardName: String?
            
            public var displayName: String?
            
            public var cardIssuer: String?
            
            public var nickname: String?
            
            public var cardIsin: String?
            
            public var expMonth: Int?
            
            public var name: String?
            
            public var logoUrl: PaymentModeLogo?
            
            public var merchantCode: String?
            
            public var cardFingerprint: String?
            
            public var code: String?
            
            public var cardBrandImage: String?
            
            public var cardBrand: String?
            
            public var expired: Bool?
            
            public var cardNumber: String?
            
            public var expYear: Int?
            
            public var cardToken: String?
            
            public var displayPriority: Int?
            
            public var cardReference: String?
            
            public var aggregatorName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
                case cardType = "card_type"
                
                case cardName = "card_name"
                
                case displayName = "display_name"
                
                case cardIssuer = "card_issuer"
                
                case nickname = "nickname"
                
                case cardIsin = "card_isin"
                
                case expMonth = "exp_month"
                
                case name = "name"
                
                case logoUrl = "logo_url"
                
                case merchantCode = "merchant_code"
                
                case cardFingerprint = "card_fingerprint"
                
                case code = "code"
                
                case cardBrandImage = "card_brand_image"
                
                case cardBrand = "card_brand"
                
                case expired = "expired"
                
                case cardNumber = "card_number"
                
                case expYear = "exp_year"
                
                case cardToken = "card_token"
                
                case displayPriority = "display_priority"
                
                case cardReference = "card_reference"
                
                case aggregatorName = "aggregator_name"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?) {
                
                self.cardId = cardId
                
                self.cardType = cardType
                
                self.cardName = cardName
                
                self.displayName = displayName
                
                self.cardIssuer = cardIssuer
                
                self.nickname = nickname
                
                self.cardIsin = cardIsin
                
                self.expMonth = expMonth
                
                self.name = name
                
                self.logoUrl = logoUrl
                
                self.merchantCode = merchantCode
                
                self.cardFingerprint = cardFingerprint
                
                self.code = code
                
                self.cardBrandImage = cardBrandImage
                
                self.cardBrand = cardBrand
                
                self.expired = expired
                
                self.cardNumber = cardNumber
                
                self.expYear = expYear
                
                self.cardToken = cardToken
                
                self.displayPriority = displayPriority
                
                self.cardReference = cardReference
                
                self.aggregatorName = aggregatorName
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cardId = try? container.decode(String.self, forKey: .cardId)
                
                cardType = try? container.decode(String.self, forKey: .cardType)
                
                cardName = try? container.decode(String.self, forKey: .cardName)
                
                displayName = try? container.decode(String.self, forKey: .displayName)
                
                cardIssuer = try? container.decode(String.self, forKey: .cardIssuer)
                
                nickname = try? container.decode(String.self, forKey: .nickname)
                
                cardIsin = try? container.decode(String.self, forKey: .cardIsin)
                
                expMonth = try? container.decode(Int.self, forKey: .expMonth)
                
                name = try? container.decode(String.self, forKey: .name)
                
                logoUrl = try? container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                cardFingerprint = try? container.decode(String.self, forKey: .cardFingerprint)
                
                code = try? container.decode(String.self, forKey: .code)
                
                cardBrandImage = try? container.decode(String.self, forKey: .cardBrandImage)
                
                cardBrand = try? container.decode(String.self, forKey: .cardBrand)
                
                expired = try? container.decode(Bool.self, forKey: .expired)
                
                cardNumber = try? container.decode(String.self, forKey: .cardNumber)
                
                expYear = try? container.decode(Int.self, forKey: .expYear)
                
                cardToken = try? container.decode(String.self, forKey: .cardToken)
                
                displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
                
                cardReference = try? container.decode(String.self, forKey: .cardReference)
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        struct RootPaymentMode: Codable {
            
            public var list: [PaymentModeList]?
            
            public var displayName: String
            
            public var displayPriority: Int
            
            public var addCardEnabled: Bool?
            
            public var name: String
            
            public var aggregatorName: String?
            
            public var anonymousEnable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case list = "list"
                
                case displayName = "display_name"
                
                case displayPriority = "display_priority"
                
                case addCardEnabled = "add_card_enabled"
                
                case name = "name"
                
                case aggregatorName = "aggregator_name"
                
                case anonymousEnable = "anonymous_enable"
                
            }

            public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
                
                self.list = list
                
                self.displayName = displayName
                
                self.displayPriority = displayPriority
                
                self.addCardEnabled = addCardEnabled
                
                self.name = name
                
                self.aggregatorName = aggregatorName
                
                self.anonymousEnable = anonymousEnable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                list = try? container.decode([PaymentModeList].self, forKey: .list)
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                addCardEnabled = try? container.decode(Bool.self, forKey: .addCardEnabled)
                
                name = try container.decode(String.self, forKey: .name)
                
                aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
                
                anonymousEnable = try? container.decode(Bool.self, forKey: .anonymousEnable)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                try? container.encodeIfPresent(addCardEnabled, forKey: .addCardEnabled)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(anonymousEnable, forKey: .anonymousEnable)
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        struct AggregatorRoute: Codable {
            
            public var data: [String: Any]?
            
            public var apiLink: String?
            
            public var paymentFlow: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case apiLink = "api_link"
                
                case paymentFlow = "payment_flow"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?) {
                
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
            Model: PaymentModeRouteResponse
            Used By: Payment
        */
        struct PaymentModeRouteResponse: Codable {
            
            public var paymentOptions: [RootPaymentMode]
            
            public var success: Bool
            
            public var paymentFlows: PaymentFlow
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOptions = "payment_options"
                
                case success = "success"
                
                case paymentFlows = "payment_flows"
                
            }

            public init(paymentFlows: PaymentFlow, paymentOptions: [RootPaymentMode], success: Bool) {
                
                self.paymentOptions = paymentOptions
                
                self.success = success
                
                self.paymentFlows = paymentFlows
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                paymentOptions = try container.decode([RootPaymentMode].self, forKey: .paymentOptions)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryDetails
            Used By: Payment
        */
        struct OrderBeneficiaryDetails: Codable {
            
            public var accountNo: String
            
            public var displayName: String
            
            public var transferMode: String
            
            public var bankName: String
            
            public var delightsUserName: String
            
            public var id: Int
            
            public var title: String
            
            public var address: String
            
            public var mobile: Bool?
            
            public var accountHolder: String
            
            public var subtitle: String
            
            public var branchName: Bool?
            
            public var email: String
            
            public var createdOn: String
            
            public var ifscCode: String
            
            public var modifiedOn: String
            
            public var beneficiaryId: String
            
            public var isActive: Bool
            
            public var comment: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case accountNo = "account_no"
                
                case displayName = "display_name"
                
                case transferMode = "transfer_mode"
                
                case bankName = "bank_name"
                
                case delightsUserName = "delights_user_name"
                
                case id = "id"
                
                case title = "title"
                
                case address = "address"
                
                case mobile = "mobile"
                
                case accountHolder = "account_holder"
                
                case subtitle = "subtitle"
                
                case branchName = "branch_name"
                
                case email = "email"
                
                case createdOn = "created_on"
                
                case ifscCode = "ifsc_code"
                
                case modifiedOn = "modified_on"
                
                case beneficiaryId = "beneficiary_id"
                
                case isActive = "is_active"
                
                case comment = "comment"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.accountNo = accountNo
                
                self.displayName = displayName
                
                self.transferMode = transferMode
                
                self.bankName = bankName
                
                self.delightsUserName = delightsUserName
                
                self.id = id
                
                self.title = title
                
                self.address = address
                
                self.mobile = mobile
                
                self.accountHolder = accountHolder
                
                self.subtitle = subtitle
                
                self.branchName = branchName
                
                self.email = email
                
                self.createdOn = createdOn
                
                self.ifscCode = ifscCode
                
                self.modifiedOn = modifiedOn
                
                self.beneficiaryId = beneficiaryId
                
                self.isActive = isActive
                
                self.comment = comment
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                id = try container.decode(Int.self, forKey: .id)
                
                title = try container.decode(String.self, forKey: .title)
                
                address = try container.decode(String.self, forKey: .address)
                
                mobile = try? container.decode(Bool.self, forKey: .mobile)
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                branchName = try? container.decode(Bool.self, forKey: .branchName)
                
                email = try container.decode(String.self, forKey: .email)
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                comment = try? container.decode(Bool.self, forKey: .comment)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
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
            
            public var description: String
            
            public var success: Bool
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case success = "success"
                
                case code = "code"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.description = description
                
                self.success = success
                
                self.code = code
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                description = try container.decode(String.self, forKey: .description)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                code = try container.decode(String.self, forKey: .code)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
            }
            
        }
        
        /*
            Model: IfscCodeResponse
            Used By: Payment
        */
        struct IfscCodeResponse: Codable {
            
            public var branchName: String
            
            public var success: Bool?
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case branchName = "branch_name"
                
                case success = "success"
                
                case bankName = "bank_name"
                
            }

            public init(bankName: String, branchName: String, success: Bool?) {
                
                self.branchName = branchName
                
                self.success = success
                
                self.bankName = bankName
                
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
            Used By: Payment
        */
        struct ErrorCodeDescription: Codable {
            
            public var description: String
            
            public var success: Bool
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case success = "success"
                
                case code = "code"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.description = description
                
                self.success = success
                
                self.code = code
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                description = try container.decode(String.self, forKey: .description)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                code = try container.decode(String.self, forKey: .code)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        struct AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var otp: String
            
            public var hashKey: String
            
            public var requestId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case otp = "otp"
                
                case hashKey = "hash_key"
                
                case requestId = "request_id"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.otp = otp
                
                self.hashKey = hashKey
                
                self.requestId = requestId
                
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
            Used By: Payment
        */
        struct AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var otp: String
            
            public var hashKey: String
            
            public var requestId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case otp = "otp"
                
                case hashKey = "hash_key"
                
                case requestId = "request_id"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.otp = otp
                
                self.hashKey = hashKey
                
                self.requestId = requestId
                
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
            Used By: Payment
        */
        struct WrongOtpError: Codable {
            
            public var description: String
            
            public var success: String
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case success = "success"
                
            }

            public init(description: String, success: String) {
                
                self.description = description
                
                self.success = success
                
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
            Used By: Payment
        */
        struct BankDetails: Codable {
            
            public var accountHolder: String
            
            public var accountNo: String
            
            public var branchName: String
            
            public var email: String
            
            public var bankName: String
            
            public var mobile: String
            
            public var ifscCode: String
            
            public var comment: String?
            
            public var address: String
            

            public enum CodingKeys: String, CodingKey {
                
                case accountHolder = "account_holder"
                
                case accountNo = "account_no"
                
                case branchName = "branch_name"
                
                case email = "email"
                
                case bankName = "bank_name"
                
                case mobile = "mobile"
                
                case ifscCode = "ifsc_code"
                
                case comment = "comment"
                
                case address = "address"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String) {
                
                self.accountHolder = accountHolder
                
                self.accountNo = accountNo
                
                self.branchName = branchName
                
                self.email = email
                
                self.bankName = bankName
                
                self.mobile = mobile
                
                self.ifscCode = ifscCode
                
                self.comment = comment
                
                self.address = address
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                email = try container.decode(String.self, forKey: .email)
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                address = try container.decode(String.self, forKey: .address)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        struct AddBeneficiaryDetailsRequest: Codable {
            
            public var details: BankDetails
            
            public var delights: Bool
            
            public var orderId: String
            
            public var transferMode: String
            
            public var shipmentId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case delights = "delights"
                
                case orderId = "order_id"
                
                case transferMode = "transfer_mode"
                
                case shipmentId = "shipment_id"
                
            }

            public init(delights: Bool, details: BankDetails, orderId: String, shipmentId: String, transferMode: String) {
                
                self.details = details
                
                self.delights = delights
                
                self.orderId = orderId
                
                self.transferMode = transferMode
                
                self.shipmentId = shipmentId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                details = try container.decode(BankDetails.self, forKey: .details)
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
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

            public init(data: [String: Any]?, message: String, success: Bool) {
                
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
            
            public var success: Bool?
            
            public var isVerifiedFlag: String
            
            public var requestId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
                case requestId = "request_id"
                
            }

            public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.requestId = requestId
                
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
            Used By: Payment
        */
        struct SetDefaultBeneficiaryRequest: Codable {
            
            public var beneficiaryId: String
            
            public var orderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case beneficiaryId = "beneficiary_id"
                
                case orderId = "order_id"
                
            }

            public init(beneficiaryId: String, orderId: String) {
                
                self.beneficiaryId = beneficiaryId
                
                self.orderId = orderId
                
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
            Used By: Payment
        */
        struct SetDefaultBeneficiaryResponse: Codable {
            
            public var success: Bool?
            
            public var isBeneficiarySet: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isBeneficiarySet = "is_beneficiary_set"
                
            }

            public init(isBeneficiarySet: Bool, success: Bool?) {
                
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

            public init(forceTransition: Bool, shipments: [String: Any], task: Bool) {
                
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

            public init(active: Bool?, applicationId: String?, bannerImage: Asset?, createdAt: String?, infoAction: Action?, name: String?, rule: [String: Any]?, share: ShareMessages?, subText: String?, text: String?, type: String?, updatedAt: String?, updatedBy: String?, url: String?, schedule: String?) {
                
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

            public init(applicationId: String?, claimed: Bool?, createdAt: String?, expiresOn: String?, meta: String?, points: Double?, remainingPoints: Double?, text1: String?, text2: String?, text3: String?, txnName: String?, updatedAt: String?, userId: String?, id: String?) {
                
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
            
            public var articleUid: String
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case shipmentType = "shipment_type"
                
                case articleUid = "article_uid"
                
                case quantity = "quantity"
                
            }

            public init(articleUid: String, quantity: Int?, shipmentType: String) {
                
                self.shipmentType = shipmentType
                
                self.articleUid = articleUid
                
                self.quantity = quantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                shipmentType = try container.decode(String.self, forKey: .shipmentType)
                
                articleUid = try container.decode(String.self, forKey: .articleUid)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                try? container.encodeIfPresent(articleUid, forKey: .articleUid)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
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
            
            public var pickupStores: [Int]?
            
            public var availableModes: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case pickupStores = "pickup_stores"
                
                case availableModes = "available_modes"
                
            }

            public init(availableModes: [String]?, pickupStores: [Int]?) {
                
                self.pickupStores = pickupStores
                
                self.availableModes = availableModes
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                pickupStores = try? container.decode([Int].self, forKey: .pickupStores)
                
                availableModes = try? container.decode([String].self, forKey: .availableModes)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(pickupStores, forKey: .pickupStores)
                
                try? container.encodeIfPresent(availableModes, forKey: .availableModes)
                
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

            public init(data: [[String: Any]], error: [String: Any], requestUuid: String, stormbreakerUuid: String, success: Bool) {
                
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

            public init(action: String, identifier: String, journey: String, locationDetails: [[String: Any]], source: String, toPincode: String) {
                
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

            public init(action: String, error: [String: Any], identifier: String, journey: String, locationDetails: [[String: Any]], requestUuid: String, source: String, stormbreakerUuid: String, success: Bool, toCity: String, toPincode: String) {
                
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