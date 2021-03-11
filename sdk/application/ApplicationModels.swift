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
            
            public var action: ProductListingAction?
            
            public var name: String?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(action: ProductListingAction?, name: String?, uid: Int?, logo: Media?) {
                
                self.action = action
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                name = try? container.decode(String.self, forKey: .name)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
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
            
            public var rating: Double?
            
            public var tryouts: [String]?
            
            public var teaserTag: String?
            
            public var description: String?
            
            public var attributes: [String: Any]?
            
            public var uid: Int?
            
            public var ratingCount: Int?
            
            public var slug: String
            
            public var medias: [Media]?
            
            public var color: String?
            
            public var name: String?
            
            public var imageNature: String?
            
            public var similars: [String]?
            
            public var shortDescription: String?
            
            public var type: String?
            
            public var highlights: [String]?
            
            public var brand: ProductBrand?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var productOnlineDate: String?
            
            public var itemType: String?
            
            public var categories: [ProductBrand]?
            
            public var hasVariant: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case rating = "rating"
                
                case tryouts = "tryouts"
                
                case teaserTag = "teaser_tag"
                
                case description = "description"
                
                case attributes = "attributes"
                
                case uid = "uid"
                
                case ratingCount = "rating_count"
                
                case slug = "slug"
                
                case medias = "medias"
                
                case color = "color"
                
                case name = "name"
                
                case imageNature = "image_nature"
                
                case similars = "similars"
                
                case shortDescription = "short_description"
                
                case type = "type"
                
                case highlights = "highlights"
                
                case brand = "brand"
                
                case groupedAttributes = "grouped_attributes"
                
                case productOnlineDate = "product_online_date"
                
                case itemType = "item_type"
                
                case categories = "categories"
                
                case hasVariant = "has_variant"
                
            }

            public init(rating: Double?, tryouts: [String]?, teaserTag: String?, description: String?, attributes: [String: Any]?, uid: Int?, ratingCount: Int?, slug: String, medias: [Media]?, color: String?, name: String?, imageNature: String?, similars: [String]?, shortDescription: String?, type: String?, highlights: [String]?, brand: ProductBrand?, groupedAttributes: [ProductDetailGroupedAttribute]?, productOnlineDate: String?, itemType: String?, categories: [ProductBrand]?, hasVariant: Bool?) {
                
                self.rating = rating
                
                self.tryouts = tryouts
                
                self.teaserTag = teaserTag
                
                self.description = description
                
                self.attributes = attributes
                
                self.uid = uid
                
                self.ratingCount = ratingCount
                
                self.slug = slug
                
                self.medias = medias
                
                self.color = color
                
                self.name = name
                
                self.imageNature = imageNature
                
                self.similars = similars
                
                self.shortDescription = shortDescription
                
                self.type = type
                
                self.highlights = highlights
                
                self.brand = brand
                
                self.groupedAttributes = groupedAttributes
                
                self.productOnlineDate = productOnlineDate
                
                self.itemType = itemType
                
                self.categories = categories
                
                self.hasVariant = hasVariant
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                rating = try? container.decode(Double.self, forKey: .rating)
                
                tryouts = try? container.decode([String].self, forKey: .tryouts)
                
                teaserTag = try? container.decode(String.self, forKey: .teaserTag)
                
                description = try? container.decode(String.self, forKey: .description)
                
                attributes = try? container.decode([String: Any].self, forKey: .attributes)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
                
                slug = try container.decode(String.self, forKey: .slug)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                color = try? container.decode(String.self, forKey: .color)
                
                name = try? container.decode(String.self, forKey: .name)
                
                imageNature = try? container.decode(String.self, forKey: .imageNature)
                
                similars = try? container.decode([String].self, forKey: .similars)
                
                shortDescription = try? container.decode(String.self, forKey: .shortDescription)
                
                type = try? container.decode(String.self, forKey: .type)
                
                highlights = try? container.decode([String].self, forKey: .highlights)
                
                brand = try? container.decode(ProductBrand.self, forKey: .brand)
                
                groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
                productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                categories = try? container.decode([ProductBrand].self, forKey: .categories)
                
                hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
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
            
            public var currencySymbol: String?
            
            public var currencyCode: String?
            
            public var min: Double?
            
            public var max: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencySymbol = "currency_symbol"
                
                case currencyCode = "currency_code"
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(currencySymbol: String?, currencyCode: String?, min: Double?, max: Double?) {
                
                self.currencySymbol = currencySymbol
                
                self.currencyCode = currencyCode
                
                self.min = min
                
                self.max = max
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                min = try? container.decode(Double.self, forKey: .min)
                
                max = try? container.decode(Double.self, forKey: .max)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
            }
            
        }
        
        /*
            Model: ProductListingPrice
            Used By: Catalog
        */
        struct ProductListingPrice: Codable {
            
            public var marked: Price?
            
            public var effective: Price?
            

            public enum CodingKeys: String, CodingKey {
                
                case marked = "marked"
                
                case effective = "effective"
                
            }

            public init(marked: Price?, effective: Price?) {
                
                self.marked = marked
                
                self.effective = effective
                
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
            Model: ProductSizes
            Used By: Catalog
        */
        struct ProductSizes: Codable {
            
            public var discount: String?
            
            public var price: ProductListingPrice?
            
            public var sizeChart: [String: Any]?
            
            public var stores: ProductSizeStores?
            
            public var sizes: [ProductSize]?
            
            public var sellable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case price = "price"
                
                case sizeChart = "size_chart"
                
                case stores = "stores"
                
                case sizes = "sizes"
                
                case sellable = "sellable"
                
            }

            public init(discount: String?, price: ProductListingPrice?, sizeChart: [String: Any]?, stores: ProductSizeStores?, sizes: [ProductSize]?, sellable: Bool?) {
                
                self.discount = discount
                
                self.price = price
                
                self.sizeChart = sizeChart
                
                self.stores = stores
                
                self.sizes = sizes
                
                self.sellable = sellable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                price = try? container.decode(ProductListingPrice.self, forKey: .price)
                
                sizeChart = try? container.decode([String: Any].self, forKey: .sizeChart)
                
                stores = try? container.decode(ProductSizeStores.self, forKey: .stores)
                
                sizes = try? container.decode([ProductSize].self, forKey: .sizes)
                
                sellable = try? container.decode(Bool.self, forKey: .sellable)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
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

            public init(strategy: String?, level: String?) {
                
                self.strategy = strategy
                
                self.level = level
                
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
            
            public var marked: Double?
            
            public var effective: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case marked = "marked"
                
                case effective = "effective"
                
            }

            public init(currency: String?, marked: Double?, effective: Double?) {
                
                self.currency = currency
                
                self.marked = marked
                
                self.effective = effective
                
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
            Model: ProductSizePriceResponse
            Used By: Catalog
        */
        struct ProductSizePriceResponse: Codable {
            
            public var articleAssignment: ArticleAssignment?
            
            public var longLat: [Double]?
            
            public var discount: String?
            
            public var price: ProductStockPrice?
            
            public var specialBadge: String?
            
            public var seller: Seller?
            
            public var set: [String: Any]?
            
            public var articleId: String?
            
            public var strategyWiseListing: [[String: Any]]?
            
            public var itemType: String?
            
            public var store: Store?
            
            public var sellerCount: Int?
            
            public var pincode: Int?
            
            public var pricePerPrice: ProductStockPrice?
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case articleAssignment = "article_assignment"
                
                case longLat = "long_lat"
                
                case discount = "discount"
                
                case price = "price"
                
                case specialBadge = "special_badge"
                
                case seller = "seller"
                
                case set = "set"
                
                case articleId = "article_id"
                
                case strategyWiseListing = "strategy_wise_listing"
                
                case itemType = "item_type"
                
                case store = "store"
                
                case sellerCount = "seller_count"
                
                case pincode = "pincode"
                
                case pricePerPrice = "price_per_price"
                
                case quantity = "quantity"
                
            }

            public init(articleAssignment: ArticleAssignment?, longLat: [Double]?, discount: String?, price: ProductStockPrice?, specialBadge: String?, seller: Seller?, set: [String: Any]?, articleId: String?, strategyWiseListing: [[String: Any]]?, itemType: String?, store: Store?, sellerCount: Int?, pincode: Int?, pricePerPrice: ProductStockPrice?, quantity: Int?) {
                
                self.articleAssignment = articleAssignment
                
                self.longLat = longLat
                
                self.discount = discount
                
                self.price = price
                
                self.specialBadge = specialBadge
                
                self.seller = seller
                
                self.set = set
                
                self.articleId = articleId
                
                self.strategyWiseListing = strategyWiseListing
                
                self.itemType = itemType
                
                self.store = store
                
                self.sellerCount = sellerCount
                
                self.pincode = pincode
                
                self.pricePerPrice = pricePerPrice
                
                self.quantity = quantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                articleAssignment = try? container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                
                longLat = try? container.decode([Double].self, forKey: .longLat)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                price = try? container.decode(ProductStockPrice.self, forKey: .price)
                
                specialBadge = try? container.decode(String.self, forKey: .specialBadge)
                
                seller = try? container.decode(Seller.self, forKey: .seller)
                
                set = try? container.decode([String: Any].self, forKey: .set)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                strategyWiseListing = try? container.decode([[String: Any]].self, forKey: .strategyWiseListing)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                store = try? container.decode(Store.self, forKey: .store)
                
                sellerCount = try? container.decode(Int.self, forKey: .sellerCount)
                
                pincode = try? container.decode(Int.self, forKey: .pincode)
                
                pricePerPrice = try? container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(longLat, forKey: .longLat)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(set, forKey: .set)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
            }
            
        }
        
        /*
            Model: Page
            Used By: Catalog
        */
        struct Page: Codable {
            
            public var type: String?
            
            public var size: Int?
            
            public var itemTotal: Int?
            
            public var current: Int?
            
            public var hasPrevious: Bool?
            
            public var nextId: String?
            
            public var hasNext: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case size = "size"
                
                case itemTotal = "item_total"
                
                case current = "current"
                
                case hasPrevious = "has_previous"
                
                case nextId = "next_id"
                
                case hasNext = "has_next"
                
            }

            public init(type: String?, size: Int?, itemTotal: Int?, current: Int?, hasPrevious: Bool?, nextId: String?, hasNext: Bool?) {
                
                self.type = type
                
                self.size = size
                
                self.itemTotal = itemTotal
                
                self.current = current
                
                self.hasPrevious = hasPrevious
                
                self.nextId = nextId
                
                self.hasNext = hasNext
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                type = try? container.decode(String.self, forKey: .type)
                
                size = try? container.decode(Int.self, forKey: .size)
                
                itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
                
                current = try? container.decode(Int.self, forKey: .current)
                
                hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
                
                nextId = try? container.decode(String.self, forKey: .nextId)
                
                hasNext = try? container.decode(Bool.self, forKey: .hasNext)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                try? container.encodeIfPresent(nextId, forKey: .nextId)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
            }
            
        }
        
        /*
            Model: ProductSizeSellerFilter
            Used By: Catalog
        */
        struct ProductSizeSellerFilter: Codable {
            
            public var isSelected: Bool?
            
            public var name: String?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isSelected = "is_selected"
                
                case name = "name"
                
                case value = "value"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.isSelected = isSelected
                
                self.name = name
                
                self.value = value
                
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
            Model: ProductSizeSellersResponse
            Used By: Catalog
        */
        struct ProductSizeSellersResponse: Codable {
            
            public var items: [ProductSizePriceResponse]?
            
            public var page: Page?
            
            public var sortOn: [ProductSizeSellerFilter]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
                case sortOn = "sort_on"
                
            }

            public init(items: [ProductSizePriceResponse]?, page: Page?, sortOn: [ProductSizeSellerFilter]?) {
                
                self.items = items
                
                self.page = page
                
                self.sortOn = sortOn
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([ProductSizePriceResponse].self, forKey: .items)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            
            public var key: String?
            
            public var description: String?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case description = "description"
                
                case display = "display"
                
            }

            public init(key: String?, description: String?, display: String?) {
                
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
            
            public var items: [ProductDetail]?
            
            public var attributesMetadata: [AttributeDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case attributesMetadata = "attributes_metadata"
                
            }

            public init(items: [ProductDetail]?, attributesMetadata: [AttributeDetail]?) {
                
                self.items = items
                
                self.attributesMetadata = attributesMetadata
                
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
            
            public var items: [ProductDetail]?
            
            public var subtitle: String?
            
            public var title: String?
            
            public var attributesMetadata: [AttributeDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case subtitle = "subtitle"
                
                case title = "title"
                
                case attributesMetadata = "attributes_metadata"
                
            }

            public init(items: [ProductDetail]?, subtitle: String?, title: String?, attributesMetadata: [AttributeDetail]?) {
                
                self.items = items
                
                self.subtitle = subtitle
                
                self.title = title
                
                self.attributesMetadata = attributesMetadata
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([ProductDetail].self, forKey: .items)
                
                subtitle = try? container.decode(String.self, forKey: .subtitle)
                
                title = try? container.decode(String.self, forKey: .title)
                
                attributesMetadata = try? container.decode([AttributeDetail].self, forKey: .attributesMetadata)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
                
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
            
            public var items: [ProductDetail]?
            
            public var subtitle: String?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case subtitle = "subtitle"
                
                case title = "title"
                
            }

            public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.items = items
                
                self.subtitle = subtitle
                
                self.title = title
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([ProductDetail].self, forKey: .items)
                
                subtitle = try? container.decode(String.self, forKey: .subtitle)
                
                title = try? container.decode(String.self, forKey: .title)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
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
            
            public var action: ProductListingAction?
            
            public var name: String?
            
            public var value: String?
            
            public var uid: Int?
            
            public var isAvailable: Bool?
            
            public var slug: String?
            
            public var colorName: String?
            
            public var medias: [Media]?
            
            public var color: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case name = "name"
                
                case value = "value"
                
                case uid = "uid"
                
                case isAvailable = "is_available"
                
                case slug = "slug"
                
                case colorName = "color_name"
                
                case medias = "medias"
                
                case color = "color"
                
            }

            public init(action: ProductListingAction?, name: String?, value: String?, uid: Int?, isAvailable: Bool?, slug: String?, colorName: String?, medias: [Media]?, color: String?) {
                
                self.action = action
                
                self.name = name
                
                self.value = value
                
                self.uid = uid
                
                self.isAvailable = isAvailable
                
                self.slug = slug
                
                self.colorName = colorName
                
                self.medias = medias
                
                self.color = color
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                name = try? container.decode(String.self, forKey: .name)
                
                value = try? container.decode(String.self, forKey: .value)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                isAvailable = try? container.decode(Bool.self, forKey: .isAvailable)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                colorName = try? container.decode(String.self, forKey: .colorName)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                color = try? container.decode(String.self, forKey: .color)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(colorName, forKey: .colorName)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
            }
            
        }
        
        /*
            Model: ProductVariantResponse
            Used By: Catalog
        */
        struct ProductVariantResponse: Codable {
            
            public var items: [ProductVariantItemResponse]?
            
            public var header: String?
            
            public var displayType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case header = "header"
                
                case displayType = "display_type"
                
            }

            public init(items: [ProductVariantItemResponse]?, header: String?, displayType: String?) {
                
                self.items = items
                
                self.header = header
                
                self.displayType = displayType
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([ProductVariantItemResponse].self, forKey: .items)
                
                header = try? container.decode(String.self, forKey: .header)
                
                displayType = try? container.decode(String.self, forKey: .displayType)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(header, forKey: .header)
                
                try? container.encodeIfPresent(displayType, forKey: .displayType)
                
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
            
            public var code: String?
            
            public var id: Int?
            
            public var city: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case code = "code"
                
                case id = "id"
                
                case city = "city"
                
            }

            public init(name: String?, code: String?, id: Int?, city: String?) {
                
                self.name = name
                
                self.code = code
                
                self.id = id
                
                self.city = city
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                code = try? container.decode(String.self, forKey: .code)
                
                id = try? container.decode(Int.self, forKey: .id)
                
                city = try? container.decode(String.self, forKey: .city)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
            }
            
        }
        
        /*
            Model: ProductStockStatusItem
            Used By: Catalog
        */
        struct ProductStockStatusItem: Codable {
            
            public var identifier: [String: Any]?
            
            public var price: ProductStockPrice?
            
            public var seller: Seller?
            
            public var size: String?
            
            public var itemId: Int?
            
            public var company: CompanyDetail?
            
            public var store: StoreDetail?
            
            public var uid: String?
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifier = "identifier"
                
                case price = "price"
                
                case seller = "seller"
                
                case size = "size"
                
                case itemId = "item_id"
                
                case company = "company"
                
                case store = "store"
                
                case uid = "uid"
                
                case quantity = "quantity"
                
            }

            public init(identifier: [String: Any]?, price: ProductStockPrice?, seller: Seller?, size: String?, itemId: Int?, company: CompanyDetail?, store: StoreDetail?, uid: String?, quantity: Int?) {
                
                self.identifier = identifier
                
                self.price = price
                
                self.seller = seller
                
                self.size = size
                
                self.itemId = itemId
                
                self.company = company
                
                self.store = store
                
                self.uid = uid
                
                self.quantity = quantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                identifier = try? container.decode([String: Any].self, forKey: .identifier)
                
                price = try? container.decode(ProductStockPrice.self, forKey: .price)
                
                seller = try? container.decode(Seller.self, forKey: .seller)
                
                size = try? container.decode(String.self, forKey: .size)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                company = try? container.decode(CompanyDetail.self, forKey: .company)
                
                store = try? container.decode(StoreDetail.self, forKey: .store)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
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
            
            public var items: [ProductStockStatusItem]?
            
            public var page: Page?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductStockStatusItem]?, page: Page?) {
                
                self.items = items
                
                self.page = page
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([ProductStockStatusItem].self, forKey: .items)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            
            public var rating: Double?
            
            public var discount: String?
            
            public var price: ProductListingPrice?
            
            public var tryouts: [String]?
            
            public var teaserTag: String?
            
            public var description: String?
            
            public var attributes: [String: Any]?
            
            public var uid: Int?
            
            public var ratingCount: Int?
            
            public var slug: String
            
            public var medias: [Media]?
            
            public var color: String?
            
            public var name: String?
            
            public var imageNature: String?
            
            public var similars: [String]?
            
            public var sellable: Bool?
            
            public var shortDescription: String?
            
            public var type: String?
            
            public var highlights: [String]?
            
            public var brand: ProductBrand?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var productOnlineDate: String?
            
            public var itemType: String?
            
            public var categories: [ProductBrand]?
            
            public var hasVariant: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case rating = "rating"
                
                case discount = "discount"
                
                case price = "price"
                
                case tryouts = "tryouts"
                
                case teaserTag = "teaser_tag"
                
                case description = "description"
                
                case attributes = "attributes"
                
                case uid = "uid"
                
                case ratingCount = "rating_count"
                
                case slug = "slug"
                
                case medias = "medias"
                
                case color = "color"
                
                case name = "name"
                
                case imageNature = "image_nature"
                
                case similars = "similars"
                
                case sellable = "sellable"
                
                case shortDescription = "short_description"
                
                case type = "type"
                
                case highlights = "highlights"
                
                case brand = "brand"
                
                case groupedAttributes = "grouped_attributes"
                
                case productOnlineDate = "product_online_date"
                
                case itemType = "item_type"
                
                case categories = "categories"
                
                case hasVariant = "has_variant"
                
            }

            public init(rating: Double?, discount: String?, price: ProductListingPrice?, tryouts: [String]?, teaserTag: String?, description: String?, attributes: [String: Any]?, uid: Int?, ratingCount: Int?, slug: String, medias: [Media]?, color: String?, name: String?, imageNature: String?, similars: [String]?, sellable: Bool?, shortDescription: String?, type: String?, highlights: [String]?, brand: ProductBrand?, groupedAttributes: [ProductDetailGroupedAttribute]?, productOnlineDate: String?, itemType: String?, categories: [ProductBrand]?, hasVariant: Bool?) {
                
                self.rating = rating
                
                self.discount = discount
                
                self.price = price
                
                self.tryouts = tryouts
                
                self.teaserTag = teaserTag
                
                self.description = description
                
                self.attributes = attributes
                
                self.uid = uid
                
                self.ratingCount = ratingCount
                
                self.slug = slug
                
                self.medias = medias
                
                self.color = color
                
                self.name = name
                
                self.imageNature = imageNature
                
                self.similars = similars
                
                self.sellable = sellable
                
                self.shortDescription = shortDescription
                
                self.type = type
                
                self.highlights = highlights
                
                self.brand = brand
                
                self.groupedAttributes = groupedAttributes
                
                self.productOnlineDate = productOnlineDate
                
                self.itemType = itemType
                
                self.categories = categories
                
                self.hasVariant = hasVariant
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                rating = try? container.decode(Double.self, forKey: .rating)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                price = try? container.decode(ProductListingPrice.self, forKey: .price)
                
                tryouts = try? container.decode([String].self, forKey: .tryouts)
                
                teaserTag = try? container.decode(String.self, forKey: .teaserTag)
                
                description = try? container.decode(String.self, forKey: .description)
                
                attributes = try? container.decode([String: Any].self, forKey: .attributes)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                ratingCount = try? container.decode(Int.self, forKey: .ratingCount)
                
                slug = try container.decode(String.self, forKey: .slug)
                
                medias = try? container.decode([Media].self, forKey: .medias)
                
                color = try? container.decode(String.self, forKey: .color)
                
                name = try? container.decode(String.self, forKey: .name)
                
                imageNature = try? container.decode(String.self, forKey: .imageNature)
                
                similars = try? container.decode([String].self, forKey: .similars)
                
                sellable = try? container.decode(Bool.self, forKey: .sellable)
                
                shortDescription = try? container.decode(String.self, forKey: .shortDescription)
                
                type = try? container.decode(String.self, forKey: .type)
                
                highlights = try? container.decode([String].self, forKey: .highlights)
                
                brand = try? container.decode(ProductBrand.self, forKey: .brand)
                
                groupedAttributes = try? container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
                productOnlineDate = try? container.decode(String.self, forKey: .productOnlineDate)
                
                itemType = try? container.decode(String.self, forKey: .itemType)
                
                categories = try? container.decode([ProductBrand].self, forKey: .categories)
                
                hasVariant = try? container.decode(Bool.self, forKey: .hasVariant)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
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

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.isSelected = isSelected
                
                self.name = name
                
                self.value = value
                
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
            Model: ProductFiltersKey
            Used By: Catalog
        */
        struct ProductFiltersKey: Codable {
            
            public var kind: String?
            
            public var name: String
            
            public var display: String
            
            public var logo: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case kind = "kind"
                
                case name = "name"
                
                case display = "display"
                
                case logo = "logo"
                
            }

            public init(kind: String?, name: String, display: String, logo: String?) {
                
                self.kind = kind
                
                self.name = name
                
                self.display = display
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                kind = try? container.decode(String.self, forKey: .kind)
                
                name = try container.decode(String.self, forKey: .name)
                
                display = try container.decode(String.self, forKey: .display)
                
                logo = try? container.decode(String.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(kind, forKey: .kind)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: ProductFiltersValue
            Used By: Catalog
        */
        struct ProductFiltersValue: Codable {
            
            public var value: String
            
            public var isSelected: Bool
            
            public var display: String
            
            public var queryFormat: String?
            
            public var selectedMax: Int?
            
            public var currencySymbol: String?
            
            public var count: Int?
            
            public var displayFormat: String?
            
            public var min: Int?
            
            public var currencyCode: String?
            
            public var selectedMin: Int?
            
            public var max: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case isSelected = "is_selected"
                
                case display = "display"
                
                case queryFormat = "query_format"
                
                case selectedMax = "selected_max"
                
                case currencySymbol = "currency_symbol"
                
                case count = "count"
                
                case displayFormat = "display_format"
                
                case min = "min"
                
                case currencyCode = "currency_code"
                
                case selectedMin = "selected_min"
                
                case max = "max"
                
            }

            public init(value: String, isSelected: Bool, display: String, queryFormat: String?, selectedMax: Int?, currencySymbol: String?, count: Int?, displayFormat: String?, min: Int?, currencyCode: String?, selectedMin: Int?, max: Int?) {
                
                self.value = value
                
                self.isSelected = isSelected
                
                self.display = display
                
                self.queryFormat = queryFormat
                
                self.selectedMax = selectedMax
                
                self.currencySymbol = currencySymbol
                
                self.count = count
                
                self.displayFormat = displayFormat
                
                self.min = min
                
                self.currencyCode = currencyCode
                
                self.selectedMin = selectedMin
                
                self.max = max
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                value = try container.decode(String.self, forKey: .value)
                
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                display = try container.decode(String.self, forKey: .display)
                
                queryFormat = try? container.decode(String.self, forKey: .queryFormat)
                
                selectedMax = try? container.decode(Int.self, forKey: .selectedMax)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                count = try? container.decode(Int.self, forKey: .count)
                
                displayFormat = try? container.decode(String.self, forKey: .displayFormat)
                
                min = try? container.decode(Int.self, forKey: .min)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                selectedMin = try? container.decode(Int.self, forKey: .selectedMin)
                
                max = try? container.decode(Int.self, forKey: .max)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
                
                try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
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
            Model: ProductListingResponse
            Used By: Catalog
        */
        struct ProductListingResponse: Codable {
            
            public var items: [ProductListingDetail]?
            
            public var page: Page?
            
            public var sortOn: [ProductSortOn]?
            
            public var filters: [ProductFilters]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
                case sortOn = "sort_on"
                
                case filters = "filters"
                
            }

            public init(items: [ProductListingDetail]?, page: Page?, sortOn: [ProductSortOn]?, filters: [ProductFilters]?) {
                
                self.items = items
                
                self.page = page
                
                self.sortOn = sortOn
                
                self.filters = filters
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([ProductListingDetail].self, forKey: .items)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            
            public var action: ProductListingAction?
            
            public var name: String?
            
            public var discount: String?
            
            public var departments: [String]?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var slug: String?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case name = "name"
                
                case discount = "discount"
                
                case departments = "departments"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case slug = "slug"
                
                case logo = "logo"
                
            }

            public init(action: ProductListingAction?, name: String?, discount: String?, departments: [String]?, banners: ImageUrls?, uid: Int?, slug: String?, logo: Media?) {
                
                self.action = action
                
                self.name = name
                
                self.discount = discount
                
                self.departments = departments
                
                self.banners = banners
                
                self.uid = uid
                
                self.slug = slug
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                name = try? container.decode(String.self, forKey: .name)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                departments = try? container.decode([String].self, forKey: .departments)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: BrandListingResponse
            Used By: Catalog
        */
        struct BrandListingResponse: Codable {
            
            public var items: [BrandItem]?
            
            public var page: Page?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [BrandItem]?, page: Page?) {
                
                self.items = items
                
                self.page = page
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([BrandItem].self, forKey: .items)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(name: String?, banners: ImageUrls?, uid: Int?, logo: Media?) {
                
                self.name = name
                
                self.banners = banners
                
                self.uid = uid
                
                self.logo = logo
                
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
            
            public var action: ProductListingAction?
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var childs: [[String: Any]]?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case name = "name"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case childs = "childs"
                
                case slug = "slug"
                
            }

            public init(action: ProductListingAction?, name: String?, banners: ImageUrls?, uid: Int?, childs: [[String: Any]]?, slug: String?) {
                
                self.action = action
                
                self.name = name
                
                self.banners = banners
                
                self.uid = uid
                
                self.childs = childs
                
                self.slug = slug
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                name = try? container.decode(String.self, forKey: .name)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                childs = try? container.decode([[String: Any]].self, forKey: .childs)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
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

            public init(items: [CategoryItems]?, department: String?) {
                
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
            
            public var name: String?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(name: String?, banners: ImageUrls?, uid: Int?, logo: Media?) {
                
                self.name = name
                
                self.banners = banners
                
                self.uid = uid
                
                self.logo = logo
                
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
            Model: HomeListingResponse
            Used By: Catalog
        */
        struct HomeListingResponse: Codable {
            
            public var items: [ProductListingDetail]?
            
            public var page: Page?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
                case message = "message"
                
            }

            public init(items: [ProductListingDetail]?, page: Page?, message: String?) {
                
                self.items = items
                
                self.page = page
                
                self.message = message
                
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
            
            public var name: String?
            
            public var priorityOrder: Int?
            
            public var uid: Int?
            
            public var slug: String?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case priorityOrder = "priority_order"
                
                case uid = "uid"
                
                case slug = "slug"
                
                case logo = "logo"
                
            }

            public init(name: String?, priorityOrder: Int?, uid: Int?, slug: String?, logo: Media?) {
                
                self.name = name
                
                self.priorityOrder = priorityOrder
                
                self.uid = uid
                
                self.slug = slug
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                priorityOrder = try? container.decode(Int.self, forKey: .priorityOrder)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
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
            
            public var action: [String: Any]?
            
            public var logo: Media?
            
            public var display: String?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case logo = "logo"
                
                case display = "display"
                
                case type = "type"
                
            }

            public init(action: [String: Any]?, logo: Media?, display: String?, type: String?) {
                
                self.action = action
                
                self.logo = logo
                
                self.display = display
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                action = try? container.decode([String: Any].self, forKey: .action)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                display = try? container.decode(String.self, forKey: .display)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
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
            Model: GetCollectionDetailNest
            Used By: Catalog
        */
        struct GetCollectionDetailNest: Codable {
            
            public var badge: [String: Any]?
            
            public var description: String?
            
            public var schedule: [String: Any]?
            
            public var uid: String?
            
            public var slug: String?
            
            public var tag: [String]?
            
            public var name: String?
            
            public var appId: String?
            
            public var logo: Media?
            
            public var type: String?
            
            public var query: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var isActive: Bool?
            
            public var allowFacets: Bool?
            
            public var cron: [String: Any]?
            
            public var allowSort: Bool?
            
            public var action: ProductListingAction?
            
            public var banners: ImageUrls?
            
            public var visibleFacetsKeys: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case badge = "badge"
                
                case description = "description"
                
                case schedule = "_schedule"
                
                case uid = "uid"
                
                case slug = "slug"
                
                case tag = "tag"
                
                case name = "name"
                
                case appId = "app_id"
                
                case logo = "logo"
                
                case type = "type"
                
                case query = "query"
                
                case meta = "meta"
                
                case isActive = "is_active"
                
                case allowFacets = "allow_facets"
                
                case cron = "cron"
                
                case allowSort = "allow_sort"
                
                case action = "action"
                
                case banners = "banners"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
            }

            public init(badge: [String: Any]?, description: String?, schedule: [String: Any]?, uid: String?, slug: String?, tag: [String]?, name: String?, appId: String?, logo: Media?, type: String?, query: [String: Any]?, meta: [String: Any]?, isActive: Bool?, allowFacets: Bool?, cron: [String: Any]?, allowSort: Bool?, action: ProductListingAction?, banners: ImageUrls?, visibleFacetsKeys: [String]?) {
                
                self.badge = badge
                
                self.description = description
                
                self.schedule = schedule
                
                self.uid = uid
                
                self.slug = slug
                
                self.tag = tag
                
                self.name = name
                
                self.appId = appId
                
                self.logo = logo
                
                self.type = type
                
                self.query = query
                
                self.meta = meta
                
                self.isActive = isActive
                
                self.allowFacets = allowFacets
                
                self.cron = cron
                
                self.allowSort = allowSort
                
                self.action = action
                
                self.banners = banners
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                badge = try? container.decode([String: Any].self, forKey: .badge)
                
                description = try? container.decode(String.self, forKey: .description)
                
                schedule = try? container.decode([String: Any].self, forKey: .schedule)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                tag = try? container.decode([String].self, forKey: .tag)
                
                name = try? container.decode(String.self, forKey: .name)
                
                appId = try? container.decode(String.self, forKey: .appId)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
                type = try? container.decode(String.self, forKey: .type)
                
                query = try? container.decode([String: Any].self, forKey: .query)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
                
                cron = try? container.decode([String: Any].self, forKey: .cron)
                
                allowSort = try? container.decode(Bool.self, forKey: .allowSort)
                
                action = try? container.decode(ProductListingAction.self, forKey: .action)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
            }
            
        }
        
        /*
            Model: CollectionListingFilterType
            Used By: Catalog
        */
        struct CollectionListingFilterType: Codable {
            
            public var isSelected: Bool?
            
            public var name: String?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isSelected = "is_selected"
                
                case name = "name"
                
                case display = "display"
                
            }

            public init(isSelected: Bool?, name: String?, display: String?) {
                
                self.isSelected = isSelected
                
                self.name = name
                
                self.display = display
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                isSelected = try? container.decode(Bool.self, forKey: .isSelected)
                
                name = try? container.decode(String.self, forKey: .name)
                
                display = try? container.decode(String.self, forKey: .display)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
            }
            
        }
        
        /*
            Model: CollectionListingFilterTag
            Used By: Catalog
        */
        struct CollectionListingFilterTag: Codable {
            
            public var isSelected: Bool?
            
            public var name: String?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isSelected = "is_selected"
                
                case name = "name"
                
                case display = "display"
                
            }

            public init(isSelected: Bool?, name: String?, display: String?) {
                
                self.isSelected = isSelected
                
                self.name = name
                
                self.display = display
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                isSelected = try? container.decode(Bool.self, forKey: .isSelected)
                
                name = try? container.decode(String.self, forKey: .name)
                
                display = try? container.decode(String.self, forKey: .display)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
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
            Model: GetCollectionListingResponse
            Used By: Catalog
        */
        struct GetCollectionListingResponse: Codable {
            
            public var items: [GetCollectionDetailNest]?
            
            public var page: Page?
            
            public var filters: CollectionListingFilter?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
                case filters = "filters"
                
            }

            public init(items: [GetCollectionDetailNest]?, page: Page?, filters: CollectionListingFilter?) {
                
                self.items = items
                
                self.page = page
                
                self.filters = filters
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([GetCollectionDetailNest].self, forKey: .items)
                
                page = try? container.decode(Page.self, forKey: .page)
                
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
            Model: CollectionDetailResponse
            Used By: Catalog
        */
        struct CollectionDetailResponse: Codable {
            
            public var tag: [String]?
            
            public var name: String?
            
            public var query: [String: Any]?
            
            public var appId: String?
            
            public var type: String?
            
            public var badge: [String: Any]?
            
            public var description: String?
            
            public var banners: ImageUrls?
            
            public var schedule: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var isActive: Bool?
            
            public var visibleFacetsKeys: [String]?
            
            public var allowFacets: Bool?
            
            public var slug: String?
            
            public var cron: [String: Any]?
            
            public var allowSort: Bool?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case tag = "tag"
                
                case name = "name"
                
                case query = "query"
                
                case appId = "app_id"
                
                case type = "type"
                
                case badge = "badge"
                
                case description = "description"
                
                case banners = "banners"
                
                case schedule = "_schedule"
                
                case meta = "meta"
                
                case isActive = "is_active"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case allowFacets = "allow_facets"
                
                case slug = "slug"
                
                case cron = "cron"
                
                case allowSort = "allow_sort"
                
                case logo = "logo"
                
            }

            public init(tag: [String]?, name: String?, query: [String: Any]?, appId: String?, type: String?, badge: [String: Any]?, description: String?, banners: ImageUrls?, schedule: [String: Any]?, meta: [String: Any]?, isActive: Bool?, visibleFacetsKeys: [String]?, allowFacets: Bool?, slug: String?, cron: [String: Any]?, allowSort: Bool?, logo: Media?) {
                
                self.tag = tag
                
                self.name = name
                
                self.query = query
                
                self.appId = appId
                
                self.type = type
                
                self.badge = badge
                
                self.description = description
                
                self.banners = banners
                
                self.schedule = schedule
                
                self.meta = meta
                
                self.isActive = isActive
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.allowFacets = allowFacets
                
                self.slug = slug
                
                self.cron = cron
                
                self.allowSort = allowSort
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                tag = try? container.decode([String].self, forKey: .tag)
                
                name = try? container.decode(String.self, forKey: .name)
                
                query = try? container.decode([String: Any].self, forKey: .query)
                
                appId = try? container.decode(String.self, forKey: .appId)
                
                type = try? container.decode(String.self, forKey: .type)
                
                badge = try? container.decode([String: Any].self, forKey: .badge)
                
                description = try? container.decode(String.self, forKey: .description)
                
                banners = try? container.decode(ImageUrls.self, forKey: .banners)
                
                schedule = try? container.decode([String: Any].self, forKey: .schedule)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                visibleFacetsKeys = try? container.decode([String].self, forKey: .visibleFacetsKeys)
                
                allowFacets = try? container.decode(Bool.self, forKey: .allowFacets)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                cron = try? container.decode([String: Any].self, forKey: .cron)
                
                allowSort = try? container.decode(Bool.self, forKey: .allowSort)
                
                logo = try? container.decode(Media.self, forKey: .logo)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: GetFollowListingResponse
            Used By: Catalog
        */
        struct GetFollowListingResponse: Codable {
            
            public var items: [[String: Any]]
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [[String: Any]], page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try container.decode([[String: Any]].self, forKey: .items)
                
                page = try container.decode(Page.self, forKey: .page)
                
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

            public init(id: String, message: String) {
                
                self.id = id
                
                self.message = message
                
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

            public init(collections: [Int]?, products: [Int]?, brands: [Int]?) {
                
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
            
            public var state: String?
            
            public var name: String?
            
            public var address: String?
            
            public var latLong: LatLong?
            
            public var city: String?
            
            public var storeCode: String?
            
            public var uid: Int?
            
            public var storeEmail: String?
            
            public var pincode: Int?
            
            public var country: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case state = "state"
                
                case name = "name"
                
                case address = "address"
                
                case latLong = "lat_long"
                
                case city = "city"
                
                case storeCode = "store_code"
                
                case uid = "uid"
                
                case storeEmail = "store_email"
                
                case pincode = "pincode"
                
                case country = "country"
                
            }

            public init(state: String?, name: String?, address: String?, latLong: LatLong?, city: String?, storeCode: String?, uid: Int?, storeEmail: String?, pincode: Int?, country: String?) {
                
                self.state = state
                
                self.name = name
                
                self.address = address
                
                self.latLong = latLong
                
                self.city = city
                
                self.storeCode = storeCode
                
                self.uid = uid
                
                self.storeEmail = storeEmail
                
                self.pincode = pincode
                
                self.country = country
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                state = try? container.decode(String.self, forKey: .state)
                
                name = try? container.decode(String.self, forKey: .name)
                
                address = try? container.decode(String.self, forKey: .address)
                
                latLong = try? container.decode(LatLong.self, forKey: .latLong)
                
                city = try? container.decode(String.self, forKey: .city)
                
                storeCode = try? container.decode(String.self, forKey: .storeCode)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                storeEmail = try? container.decode(String.self, forKey: .storeEmail)
                
                pincode = try? container.decode(Int.self, forKey: .pincode)
                
                country = try? container.decode(String.self, forKey: .country)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
            }
            
        }
        
        /*
            Model: StoreListingResponse
            Used By: Catalog
        */
        struct StoreListingResponse: Codable {
            
            public var items: [Store1]?
            
            public var page: Page?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [Store1]?, page: Page?) {
                
                self.items = items
                
                self.page = page
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                items = try? container.decode([Store1].self, forKey: .items)
                
                page = try? container.decode(Page.self, forKey: .page)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        
        
        /*
            Model: PromiseFormatted
            Used By: Cart
        */
        struct PromiseFormatted: Codable {
            
            public var max: String?
            
            public var min: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case max = "max"
                
                case min = "min"
                
            }

            public init(max: String?, min: String?) {
                
                self.max = max
                
                self.min = min
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                max = try? container.decode(String.self, forKey: .max)
                
                min = try? container.decode(String.self, forKey: .min)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
            }
            
        }
        
        /*
            Model: PromiseTimestamp
            Used By: Cart
        */
        struct PromiseTimestamp: Codable {
            
            public var max: Int?
            
            public var min: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case max = "max"
                
                case min = "min"
                
            }

            public init(max: Int?, min: Int?) {
                
                self.max = max
                
                self.min = min
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                max = try? container.decode(Int.self, forKey: .max)
                
                min = try? container.decode(Int.self, forKey: .min)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
            }
            
        }
        
        /*
            Model: ShipmentPromise
            Used By: Cart
        */
        struct ShipmentPromise: Codable {
            
            public var formatted: PromiseFormatted?
            
            public var timestamp: PromiseTimestamp?
            

            public enum CodingKeys: String, CodingKey {
                
                case formatted = "formatted"
                
                case timestamp = "timestamp"
                
            }

            public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
                
                self.formatted = formatted
                
                self.timestamp = timestamp
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                formatted = try? container.decode(PromiseFormatted.self, forKey: .formatted)
                
                timestamp = try? container.decode(PromiseTimestamp.self, forKey: .timestamp)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(formatted, forKey: .formatted)
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
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
            Model: PaymentFlows
            Used By: Cart
        */
        struct PaymentFlows: Codable {
            
            public var simpl: PaymentFlow?
            
            public var fynd: PaymentFlow?
            
            public var juspay: PaymentFlow?
            
            public var upiRazorpay: PaymentFlow?
            
            public var razorpay: PaymentFlow?
            

            public enum CodingKeys: String, CodingKey {
                
                case simpl = "Simpl"
                
                case fynd = "Fynd"
                
                case juspay = "Juspay"
                
                case upiRazorpay = "UPI_Razorpay"
                
                case razorpay = "Razorpay"
                
            }

            public init(simpl: PaymentFlow?, fynd: PaymentFlow?, juspay: PaymentFlow?, upiRazorpay: PaymentFlow?, razorpay: PaymentFlow?) {
                
                self.simpl = simpl
                
                self.fynd = fynd
                
                self.juspay = juspay
                
                self.upiRazorpay = upiRazorpay
                
                self.razorpay = razorpay
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
                
                fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
                
                juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
                
                upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
                
                razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(fynd, forKey: .fynd)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
            }
            
        }
        
        /*
            Model: PaymentOption
            Used By: Cart
        */
        struct PaymentOption: Codable {
            
            public var name: String?
            
            public var paymentModeId: Int?
            
            public var displayPriority: Int?
            
            public var list: [[String: Any]]?
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case paymentModeId = "payment_mode_id"
                
                case displayPriority = "display_priority"
                
                case list = "list"
                
                case displayName = "display_name"
                
            }

            public init(name: String?, paymentModeId: Int?, displayPriority: Int?, list: [[String: Any]]?, displayName: String?) {
                
                self.name = name
                
                self.paymentModeId = paymentModeId
                
                self.displayPriority = displayPriority
                
                self.list = list
                
                self.displayName = displayName
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
                
                displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
                
                list = try? container.decode([[String: Any]].self, forKey: .list)
                
                displayName = try? container.decode(String.self, forKey: .displayName)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
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
            Model: ProductPrice
            Used By: Cart
        */
        struct ProductPrice: Codable {
            
            public var selling: Double?
            
            public var marked: Double?
            
            public var currencySymbol: String?
            
            public var currencyCode: String?
            
            public var effective: Double?
            
            public var addOn: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case selling = "selling"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case currencyCode = "currency_code"
                
                case effective = "effective"
                
                case addOn = "add_on"
                
            }

            public init(selling: Double?, marked: Double?, currencySymbol: String?, currencyCode: String?, effective: Double?, addOn: Double?) {
                
                self.selling = selling
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.currencyCode = currencyCode
                
                self.effective = effective
                
                self.addOn = addOn
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                selling = try? container.decode(Double.self, forKey: .selling)
                
                marked = try? container.decode(Double.self, forKey: .marked)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                effective = try? container.decode(Double.self, forKey: .effective)
                
                addOn = try? container.decode(Double.self, forKey: .addOn)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(selling, forKey: .selling)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(addOn, forKey: .addOn)
                
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
            
            public var sizes: [String]?
            
            public var outOfStock: Bool?
            
            public var otherStoreQuantity: Int?
            
            public var deliverable: Bool?
            
            public var isValid: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case sizes = "sizes"
                
                case outOfStock = "out_of_stock"
                
                case otherStoreQuantity = "other_store_quantity"
                
                case deliverable = "deliverable"
                
                case isValid = "is_valid"
                
            }

            public init(sizes: [String]?, outOfStock: Bool?, otherStoreQuantity: Int?, deliverable: Bool?, isValid: Bool?) {
                
                self.sizes = sizes
                
                self.outOfStock = outOfStock
                
                self.otherStoreQuantity = otherStoreQuantity
                
                self.deliverable = deliverable
                
                self.isValid = isValid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                sizes = try? container.decode([String].self, forKey: .sizes)
                
                outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
                
                otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
                
                deliverable = try? container.decode(Bool.self, forKey: .deliverable)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
                
                try? container.encodeIfPresent(deliverable, forKey: .deliverable)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
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
            Model: BaseInfo
            Used By: Cart
        */
        struct BaseInfo: Codable {
            
            public var uid: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(uid: Int?, name: String?) {
                
                self.uid = uid
                
                self.name = name
                
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
            Model: ProductArticle
            Used By: Cart
        */
        struct ProductArticle: Codable {
            
            public var price: ArticlePriceInfo?
            
            public var size: String?
            
            public var seller: BaseInfo?
            
            public var store: String?
            
            public var quantity: Int?
            
            public var type: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case price = "price"
                
                case size = "size"
                
                case seller = "seller"
                
                case store = "store"
                
                case quantity = "quantity"
                
                case type = "type"
                
                case uid = "uid"
                
            }

            public init(price: ArticlePriceInfo?, size: String?, seller: BaseInfo?, store: String?, quantity: Int?, type: String?, uid: Int?) {
                
                self.price = price
                
                self.size = size
                
                self.seller = seller
                
                self.store = store
                
                self.quantity = quantity
                
                self.type = type
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                price = try? container.decode(ArticlePriceInfo.self, forKey: .price)
                
                size = try? container.decode(String.self, forKey: .size)
                
                seller = try? container.decode(BaseInfo.self, forKey: .seller)
                
                store = try? container.decode(String.self, forKey: .store)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                type = try? container.decode(String.self, forKey: .type)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
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
            
            public var url: String?
            
            public var query: ActionQuery?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case query = "query"
                
                case type = "type"
                
            }

            public init(url: String?, query: ActionQuery?, type: String?) {
                
                self.url = url
                
                self.query = query
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                url = try? container.decode(String.self, forKey: .url)
                
                query = try? container.decode(ActionQuery.self, forKey: .query)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: CategoryInfo
            Used By: Cart
        */
        struct CategoryInfo: Codable {
            
            public var uid: Int?
            
            public var name: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(uid: Int?, name: Int?) {
                
                self.uid = uid
                
                self.name = name
                
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
            Model: Image
            Used By: Cart
        */
        struct Image: Codable {
            
            public var aspectRatio: String?
            
            public var url: String?
            
            public var secureUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aspectRatio = "aspect_ratio"
                
                case url = "url"
                
                case secureUrl = "secure_url"
                
            }

            public init(aspectRatio: String?, url: String?, secureUrl: String?) {
                
                self.aspectRatio = aspectRatio
                
                self.url = url
                
                self.secureUrl = secureUrl
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
                
                url = try? container.decode(String.self, forKey: .url)
                
                secureUrl = try? container.decode(String.self, forKey: .secureUrl)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
                
            }
            
        }
        
        /*
            Model: Product
            Used By: Cart
        */
        struct Product: Codable {
            
            public var slug: String?
            
            public var action: Action?
            
            public var name: String?
            
            public var brand: BaseInfo?
            
            public var categories: [CategoryInfo]?
            
            public var type: String?
            
            public var uid: Int?
            
            public var images: [Image]?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case action = "action"
                
                case name = "name"
                
                case brand = "brand"
                
                case categories = "categories"
                
                case type = "type"
                
                case uid = "uid"
                
                case images = "images"
                
            }

            public init(slug: String?, action: Action?, name: String?, brand: BaseInfo?, categories: [CategoryInfo]?, type: String?, uid: Int?, images: [Image]?) {
                
                self.slug = slug
                
                self.action = action
                
                self.name = name
                
                self.brand = brand
                
                self.categories = categories
                
                self.type = type
                
                self.uid = uid
                
                self.images = images
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                slug = try? container.decode(String.self, forKey: .slug)
                
                action = try? container.decode(Action.self, forKey: .action)
                
                name = try? container.decode(String.self, forKey: .name)
                
                brand = try? container.decode(BaseInfo.self, forKey: .brand)
                
                categories = try? container.decode([CategoryInfo].self, forKey: .categories)
                
                type = try? container.decode(String.self, forKey: .type)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                images = try? container.decode([Image].self, forKey: .images)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(images, forKey: .images)
                
            }
            
        }
        
        /*
            Model: CartProductInfo
            Used By: Cart
        */
        struct CartProductInfo: Codable {
            
            public var price: ProductPriceInfo?
            
            public var couponMessage: String?
            
            public var message: String?
            
            public var key: String?
            
            public var discount: String?
            
            public var availability: ProductAvailability?
            
            public var article: ProductArticle?
            
            public var quantity: Int?
            
            public var product: Product?
            
            public var bulkOffer: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case price = "price"
                
                case couponMessage = "coupon_message"
                
                case message = "message"
                
                case key = "key"
                
                case discount = "discount"
                
                case availability = "availability"
                
                case article = "article"
                
                case quantity = "quantity"
                
                case product = "product"
                
                case bulkOffer = "bulk_offer"
                
            }

            public init(price: ProductPriceInfo?, couponMessage: String?, message: String?, key: String?, discount: String?, availability: ProductAvailability?, article: ProductArticle?, quantity: Int?, product: Product?, bulkOffer: String?) {
                
                self.price = price
                
                self.couponMessage = couponMessage
                
                self.message = message
                
                self.key = key
                
                self.discount = discount
                
                self.availability = availability
                
                self.article = article
                
                self.quantity = quantity
                
                self.product = product
                
                self.bulkOffer = bulkOffer
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                price = try? container.decode(ProductPriceInfo.self, forKey: .price)
                
                couponMessage = try? container.decode(String.self, forKey: .couponMessage)
                
                message = try? container.decode(String.self, forKey: .message)
                
                key = try? container.decode(String.self, forKey: .key)
                
                discount = try? container.decode(String.self, forKey: .discount)
                
                availability = try? container.decode(ProductAvailability.self, forKey: .availability)
                
                article = try? container.decode(ProductArticle.self, forKey: .article)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                product = try? container.decode(Product.self, forKey: .product)
                
                bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(availability, forKey: .availability)
                
                try? container.encodeIfPresent(article, forKey: .article)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(product, forKey: .product)
                
                try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
                
            }
            
        }
        
        /*
            Model: RawBreakup
            Used By: Cart
        */
        struct RawBreakup: Codable {
            
            public var subtotal: Double?
            
            public var codCharge: Double?
            
            public var total: Double?
            
            public var youSaved: Double?
            
            public var fyndCash: Double?
            
            public var deliveryCharge: Double?
            
            public var coupon: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case subtotal = "subtotal"
                
                case codCharge = "cod_charge"
                
                case total = "total"
                
                case youSaved = "you_saved"
                
                case fyndCash = "fynd_cash"
                
                case deliveryCharge = "delivery_charge"
                
                case coupon = "coupon"
                
            }

            public init(subtotal: Double?, codCharge: Double?, total: Double?, youSaved: Double?, fyndCash: Double?, deliveryCharge: Double?, coupon: Double?) {
                
                self.subtotal = subtotal
                
                self.codCharge = codCharge
                
                self.total = total
                
                self.youSaved = youSaved
                
                self.fyndCash = fyndCash
                
                self.deliveryCharge = deliveryCharge
                
                self.coupon = coupon
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                subtotal = try? container.decode(Double.self, forKey: .subtotal)
                
                codCharge = try? container.decode(Double.self, forKey: .codCharge)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                youSaved = try? container.decode(Double.self, forKey: .youSaved)
                
                fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
                
                deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
                
                coupon = try? container.decode(Double.self, forKey: .coupon)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(subtotal, forKey: .subtotal)
                
                try? container.encodeIfPresent(codCharge, forKey: .codCharge)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(youSaved, forKey: .youSaved)
                
                try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
            }
            
        }
        
        /*
            Model: LoyaltyPoints
            Used By: Cart
        */
        struct LoyaltyPoints: Codable {
            
            public var description: String?
            
            public var total: Double?
            
            public var isApplied: Bool?
            
            public var applicable: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case total = "total"
                
                case isApplied = "is_applied"
                
                case applicable = "applicable"
                
            }

            public init(description: String?, total: Double?, isApplied: Bool?, applicable: Double?) {
                
                self.description = description
                
                self.total = total
                
                self.isApplied = isApplied
                
                self.applicable = applicable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                description = try? container.decode(String.self, forKey: .description)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
                applicable = try? container.decode(Double.self, forKey: .applicable)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(applicable, forKey: .applicable)
                
            }
            
        }
        
        /*
            Model: CouponBreakup
            Used By: Cart
        */
        struct CouponBreakup: Codable {
            
            public var value: Double?
            
            public var code: String?
            
            public var message: String?
            
            public var type: String?
            
            public var isApplied: Bool?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case code = "code"
                
                case message = "message"
                
                case type = "type"
                
                case isApplied = "is_applied"
                
                case uid = "uid"
                
            }

            public init(value: Double?, code: String?, message: String?, type: String?, isApplied: Bool?, uid: Int?) {
                
                self.value = value
                
                self.code = code
                
                self.message = message
                
                self.type = type
                
                self.isApplied = isApplied
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                value = try? container.decode(Double.self, forKey: .value)
                
                code = try? container.decode(String.self, forKey: .code)
                
                message = try? container.decode(String.self, forKey: .message)
                
                type = try? container.decode(String.self, forKey: .type)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: DisplayBreakup
            Used By: Cart
        */
        struct DisplayBreakup: Codable {
            
            public var currencySymbol: String?
            
            public var value: Double?
            
            public var currencyCode: String?
            
            public var key: String?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencySymbol = "currency_symbol"
                
                case value = "value"
                
                case currencyCode = "currency_code"
                
                case key = "key"
                
                case display = "display"
                
            }

            public init(currencySymbol: String?, value: Double?, currencyCode: String?, key: String?, display: String?) {
                
                self.currencySymbol = currencySymbol
                
                self.value = value
                
                self.currencyCode = currencyCode
                
                self.key = key
                
                self.display = display
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                value = try? container.decode(Double.self, forKey: .value)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                key = try? container.decode(String.self, forKey: .key)
                
                display = try? container.decode(String.self, forKey: .display)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
            }
            
        }
        
        /*
            Model: CartBreakup
            Used By: Cart
        */
        struct CartBreakup: Codable {
            
            public var raw: RawBreakup?
            
            public var loyaltyPoints: LoyaltyPoints?
            
            public var coupon: CouponBreakup?
            
            public var display: [DisplayBreakup]?
            

            public enum CodingKeys: String, CodingKey {
                
                case raw = "raw"
                
                case loyaltyPoints = "loyalty_points"
                
                case coupon = "coupon"
                
                case display = "display"
                
            }

            public init(raw: RawBreakup?, loyaltyPoints: LoyaltyPoints?, coupon: CouponBreakup?, display: [DisplayBreakup]?) {
                
                self.raw = raw
                
                self.loyaltyPoints = loyaltyPoints
                
                self.coupon = coupon
                
                self.display = display
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                raw = try? container.decode(RawBreakup.self, forKey: .raw)
                
                loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
                
                display = try? container.decode([DisplayBreakup].self, forKey: .display)
                
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
            Model: CartResponse
            Used By: Cart
        */
        struct CartResponse: Codable {
            
            public var deliveryPromise: ShipmentPromise?
            
            public var cartId: Int?
            
            public var gstin: String?
            
            public var deliveryChargeInfo: [String]?
            
            public var restrictCheckout: Bool?
            
            public var message: String?
            
            public var currency: CartCurrency?
            
            public var paymentOptions: PaymentOptions?
            
            public var comment: String?
            
            public var couponText: String?
            
            public var items: [CartProductInfo]?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var checkoutMode: String?
            
            public var uid: String?
            
            public var breakupValues: CartBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case deliveryPromise = "delivery_promise"
                
                case cartId = "cart_id"
                
                case gstin = "gstin"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case restrictCheckout = "restrict_checkout"
                
                case message = "message"
                
                case currency = "currency"
                
                case paymentOptions = "payment_options"
                
                case comment = "comment"
                
                case couponText = "coupon_text"
                
                case items = "items"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case checkoutMode = "checkout_mode"
                
                case uid = "uid"
                
                case breakupValues = "breakup_values"
                
            }

            public init(deliveryPromise: ShipmentPromise?, cartId: Int?, gstin: String?, deliveryChargeInfo: [String]?, restrictCheckout: Bool?, message: String?, currency: CartCurrency?, paymentOptions: PaymentOptions?, comment: String?, couponText: String?, items: [CartProductInfo]?, lastModified: String?, isValid: Bool?, checkoutMode: String?, uid: String?, breakupValues: CartBreakup?) {
                
                self.deliveryPromise = deliveryPromise
                
                self.cartId = cartId
                
                self.gstin = gstin
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.restrictCheckout = restrictCheckout
                
                self.message = message
                
                self.currency = currency
                
                self.paymentOptions = paymentOptions
                
                self.comment = comment
                
                self.couponText = couponText
                
                self.items = items
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.checkoutMode = checkoutMode
                
                self.uid = uid
                
                self.breakupValues = breakupValues
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                message = try? container.decode(String.self, forKey: .message)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
            }
            
        }
        
        /*
            Model: AddProductCart
            Used By: Cart
        */
        struct AddProductCart: Codable {
            
            public var sellerId: Int?
            
            public var pos: Bool?
            
            public var storeId: Int?
            
            public var articleId: String?
            
            public var itemSize: String?
            
            public var quantity: Int?
            
            public var itemId: Int?
            
            public var articleAssignment: [String: Any]?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case sellerId = "seller_id"
                
                case pos = "pos"
                
                case storeId = "store_id"
                
                case articleId = "article_id"
                
                case itemSize = "item_size"
                
                case quantity = "quantity"
                
                case itemId = "item_id"
                
                case articleAssignment = "article_assignment"
                
                case display = "display"
                
            }

            public init(sellerId: Int?, pos: Bool?, storeId: Int?, articleId: String?, itemSize: String?, quantity: Int?, itemId: Int?, articleAssignment: [String: Any]?, display: String?) {
                
                self.sellerId = sellerId
                
                self.pos = pos
                
                self.storeId = storeId
                
                self.articleId = articleId
                
                self.itemSize = itemSize
                
                self.quantity = quantity
                
                self.itemId = itemId
                
                self.articleAssignment = articleAssignment
                
                self.display = display
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                sellerId = try? container.decode(Int.self, forKey: .sellerId)
                
                pos = try? container.decode(Bool.self, forKey: .pos)
                
                storeId = try? container.decode(Int.self, forKey: .storeId)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                itemSize = try? container.decode(String.self, forKey: .itemSize)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
                
                display = try? container.decode(String.self, forKey: .display)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sellerId, forKey: .sellerId)
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                try? container.encodeIfPresent(storeId, forKey: .storeId)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
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
            
            public var partial: Bool?
            
            public var message: String?
            
            public var cart: CartResponse?
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case partial = "partial"
                
                case message = "message"
                
                case cart = "cart"
                
                case success = "success"
                
            }

            public init(partial: Bool?, message: String?, cart: CartResponse?, success: Bool?) {
                
                self.partial = partial
                
                self.message = message
                
                self.cart = cart
                
                self.success = success
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                partial = try? container.decode(Bool.self, forKey: .partial)
                
                message = try? container.decode(String.self, forKey: .message)
                
                cart = try? container.decode(CartResponse.self, forKey: .cart)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(partial, forKey: .partial)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
            }
            
        }
        
        /*
            Model: UpdateProductCart
            Used By: Cart
        */
        struct UpdateProductCart: Codable {
            
            public var articleId: String?
            
            public var itemSize: Int?
            
            public var quantity: Int?
            
            public var itemId: Int?
            
            public var itemIndex: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case articleId = "article_id"
                
                case itemSize = "item_size"
                
                case quantity = "quantity"
                
                case itemId = "item_id"
                
                case itemIndex = "item_index"
                
            }

            public init(articleId: String?, itemSize: Int?, quantity: Int?, itemId: Int?, itemIndex: Int?) {
                
                self.articleId = articleId
                
                self.itemSize = itemSize
                
                self.quantity = quantity
                
                self.itemId = itemId
                
                self.itemIndex = itemIndex
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                articleId = try? container.decode(String.self, forKey: .articleId)
                
                itemSize = try? container.decode(Int.self, forKey: .itemSize)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                itemId = try? container.decode(Int.self, forKey: .itemId)
                
                itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
                
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
            
            public var cart: CartResponse?
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case cart = "cart"
                
                case success = "success"
                
            }

            public init(message: String?, cart: CartResponse?, success: Bool?) {
                
                self.message = message
                
                self.cart = cart
                
                self.success = success
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                message = try? container.decode(String.self, forKey: .message)
                
                cart = try? container.decode(CartResponse.self, forKey: .cart)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
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
            
            public var current: Int?
            
            public var hasNext: Bool?
            
            public var total: Int?
            
            public var totalItemCount: Int?
            
            public var hasPrevious: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case current = "current"
                
                case hasNext = "has_next"
                
                case total = "total"
                
                case totalItemCount = "total_item_count"
                
                case hasPrevious = "has_previous"
                
            }

            public init(current: Int?, hasNext: Bool?, total: Int?, totalItemCount: Int?, hasPrevious: Bool?) {
                
                self.current = current
                
                self.hasNext = hasNext
                
                self.total = total
                
                self.totalItemCount = totalItemCount
                
                self.hasPrevious = hasPrevious
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                current = try? container.decode(Int.self, forKey: .current)
                
                hasNext = try? container.decode(Bool.self, forKey: .hasNext)
                
                total = try? container.decode(Int.self, forKey: .total)
                
                totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
                
                hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
            }
            
        }
        
        /*
            Model: Coupon
            Used By: Cart
        */
        struct Coupon: Codable {
            
            public var isApplicable: Bool?
            
            public var expiresOn: String?
            
            public var couponValue: Double?
            
            public var uid: Int?
            
            public var maxDiscountValue: Double?
            
            public var subTitle: String?
            
            public var message: String?
            
            public var couponCode: String?
            
            public var minimumCartValue: Double?
            
            public var isApplied: Bool?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isApplicable = "is_applicable"
                
                case expiresOn = "expires_on"
                
                case couponValue = "coupon_value"
                
                case uid = "uid"
                
                case maxDiscountValue = "max_discount_value"
                
                case subTitle = "sub_title"
                
                case message = "message"
                
                case couponCode = "coupon_code"
                
                case minimumCartValue = "minimum_cart_value"
                
                case isApplied = "is_applied"
                
                case title = "title"
                
            }

            public init(isApplicable: Bool?, expiresOn: String?, couponValue: Double?, uid: Int?, maxDiscountValue: Double?, subTitle: String?, message: String?, couponCode: String?, minimumCartValue: Double?, isApplied: Bool?, title: String?) {
                
                self.isApplicable = isApplicable
                
                self.expiresOn = expiresOn
                
                self.couponValue = couponValue
                
                self.uid = uid
                
                self.maxDiscountValue = maxDiscountValue
                
                self.subTitle = subTitle
                
                self.message = message
                
                self.couponCode = couponCode
                
                self.minimumCartValue = minimumCartValue
                
                self.isApplied = isApplied
                
                self.title = title
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
                
                expiresOn = try? container.decode(String.self, forKey: .expiresOn)
                
                couponValue = try? container.decode(Double.self, forKey: .couponValue)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
                
                subTitle = try? container.decode(String.self, forKey: .subTitle)
                
                message = try? container.decode(String.self, forKey: .message)
                
                couponCode = try? container.decode(String.self, forKey: .couponCode)
                
                minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
                
                isApplied = try? container.decode(Bool.self, forKey: .isApplied)
                
                title = try? container.decode(String.self, forKey: .title)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
                
                try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
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
            
            public var uid: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case name = "name"
                
            }

            public init(uid: Int?, name: String?) {
                
                self.uid = uid
                
                self.name = name
                
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
            Used By: Cart
        */
        struct OfferPrice: Codable {
            
            public var bulkEffective: Double?
            
            public var marked: Int?
            
            public var currencySymbol: String?
            
            public var currencyCode: String?
            
            public var effective: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case bulkEffective = "bulk_effective"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case currencyCode = "currency_code"
                
                case effective = "effective"
                
            }

            public init(bulkEffective: Double?, marked: Int?, currencySymbol: String?, currencyCode: String?, effective: Int?) {
                
                self.bulkEffective = bulkEffective
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.currencyCode = currencyCode
                
                self.effective = effective
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
                
                marked = try? container.decode(Int.self, forKey: .marked)
                
                currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
                
                currencyCode = try? container.decode(String.self, forKey: .currencyCode)
                
                effective = try? container.decode(Int.self, forKey: .effective)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
            }
            
        }
        
        /*
            Model: OfferItem
            Used By: Cart
        */
        struct OfferItem: Codable {
            
            public var price: OfferPrice?
            
            public var autoApplied: Bool?
            
            public var total: Double?
            
            public var margin: Int?
            
            public var best: Bool?
            
            public var quantity: Int?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case price = "price"
                
                case autoApplied = "auto_applied"
                
                case total = "total"
                
                case margin = "margin"
                
                case best = "best"
                
                case quantity = "quantity"
                
                case type = "type"
                
            }

            public init(price: OfferPrice?, autoApplied: Bool?, total: Double?, margin: Int?, best: Bool?, quantity: Int?, type: String?) {
                
                self.price = price
                
                self.autoApplied = autoApplied
                
                self.total = total
                
                self.margin = margin
                
                self.best = best
                
                self.quantity = quantity
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                price = try? container.decode(OfferPrice.self, forKey: .price)
                
                autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
                
                total = try? container.decode(Double.self, forKey: .total)
                
                margin = try? container.decode(Int.self, forKey: .margin)
                
                best = try? container.decode(Bool.self, forKey: .best)
                
                quantity = try? container.decode(Int.self, forKey: .quantity)
                
                type = try? container.decode(String.self, forKey: .type)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                try? container.encodeIfPresent(best, forKey: .best)
                
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
            
            public var name: String?
            
            public var state: String?
            
            public var checkoutMode: String?
            
            public var areaCode: String?
            
            public var landmark: String?
            
            public var area: String?
            
            public var email: String?
            
            public var meta: [String: Any]?
            
            public var isDefaultAddress: Bool?
            
            public var tags: [[String: Any]]?
            
            public var isActive: Bool?
            
            public var userId: String?
            
            public var geoLocation: GeoLocation?
            
            public var addressId: Int?
            
            public var address: String?
            
            public var areaCodeSlug: String?
            
            public var uid: Int?
            
            public var city: String?
            
            public var phone: Int?
            
            public var country: String?
            
            public var addressType: String?
            
            public var countryCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case state = "state"
                
                case checkoutMode = "checkout_mode"
                
                case areaCode = "area_code"
                
                case landmark = "landmark"
                
                case area = "area"
                
                case email = "email"
                
                case meta = "meta"
                
                case isDefaultAddress = "is_default_address"
                
                case tags = "tags"
                
                case isActive = "is_active"
                
                case userId = "user_id"
                
                case geoLocation = "geo_location"
                
                case addressId = "address_id"
                
                case address = "address"
                
                case areaCodeSlug = "area_code_slug"
                
                case uid = "uid"
                
                case city = "city"
                
                case phone = "phone"
                
                case country = "country"
                
                case addressType = "address_type"
                
                case countryCode = "country_code"
                
            }

            public init(name: String?, state: String?, checkoutMode: String?, areaCode: String?, landmark: String?, area: String?, email: String?, meta: [String: Any]?, isDefaultAddress: Bool?, tags: [[String: Any]]?, isActive: Bool?, userId: String?, geoLocation: GeoLocation?, addressId: Int?, address: String?, areaCodeSlug: String?, uid: Int?, city: String?, phone: Int?, country: String?, addressType: String?, countryCode: String?) {
                
                self.name = name
                
                self.state = state
                
                self.checkoutMode = checkoutMode
                
                self.areaCode = areaCode
                
                self.landmark = landmark
                
                self.area = area
                
                self.email = email
                
                self.meta = meta
                
                self.isDefaultAddress = isDefaultAddress
                
                self.tags = tags
                
                self.isActive = isActive
                
                self.userId = userId
                
                self.geoLocation = geoLocation
                
                self.addressId = addressId
                
                self.address = address
                
                self.areaCodeSlug = areaCodeSlug
                
                self.uid = uid
                
                self.city = city
                
                self.phone = phone
                
                self.country = country
                
                self.addressType = addressType
                
                self.countryCode = countryCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                state = try? container.decode(String.self, forKey: .state)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                areaCode = try? container.decode(String.self, forKey: .areaCode)
                
                landmark = try? container.decode(String.self, forKey: .landmark)
                
                area = try? container.decode(String.self, forKey: .area)
                
                email = try? container.decode(String.self, forKey: .email)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                address = try? container.decode(String.self, forKey: .address)
                
                areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                city = try? container.decode(String.self, forKey: .city)
                
                phone = try? container.decode(Int.self, forKey: .phone)
                
                country = try? container.decode(String.self, forKey: .country)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
                countryCode = try? container.decode(String.self, forKey: .countryCode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
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
            
            public var name: String?
            
            public var state: String?
            
            public var checkoutMode: String?
            
            public var areaCode: String?
            
            public var landmark: String?
            
            public var area: String?
            
            public var email: String?
            
            public var meta: [String: Any]?
            
            public var isDefaultAddress: Bool?
            
            public var tags: [[String: Any]]?
            
            public var isActive: Bool?
            
            public var userId: String?
            
            public var geoLocation: GeoLocation?
            
            public var addressId: Int?
            
            public var address: String?
            
            public var areaCodeSlug: String?
            
            public var uid: Int?
            
            public var city: String?
            
            public var phone: Int?
            
            public var country: String?
            
            public var addressType: String?
            
            public var countryCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case state = "state"
                
                case checkoutMode = "checkout_mode"
                
                case areaCode = "area_code"
                
                case landmark = "landmark"
                
                case area = "area"
                
                case email = "email"
                
                case meta = "meta"
                
                case isDefaultAddress = "is_default_address"
                
                case tags = "tags"
                
                case isActive = "is_active"
                
                case userId = "user_id"
                
                case geoLocation = "geo_location"
                
                case addressId = "address_id"
                
                case address = "address"
                
                case areaCodeSlug = "area_code_slug"
                
                case uid = "uid"
                
                case city = "city"
                
                case phone = "phone"
                
                case country = "country"
                
                case addressType = "address_type"
                
                case countryCode = "country_code"
                
            }

            public init(name: String?, state: String?, checkoutMode: String?, areaCode: String?, landmark: String?, area: String?, email: String?, meta: [String: Any]?, isDefaultAddress: Bool?, tags: [[String: Any]]?, isActive: Bool?, userId: String?, geoLocation: GeoLocation?, addressId: Int?, address: String?, areaCodeSlug: String?, uid: Int?, city: String?, phone: Int?, country: String?, addressType: String?, countryCode: String?) {
                
                self.name = name
                
                self.state = state
                
                self.checkoutMode = checkoutMode
                
                self.areaCode = areaCode
                
                self.landmark = landmark
                
                self.area = area
                
                self.email = email
                
                self.meta = meta
                
                self.isDefaultAddress = isDefaultAddress
                
                self.tags = tags
                
                self.isActive = isActive
                
                self.userId = userId
                
                self.geoLocation = geoLocation
                
                self.addressId = addressId
                
                self.address = address
                
                self.areaCodeSlug = areaCodeSlug
                
                self.uid = uid
                
                self.city = city
                
                self.phone = phone
                
                self.country = country
                
                self.addressType = addressType
                
                self.countryCode = countryCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                state = try? container.decode(String.self, forKey: .state)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                areaCode = try? container.decode(String.self, forKey: .areaCode)
                
                landmark = try? container.decode(String.self, forKey: .landmark)
                
                area = try? container.decode(String.self, forKey: .area)
                
                email = try? container.decode(String.self, forKey: .email)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                address = try? container.decode(String.self, forKey: .address)
                
                areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                city = try? container.decode(String.self, forKey: .city)
                
                phone = try? container.decode(Int.self, forKey: .phone)
                
                country = try? container.decode(String.self, forKey: .country)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
                countryCode = try? container.decode(String.self, forKey: .countryCode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
            }
            
        }
        
        /*
            Model: SaveAddressResponse
            Used By: Cart
        */
        struct SaveAddressResponse: Codable {
            
            public var addressId: Int?
            
            public var isDefaultAddress: Bool?
            
            public var success: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case addressId = "address_id"
                
                case isDefaultAddress = "is_default_address"
                
                case success = "success"
                
            }

            public init(addressId: Int?, isDefaultAddress: Bool?, success: String?) {
                
                self.addressId = addressId
                
                self.isDefaultAddress = isDefaultAddress
                
                self.success = success
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                success = try? container.decode(String.self, forKey: .success)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
            }
            
        }
        
        /*
            Model: AddressResponse
            Used By: Cart
        */
        struct AddressResponse: Codable {
            
            public var name: String?
            
            public var state: String?
            
            public var checkoutMode: String?
            
            public var areaCode: String?
            
            public var landmark: String?
            
            public var area: String?
            
            public var email: String?
            
            public var meta: [String: Any]?
            
            public var isDefaultAddress: Bool?
            
            public var tags: [[String: Any]]?
            
            public var isActive: Bool?
            
            public var userId: String?
            
            public var geoLocation: GeoLocation?
            
            public var addressId: Int?
            
            public var address: String?
            
            public var areaCodeSlug: String?
            
            public var uid: Int?
            
            public var city: String?
            
            public var phone: Int?
            
            public var country: String?
            
            public var addressType: String?
            
            public var countryCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case state = "state"
                
                case checkoutMode = "checkout_mode"
                
                case areaCode = "area_code"
                
                case landmark = "landmark"
                
                case area = "area"
                
                case email = "email"
                
                case meta = "meta"
                
                case isDefaultAddress = "is_default_address"
                
                case tags = "tags"
                
                case isActive = "is_active"
                
                case userId = "user_id"
                
                case geoLocation = "geo_location"
                
                case addressId = "address_id"
                
                case address = "address"
                
                case areaCodeSlug = "area_code_slug"
                
                case uid = "uid"
                
                case city = "city"
                
                case phone = "phone"
                
                case country = "country"
                
                case addressType = "address_type"
                
                case countryCode = "country_code"
                
            }

            public init(name: String?, state: String?, checkoutMode: String?, areaCode: String?, landmark: String?, area: String?, email: String?, meta: [String: Any]?, isDefaultAddress: Bool?, tags: [[String: Any]]?, isActive: Bool?, userId: String?, geoLocation: GeoLocation?, addressId: Int?, address: String?, areaCodeSlug: String?, uid: Int?, city: String?, phone: Int?, country: String?, addressType: String?, countryCode: String?) {
                
                self.name = name
                
                self.state = state
                
                self.checkoutMode = checkoutMode
                
                self.areaCode = areaCode
                
                self.landmark = landmark
                
                self.area = area
                
                self.email = email
                
                self.meta = meta
                
                self.isDefaultAddress = isDefaultAddress
                
                self.tags = tags
                
                self.isActive = isActive
                
                self.userId = userId
                
                self.geoLocation = geoLocation
                
                self.addressId = addressId
                
                self.address = address
                
                self.areaCodeSlug = areaCodeSlug
                
                self.uid = uid
                
                self.city = city
                
                self.phone = phone
                
                self.country = country
                
                self.addressType = addressType
                
                self.countryCode = countryCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                state = try? container.decode(String.self, forKey: .state)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                areaCode = try? container.decode(String.self, forKey: .areaCode)
                
                landmark = try? container.decode(String.self, forKey: .landmark)
                
                area = try? container.decode(String.self, forKey: .area)
                
                email = try? container.decode(String.self, forKey: .email)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                tags = try? container.decode([[String: Any]].self, forKey: .tags)
                
                isActive = try? container.decode(Bool.self, forKey: .isActive)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                address = try? container.decode(String.self, forKey: .address)
                
                areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
                city = try? container.decode(String.self, forKey: .city)
                
                phone = try? container.decode(Int.self, forKey: .phone)
                
                country = try? container.decode(String.self, forKey: .country)
                
                addressType = try? container.decode(String.self, forKey: .addressType)
                
                countryCode = try? container.decode(String.self, forKey: .countryCode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
            }
            
        }
        
        /*
            Model: UpdateAddressResponse
            Used By: Cart
        */
        struct UpdateAddressResponse: Codable {
            
            public var addressId: Int?
            
            public var isUpdated: Bool?
            
            public var isDefaultAddress: Bool?
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case addressId = "address_id"
                
                case isUpdated = "is_updated"
                
                case isDefaultAddress = "is_default_address"
                
                case success = "success"
                
            }

            public init(addressId: Int?, isUpdated: Bool?, isDefaultAddress: Bool?, success: Bool?) {
                
                self.addressId = addressId
                
                self.isUpdated = isUpdated
                
                self.isDefaultAddress = isDefaultAddress
                
                self.success = success
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
                
                isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
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

            public init(isDeleted: Bool?, addressId: Int?) {
                
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
            
            public var addressId: String?
            
            public var uid: String?
            
            public var billingAddressId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case addressId = "address_id"
                
                case uid = "uid"
                
                case billingAddressId = "billing_address_id"
                
            }

            public init(addressId: String?, uid: String?, billingAddressId: Int?) {
                
                self.addressId = addressId
                
                self.uid = uid
                
                self.billingAddressId = billingAddressId
                
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
            Model: UpdateCartPaymentRequest
            Used By: Cart
        */
        struct UpdateCartPaymentRequest: Codable {
            
            public var paymentIdentifier: String?
            
            public var addressId: Int?
            
            public var merchantCode: String?
            
            public var aggregatorName: String?
            
            public var paymentMode: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentIdentifier = "payment_identifier"
                
                case addressId = "address_id"
                
                case merchantCode = "merchant_code"
                
                case aggregatorName = "aggregator_name"
                
                case paymentMode = "payment_mode"
                
                case uid = "uid"
                
            }

            public init(paymentIdentifier: String?, addressId: Int?, merchantCode: String?, aggregatorName: String?, paymentMode: String?, uid: Int?) {
                
                self.paymentIdentifier = paymentIdentifier
                
                self.addressId = addressId
                
                self.merchantCode = merchantCode
                
                self.aggregatorName = aggregatorName
                
                self.paymentMode = paymentMode
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
                
                paymentMode = try? container.decode(String.self, forKey: .paymentMode)
                
                uid = try? container.decode(Int.self, forKey: .uid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: ShipmentResponse
            Used By: Cart
        */
        struct ShipmentResponse: Codable {
            
            public var shipmentType: String?
            
            public var dpId: Int?
            
            public var shipments: Int?
            
            public var boxType: String?
            
            public var fulfillmentId: Int?
            
            public var dpOptions: [String: Any]?
            
            public var promise: String?
            
            public var items: [CartProductInfo]?
            
            public var fulfillmentType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case shipmentType = "shipment_type"
                
                case dpId = "dp_id"
                
                case shipments = "shipments"
                
                case boxType = "box_type"
                
                case fulfillmentId = "fulfillment_id"
                
                case dpOptions = "dp_options"
                
                case promise = "promise"
                
                case items = "items"
                
                case fulfillmentType = "fulfillment_type"
                
            }

            public init(shipmentType: String?, dpId: Int?, shipments: Int?, boxType: String?, fulfillmentId: Int?, dpOptions: [String: Any]?, promise: String?, items: [CartProductInfo]?, fulfillmentType: String?) {
                
                self.shipmentType = shipmentType
                
                self.dpId = dpId
                
                self.shipments = shipments
                
                self.boxType = boxType
                
                self.fulfillmentId = fulfillmentId
                
                self.dpOptions = dpOptions
                
                self.promise = promise
                
                self.items = items
                
                self.fulfillmentType = fulfillmentType
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                shipmentType = try? container.decode(String.self, forKey: .shipmentType)
                
                dpId = try? container.decode(Int.self, forKey: .dpId)
                
                shipments = try? container.decode(Int.self, forKey: .shipments)
                
                boxType = try? container.decode(String.self, forKey: .boxType)
                
                fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
                
                dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
                
                promise = try? container.decode(String.self, forKey: .promise)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                try? container.encodeIfPresent(dpId, forKey: .dpId)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(boxType, forKey: .boxType)
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
                
            }
            
        }
        
        /*
            Model: CartShipmentsResponse
            Used By: Cart
        */
        struct CartShipmentsResponse: Codable {
            
            public var deliveryPromise: ShipmentPromise?
            
            public var cartId: Int?
            
            public var shipments: [ShipmentResponse]?
            
            public var gstin: String?
            
            public var deliveryChargeInfo: [String]?
            
            public var restrictCheckout: Bool?
            
            public var message: String?
            
            public var currency: CartCurrency?
            
            public var paymentOptions: PaymentOptions?
            
            public var comment: String?
            
            public var couponText: String?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var checkoutMode: String?
            
            public var uid: String?
            
            public var breakupValues: CartBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case deliveryPromise = "delivery_promise"
                
                case cartId = "cart_id"
                
                case shipments = "shipments"
                
                case gstin = "gstin"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case restrictCheckout = "restrict_checkout"
                
                case message = "message"
                
                case currency = "currency"
                
                case paymentOptions = "payment_options"
                
                case comment = "comment"
                
                case couponText = "coupon_text"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case checkoutMode = "checkout_mode"
                
                case uid = "uid"
                
                case breakupValues = "breakup_values"
                
            }

            public init(deliveryPromise: ShipmentPromise?, cartId: Int?, shipments: [ShipmentResponse]?, gstin: String?, deliveryChargeInfo: [String]?, restrictCheckout: Bool?, message: String?, currency: CartCurrency?, paymentOptions: PaymentOptions?, comment: String?, couponText: String?, lastModified: String?, isValid: Bool?, checkoutMode: String?, uid: String?, breakupValues: CartBreakup?) {
                
                self.deliveryPromise = deliveryPromise
                
                self.cartId = cartId
                
                self.shipments = shipments
                
                self.gstin = gstin
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.restrictCheckout = restrictCheckout
                
                self.message = message
                
                self.currency = currency
                
                self.paymentOptions = paymentOptions
                
                self.comment = comment
                
                self.couponText = couponText
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.checkoutMode = checkoutMode
                
                self.uid = uid
                
                self.breakupValues = breakupValues
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                message = try? container.decode(String.self, forKey: .message)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
            }
            
        }
        
        /*
            Model: CartCheckoutRequest
            Used By: Cart
        */
        struct CartCheckoutRequest: Codable {
            
            public var staff: [String: Any]?
            
            public var extraMeta: [String: Any]?
            
            public var billingAddressId: Int?
            
            public var orderingStore: Int?
            
            public var aggregator: String?
            
            public var fyndstoreEmpId: String?
            
            public var paymentAutoConfirm: Bool?
            
            public var meta: [String: Any]?
            
            public var paymentIdentifier: String?
            
            public var addressId: Int?
            
            public var merchantCode: String?
            
            public var callbackUrl: String?
            
            public var paymentMode: String
            
            public var billingAddress: [String: Any]?
            
            public var paymentParams: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case staff = "staff"
                
                case extraMeta = "extra_meta"
                
                case billingAddressId = "billing_address_id"
                
                case orderingStore = "ordering_store"
                
                case aggregator = "aggregator"
                
                case fyndstoreEmpId = "fyndstore_emp_id"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case meta = "meta"
                
                case paymentIdentifier = "payment_identifier"
                
                case addressId = "address_id"
                
                case merchantCode = "merchant_code"
                
                case callbackUrl = "callback_url"
                
                case paymentMode = "payment_mode"
                
                case billingAddress = "billing_address"
                
                case paymentParams = "payment_params"
                
            }

            public init(staff: [String: Any]?, extraMeta: [String: Any]?, billingAddressId: Int?, orderingStore: Int?, aggregator: String?, fyndstoreEmpId: String?, paymentAutoConfirm: Bool?, meta: [String: Any]?, paymentIdentifier: String?, addressId: Int?, merchantCode: String?, callbackUrl: String?, paymentMode: String, billingAddress: [String: Any]?, paymentParams: [String: Any]?) {
                
                self.staff = staff
                
                self.extraMeta = extraMeta
                
                self.billingAddressId = billingAddressId
                
                self.orderingStore = orderingStore
                
                self.aggregator = aggregator
                
                self.fyndstoreEmpId = fyndstoreEmpId
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.meta = meta
                
                self.paymentIdentifier = paymentIdentifier
                
                self.addressId = addressId
                
                self.merchantCode = merchantCode
                
                self.callbackUrl = callbackUrl
                
                self.paymentMode = paymentMode
                
                self.billingAddress = billingAddress
                
                self.paymentParams = paymentParams
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                staff = try? container.decode([String: Any].self, forKey: .staff)
                
                extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
                
                billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
                
                orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
                
                aggregator = try? container.decode(String.self, forKey: .aggregator)
                
                fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
                
                paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
                
                addressId = try? container.decode(Int.self, forKey: .addressId)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
                
                paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
                
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
            Model: CheckCart
            Used By: Cart
        */
        struct CheckCart: Codable {
            
            public var gstin: String?
            
            public var restrictCheckout: Bool?
            
            public var deliveryCharges: Int?
            
            public var codAvailable: Bool?
            
            public var codMessage: String?
            
            public var checkoutMode: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var cartId: Int?
            
            public var storeEmps: [[String: Any]]?
            
            public var deliveryChargeInfo: [String]?
            
            public var success: Bool?
            
            public var couponText: String?
            
            public var items: [CartProductInfo]?
            
            public var lastModified: String?
            
            public var errorMessage: String?
            
            public var comment: String?
            
            public var currency: CartCurrency?
            
            public var storeCode: String?
            
            public var paymentOptions: PaymentOptions?
            
            public var deliveryChargeOrderValue: Int?
            
            public var userType: String?
            
            public var uid: String?
            
            public var breakupValues: CartBreakup?
            
            public var orderId: String?
            
            public var message: String?
            
            public var codCharges: Int?
            
            public var isValid: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstin = "gstin"
                
                case restrictCheckout = "restrict_checkout"
                
                case deliveryCharges = "delivery_charges"
                
                case codAvailable = "cod_available"
                
                case codMessage = "cod_message"
                
                case checkoutMode = "checkout_mode"
                
                case deliveryPromise = "delivery_promise"
                
                case cartId = "cart_id"
                
                case storeEmps = "store_emps"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case success = "success"
                
                case couponText = "coupon_text"
                
                case items = "items"
                
                case lastModified = "last_modified"
                
                case errorMessage = "error_message"
                
                case comment = "comment"
                
                case currency = "currency"
                
                case storeCode = "store_code"
                
                case paymentOptions = "payment_options"
                
                case deliveryChargeOrderValue = "delivery_charge_order_value"
                
                case userType = "user_type"
                
                case uid = "uid"
                
                case breakupValues = "breakup_values"
                
                case orderId = "order_id"
                
                case message = "message"
                
                case codCharges = "cod_charges"
                
                case isValid = "is_valid"
                
            }

            public init(gstin: String?, restrictCheckout: Bool?, deliveryCharges: Int?, codAvailable: Bool?, codMessage: String?, checkoutMode: String?, deliveryPromise: ShipmentPromise?, cartId: Int?, storeEmps: [[String: Any]]?, deliveryChargeInfo: [String]?, success: Bool?, couponText: String?, items: [CartProductInfo]?, lastModified: String?, errorMessage: String?, comment: String?, currency: CartCurrency?, storeCode: String?, paymentOptions: PaymentOptions?, deliveryChargeOrderValue: Int?, userType: String?, uid: String?, breakupValues: CartBreakup?, orderId: String?, message: String?, codCharges: Int?, isValid: Bool?) {
                
                self.gstin = gstin
                
                self.restrictCheckout = restrictCheckout
                
                self.deliveryCharges = deliveryCharges
                
                self.codAvailable = codAvailable
                
                self.codMessage = codMessage
                
                self.checkoutMode = checkoutMode
                
                self.deliveryPromise = deliveryPromise
                
                self.cartId = cartId
                
                self.storeEmps = storeEmps
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.success = success
                
                self.couponText = couponText
                
                self.items = items
                
                self.lastModified = lastModified
                
                self.errorMessage = errorMessage
                
                self.comment = comment
                
                self.currency = currency
                
                self.storeCode = storeCode
                
                self.paymentOptions = paymentOptions
                
                self.deliveryChargeOrderValue = deliveryChargeOrderValue
                
                self.userType = userType
                
                self.uid = uid
                
                self.breakupValues = breakupValues
                
                self.orderId = orderId
                
                self.message = message
                
                self.codCharges = codCharges
                
                self.isValid = isValid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
                
                codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
                
                codMessage = try? container.decode(String.self, forKey: .codMessage)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                errorMessage = try? container.decode(String.self, forKey: .errorMessage)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                storeCode = try? container.decode(String.self, forKey: .storeCode)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
                
                userType = try? container.decode(String.self, forKey: .userType)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
                orderId = try? container.decode(String.self, forKey: .orderId)
                
                message = try? container.decode(String.self, forKey: .message)
                
                codCharges = try? container.decode(Int.self, forKey: .codCharges)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
                
                try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
                
                try? container.encodeIfPresent(codMessage, forKey: .codMessage)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
                
                try? container.encodeIfPresent(userType, forKey: .userType)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
            }
            
        }
        
        /*
            Model: CartCheckoutResponse
            Used By: Cart
        */
        struct CartCheckoutResponse: Codable {
            
            public var orderId: String?
            
            public var data: OrderData?
            
            public var message: String?
            
            public var cart: CheckCart?
            
            public var success: Bool?
            
            public var appInterceptUrl: String?
            
            public var callbackUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case data = "data"
                
                case message = "message"
                
                case cart = "cart"
                
                case success = "success"
                
                case appInterceptUrl = "app_intercept_url"
                
                case callbackUrl = "callback_url"
                
            }

            public init(orderId: String?, data: OrderData?, message: String?, cart: CheckCart?, success: Bool?, appInterceptUrl: String?, callbackUrl: String?) {
                
                self.orderId = orderId
                
                self.data = data
                
                self.message = message
                
                self.cart = cart
                
                self.success = success
                
                self.appInterceptUrl = appInterceptUrl
                
                self.callbackUrl = callbackUrl
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                orderId = try? container.decode(String.self, forKey: .orderId)
                
                data = try? container.decode(OrderData.self, forKey: .data)
                
                message = try? container.decode(String.self, forKey: .message)
                
                cart = try? container.decode(CheckCart.self, forKey: .cart)
                
                success = try? container.decode(Bool.self, forKey: .success)
                
                appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
                
                callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
            }
            
        }
        
        /*
            Model: CartMetaRequest
            Used By: Cart
        */
        struct CartMetaRequest: Codable {
            
            public var pickUpCustomerDetails: [String: Any]?
            
            public var gstin: String?
            
            public var comment: String?
            
            public var checkoutMode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pickUpCustomerDetails = "pick_up_customer_details"
                
                case gstin = "gstin"
                
                case comment = "comment"
                
                case checkoutMode = "checkout_mode"
                
            }

            public init(pickUpCustomerDetails: [String: Any]?, gstin: String?, comment: String?, checkoutMode: String?) {
                
                self.pickUpCustomerDetails = pickUpCustomerDetails
                
                self.gstin = gstin
                
                self.comment = comment
                
                self.checkoutMode = checkoutMode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                pickUpCustomerDetails = try? container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
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
            
            public var source: [String: Any]?
            
            public var createdOn: String?
            
            public var user: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var token: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case source = "source"
                
                case createdOn = "created_on"
                
                case user = "user"
                
                case meta = "meta"
                
                case token = "token"
                
            }

            public init(source: [String: Any]?, createdOn: String?, user: [String: Any]?, meta: [String: Any]?, token: String?) {
                
                self.source = source
                
                self.createdOn = createdOn
                
                self.user = user
                
                self.meta = meta
                
                self.token = token
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                source = try? container.decode([String: Any].self, forKey: .source)
                
                createdOn = try? container.decode(String.self, forKey: .createdOn)
                
                user = try? container.decode([String: Any].self, forKey: .user)
                
                meta = try? container.decode([String: Any].self, forKey: .meta)
                
                token = try? container.decode(String.self, forKey: .token)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(token, forKey: .token)
                
            }
            
        }
        
        /*
            Model: SharedCart
            Used By: Cart
        */
        struct SharedCart: Codable {
            
            public var deliveryPromise: ShipmentPromise?
            
            public var cartId: Int?
            
            public var gstin: String?
            
            public var deliveryChargeInfo: [String]?
            
            public var restrictCheckout: Bool?
            
            public var message: String?
            
            public var currency: CartCurrency?
            
            public var paymentOptions: PaymentOptions?
            
            public var comment: String?
            
            public var couponText: String?
            
            public var sharedCartDetails: SharedCartDetails?
            
            public var items: [CartProductInfo]?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var checkoutMode: String?
            
            public var uid: String?
            
            public var breakupValues: CartBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case deliveryPromise = "delivery_promise"
                
                case cartId = "cart_id"
                
                case gstin = "gstin"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case restrictCheckout = "restrict_checkout"
                
                case message = "message"
                
                case currency = "currency"
                
                case paymentOptions = "payment_options"
                
                case comment = "comment"
                
                case couponText = "coupon_text"
                
                case sharedCartDetails = "shared_cart_details"
                
                case items = "items"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case checkoutMode = "checkout_mode"
                
                case uid = "uid"
                
                case breakupValues = "breakup_values"
                
            }

            public init(deliveryPromise: ShipmentPromise?, cartId: Int?, gstin: String?, deliveryChargeInfo: [String]?, restrictCheckout: Bool?, message: String?, currency: CartCurrency?, paymentOptions: PaymentOptions?, comment: String?, couponText: String?, sharedCartDetails: SharedCartDetails?, items: [CartProductInfo]?, lastModified: String?, isValid: Bool?, checkoutMode: String?, uid: String?, breakupValues: CartBreakup?) {
                
                self.deliveryPromise = deliveryPromise
                
                self.cartId = cartId
                
                self.gstin = gstin
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.restrictCheckout = restrictCheckout
                
                self.message = message
                
                self.currency = currency
                
                self.paymentOptions = paymentOptions
                
                self.comment = comment
                
                self.couponText = couponText
                
                self.sharedCartDetails = sharedCartDetails
                
                self.items = items
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.checkoutMode = checkoutMode
                
                self.uid = uid
                
                self.breakupValues = breakupValues
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                deliveryPromise = try? container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                cartId = try? container.decode(Int.self, forKey: .cartId)
                
                gstin = try? container.decode(String.self, forKey: .gstin)
                
                deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
                
                restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
                
                message = try? container.decode(String.self, forKey: .message)
                
                currency = try? container.decode(CartCurrency.self, forKey: .currency)
                
                paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                couponText = try? container.decode(String.self, forKey: .couponText)
                
                sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
                
                items = try? container.decode([CartProductInfo].self, forKey: .items)
                
                lastModified = try? container.decode(String.self, forKey: .lastModified)
                
                isValid = try? container.decode(Bool.self, forKey: .isValid)
                
                checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
                
                uid = try? container.decode(String.self, forKey: .uid)
                
                breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
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
            Model: ApplicationDetailResponse
            Used By: Configuration
        */
        struct ApplicationDetailResponse: Codable {
            
            public var name: String?
            
            public var description: String?
            
            public var logo: SecureUrl?
            
            public var mobileLogo: SecureUrl?
            
            public var favicon: SecureUrl?
            
            public var banner: SecureUrl?
            
            public var domain: Domain?
            
            public var domains: [Domain]?
            
            public var companyId: Int?
            
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
                
                case companyId = "company_id"
                
                case id = "_id"
                
            }

            public init(name: String?, description: String?, logo: SecureUrl?, mobileLogo: SecureUrl?, favicon: SecureUrl?, banner: SecureUrl?, domain: Domain?, domains: [Domain]?, companyId: Int?, id: String?) {
                
                self.name = name
                
                self.description = description
                
                self.logo = logo
                
                self.mobileLogo = mobileLogo
                
                self.favicon = favicon
                
                self.banner = banner
                
                self.domain = domain
                
                self.domains = domains
                
                self.companyId = companyId
                
                self.id = id
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                name = try? container.decode(String.self, forKey: .name)
                
                description = try? container.decode(String.self, forKey: .description)
                
                logo = try? container.decode(SecureUrl.self, forKey: .logo)
                
                mobileLogo = try? container.decode(SecureUrl.self, forKey: .mobileLogo)
                
                favicon = try? container.decode(SecureUrl.self, forKey: .favicon)
                
                banner = try? container.decode(SecureUrl.self, forKey: .banner)
                
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

            public init(similar: [String]?, sellerSelection: Bool?, updateProductMeta: Bool?, requestProduct: Bool?) {
                
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

            public init(launchPage: LandingPage?, continueAsGuest: Bool?, loginBtnText: String?, showDomainTextbox: Bool?, showRegisterBtn: Bool?) {
                
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

            public init(productDetail: ProductDetailFeature?, landingPage: LandingPageFeature?, registrationPage: RegistrationPageFeature?, homePage: [String: Any]?, common: [String: Any]?, cart: [String: Any]?, qr: [String: Any]?, pcr: [String: Any]?, order: [String: Any]?, id: String?, app: String?, createdAt: String?, updatedAt: String?, v: Int?) {
                
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
            Model: OrderingStores
            Used By: Configuration
        */
        struct OrderingStores: Codable {
            
            public var page: [String: Any]?
            
            public var items: [Store]?
            
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

            public init(page: [String: Any]?, items: [Store]?, deployedStores: [Int]?, allStores: Bool?, enabled: Bool?, type: String?, id: String?, app: String?, v: Int?) {
                
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

            public init(address: [String: Any]?, support: [String: Any]?, socialLinks: [String: Any]?, links: [[String: Any]]?, copyrightText: String?, id: String?, businessHighlights: [[String: Any]]?, application: String?, createdAt: String?, updatedAt: String?, v: Int?) {
                
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

            public init(name: String?, code: String?) {
                
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

            public init(tokens: [String: Any]?, id: String?, application: String?, createdAt: String?, updatedAt: String?, v: Int?) {
                
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

            public init(id: String?, orderIncent: Bool?, stores: [Int]?, application: String?, title: String?, user: String?, employeeCode: String?, firstName: String?, lastName: String?, profilePicUrl: String?) {
                
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

            public init(id: String?, isActive: Bool?, name: String?, code: String?, createdAt: String?, updatedAt: String?, decimalDigits: Int?, symbol: String?) {
                
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

            public init(verified: Bool?, isPrimary: Bool?, isDefault: Bool?, isShortlink: Bool?, id: String?, name: String?) {
                
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

            public init(enabled: Bool?, basepath: String?) {
                
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
            
            public var id: String?
            

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
                
                case id = "id"
                
            }

            public init(website: ApplicationWebsite?, cors: ApplicationCors?, auth: ApplicationAuth?, description: String?, channelType: String?, cacheTtl: Int?, isInternal: Bool?, isActive: Bool?, id: String?, name: String?, owner: String?, companyId: Int?, token: String?, redirections: [ApplicationRedirections]?, meta: [ApplicationMeta]?, createdAt: String?, updatedAt: String?, v: Int?, banner: SecureUrl?, logo: SecureUrl?, favicon: SecureUrl?, domains: [Domain]?, appType: String?, mobileLogo: SecureUrl?, domain: Domain?, id: String?) {
                
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
                
                self.id = id
                
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
                
                try? container.encodeIfPresent(id, forKey: .id)
                
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
            Model: App
            Used By: Configuration
        */
        struct App: Codable {
            
            public var companyId: String?
            
            public var channelType: String?
            
            public var auth: [String: Any]?
            
            public var name: String?
            
            public var desc: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case companyId = "company_id"
                
                case channelType = "channel_type"
                
                case auth = "auth"
                
                case name = "name"
                
                case desc = "desc"
                
            }

            public init(companyId: String?, channelType: String?, auth: [String: Any]?, name: String?, desc: String?) {
                
                self.companyId = companyId
                
                self.channelType = channelType
                
                self.auth = auth
                
                self.name = name
                
                self.desc = desc
                
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

            public init(criteria: String?, brands: [Int]?) {
                
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

            public init(companies: [Int]?, brands: [Int]?) {
                
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

            public init(postOrderReassignment: Bool?, enforcedStores: [Int]?, rules: ArticleAssignmentRule?) {
                
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
            Model: AppInventory
            Used By: Configuration
        */
        struct AppInventory: Codable {
            
            public var brand: InventoryBrandRule?
            
            public var store: InventoryStoreRule?
            
            public var image: [String]?
            
            public var franchiseEnabled: Bool?
            
            public var outOfStock: Bool?
            
            public var payment: InventoryPaymentConfig?
            
            public var articleAssignment: InventoryArticleAssignment?
            

            public enum CodingKeys: String, CodingKey {
                
                case brand = "brand"
                
                case store = "store"
                
                case image = "image"
                
                case franchiseEnabled = "franchise_enabled"
                
                case outOfStock = "out_of_stock"
                
                case payment = "payment"
                
                case articleAssignment = "article_assignment"
                
            }

            public init(brand: InventoryBrandRule?, store: InventoryStoreRule?, image: [String]?, franchiseEnabled: Bool?, outOfStock: Bool?, payment: InventoryPaymentConfig?, articleAssignment: InventoryArticleAssignment?) {
                
                self.brand = brand
                
                self.store = store
                
                self.image = image
                
                self.franchiseEnabled = franchiseEnabled
                
                self.outOfStock = outOfStock
                
                self.payment = payment
                
                self.articleAssignment = articleAssignment
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                brand = try? container.decode(InventoryBrandRule.self, forKey: .brand)
                
                store = try? container.decode(InventoryStoreRule.self, forKey: .store)
                
                image = try? container.decode([String].self, forKey: .image)
                
                franchiseEnabled = try? container.decode(Bool.self, forKey: .franchiseEnabled)
                
                outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
                
                payment = try? container.decode(InventoryPaymentConfig.self, forKey: .payment)
                
                articleAssignment = try? container.decode(InventoryArticleAssignment.self, forKey: .articleAssignment)
                
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
            Model: AppDomain
            Used By: Configuration
        */
        struct AppDomain: Codable {
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
            }

            public init(name: String?) {
                
                self.name = name
                
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

            public init(pincode: Int?, address1: String?, city: String?, state: String?, country: String?, addressType: String?) {
                
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

            public init(active: Bool?, primary: Bool?, verified: Bool?, email: String?) {
                
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

            public init(active: Bool?, primary: Bool?, verified: Bool?, countryCode: Int?, phone: String?) {
                
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
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        struct AggregatorConfigDetail: Codable {
            
            public var merchantKey: String?
            
            public var key: String
            
            public var secret: String
            
            public var api: String?
            
            public var merchantId: String?
            
            public var pin: String?
            
            public var sdk: Bool?
            
            public var userId: String?
            
            public var verifyApi: String?
            
            public var configType: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantKey = "merchant_key"
                
                case key = "key"
                
                case secret = "secret"
                
                case api = "api"
                
                case merchantId = "merchant_id"
                
                case pin = "pin"
                
                case sdk = "sdk"
                
                case userId = "user_id"
                
                case verifyApi = "verify_api"
                
                case configType = "config_type"
                
            }

            public init(merchantKey: String?, key: String, secret: String, api: String?, merchantId: String?, pin: String?, sdk: Bool?, userId: String?, verifyApi: String?, configType: String) {
                
                self.merchantKey = merchantKey
                
                self.key = key
                
                self.secret = secret
                
                self.api = api
                
                self.merchantId = merchantId
                
                self.pin = pin
                
                self.sdk = sdk
                
                self.userId = userId
                
                self.verifyApi = verifyApi
                
                self.configType = configType
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                merchantKey = try? container.decode(String.self, forKey: .merchantKey)
                
                key = try container.decode(String.self, forKey: .key)
                
                secret = try container.decode(String.self, forKey: .secret)
                
                api = try? container.decode(String.self, forKey: .api)
                
                merchantId = try? container.decode(String.self, forKey: .merchantId)
                
                pin = try? container.decode(String.self, forKey: .pin)
                
                sdk = try? container.decode(Bool.self, forKey: .sdk)
                
                userId = try? container.decode(String.self, forKey: .userId)
                
                verifyApi = try? container.decode(String.self, forKey: .verifyApi)
                
                configType = try container.decode(String.self, forKey: .configType)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                try? container.encodeIfPresent(api, forKey: .api)
                
                try? container.encodeIfPresent(merchantId, forKey: .merchantId)
                
                try? container.encodeIfPresent(pin, forKey: .pin)
                
                try? container.encodeIfPresent(sdk, forKey: .sdk)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        struct AggregatorsConfigDetailResponse: Codable {
            
            public var simpl: AggregatorConfigDetail?
            
            public var env: String
            
            public var rupifi: AggregatorConfigDetail?
            
            public var payumoney: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var razorpay: AggregatorConfigDetail?
            
            public var mswipe: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var success: Bool
            
            public var juspay: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case simpl = "simpl"
                
                case env = "env"
                
                case rupifi = "rupifi"
                
                case payumoney = "payumoney"
                
                case stripe = "stripe"
                
                case razorpay = "razorpay"
                
                case mswipe = "mswipe"
                
                case ccavenue = "ccavenue"
                
                case success = "success"
                
                case juspay = "juspay"
                
            }

            public init(simpl: AggregatorConfigDetail?, env: String, rupifi: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, ccavenue: AggregatorConfigDetail?, success: Bool, juspay: AggregatorConfigDetail?) {
                
                self.simpl = simpl
                
                self.env = env
                
                self.rupifi = rupifi
                
                self.payumoney = payumoney
                
                self.stripe = stripe
                
                self.razorpay = razorpay
                
                self.mswipe = mswipe
                
                self.ccavenue = ccavenue
                
                self.success = success
                
                self.juspay = juspay
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
                env = try container.decode(String.self, forKey: .env)
                
                rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
                payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
                stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                
                razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
                mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
                ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
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
            
            public var refresh: Bool?
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case refresh = "refresh"
                
                case cardId = "card_id"
                
            }

            public init(refresh: Bool?, cardId: String) {
                
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
            
            public var success: Bool
            
            public var data: [String: Any]
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
                case message = "message"
                
            }

            public init(success: Bool, data: [String: Any], message: String?) {
                
                self.success = success
                
                self.data = data
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                message = try? container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: CardPaymentGateway
            Used By: Payment
        */
        struct CardPaymentGateway: Codable {
            
            public var customerId: String?
            
            public var api: String?
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case customerId = "customer_id"
                
                case api = "api"
                
                case aggregator = "aggregator"
                
            }

            public init(customerId: String?, api: String?, aggregator: String) {
                
                self.customerId = customerId
                
                self.api = api
                
                self.aggregator = aggregator
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                customerId = try? container.decode(String.self, forKey: .customerId)
                
                api = try? container.decode(String.self, forKey: .api)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(api, forKey: .api)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        struct ActiveCardPaymentGatewayResponse: Codable {
            
            public var success: Bool
            
            public var cards: CardPaymentGateway
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case cards = "cards"
                
                case message = "message"
                
            }

            public init(success: Bool, cards: CardPaymentGateway, message: String) {
                
                self.success = success
                
                self.cards = cards
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        struct Card: Codable {
            
            public var cardNumber: String?
            
            public var aggregatorName: String
            
            public var cardName: String?
            
            public var expYear: Int?
            
            public var expMonth: Int?
            
            public var nickname: String?
            
            public var cardIsin: String?
            
            public var expired: Bool?
            
            public var cardReference: String?
            
            public var cardToken: String?
            
            public var cardId: String?
            
            public var cardType: String?
            
            public var cardIssuer: String?
            
            public var cardBrand: String?
            
            public var cardFingerprint: String?
            
            public var cardBrandImage: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardNumber = "card_number"
                
                case aggregatorName = "aggregator_name"
                
                case cardName = "card_name"
                
                case expYear = "exp_year"
                
                case expMonth = "exp_month"
                
                case nickname = "nickname"
                
                case cardIsin = "card_isin"
                
                case expired = "expired"
                
                case cardReference = "card_reference"
                
                case cardToken = "card_token"
                
                case cardId = "card_id"
                
                case cardType = "card_type"
                
                case cardIssuer = "card_issuer"
                
                case cardBrand = "card_brand"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardBrandImage = "card_brand_image"
                
            }

            public init(cardNumber: String?, aggregatorName: String, cardName: String?, expYear: Int?, expMonth: Int?, nickname: String?, cardIsin: String?, expired: Bool?, cardReference: String?, cardToken: String?, cardId: String?, cardType: String?, cardIssuer: String?, cardBrand: String?, cardFingerprint: String?, cardBrandImage: String?) {
                
                self.cardNumber = cardNumber
                
                self.aggregatorName = aggregatorName
                
                self.cardName = cardName
                
                self.expYear = expYear
                
                self.expMonth = expMonth
                
                self.nickname = nickname
                
                self.cardIsin = cardIsin
                
                self.expired = expired
                
                self.cardReference = cardReference
                
                self.cardToken = cardToken
                
                self.cardId = cardId
                
                self.cardType = cardType
                
                self.cardIssuer = cardIssuer
                
                self.cardBrand = cardBrand
                
                self.cardFingerprint = cardFingerprint
                
                self.cardBrandImage = cardBrandImage
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cardNumber = try? container.decode(String.self, forKey: .cardNumber)
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                cardName = try? container.decode(String.self, forKey: .cardName)
                
                expYear = try? container.decode(Int.self, forKey: .expYear)
                
                expMonth = try? container.decode(Int.self, forKey: .expMonth)
                
                nickname = try? container.decode(String.self, forKey: .nickname)
                
                cardIsin = try? container.decode(String.self, forKey: .cardIsin)
                
                expired = try? container.decode(Bool.self, forKey: .expired)
                
                cardReference = try? container.decode(String.self, forKey: .cardReference)
                
                cardToken = try? container.decode(String.self, forKey: .cardToken)
                
                cardId = try? container.decode(String.self, forKey: .cardId)
                
                cardType = try? container.decode(String.self, forKey: .cardType)
                
                cardIssuer = try? container.decode(String.self, forKey: .cardIssuer)
                
                cardBrand = try? container.decode(String.self, forKey: .cardBrand)
                
                cardFingerprint = try? container.decode(String.self, forKey: .cardFingerprint)
                
                cardBrandImage = try? container.decode(String.self, forKey: .cardBrandImage)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
            }
            
        }
        
        /*
            Model: ListCardsResponse
            Used By: Payment
        */
        struct ListCardsResponse: Codable {
            
            public var success: Bool
            
            public var data: [Card]?
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
                case message = "message"
                
            }

            public init(success: Bool, data: [Card]?, message: String) {
                
                self.success = success
                
                self.data = data
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                data = try? container.decode([Card].self, forKey: .data)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
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
            
            public var phoneNumber: String
            
            public var payload: String
            
            public var aggregator: String
            
            public var merchantParams: [String: Any]
            
            public var transactionAmountInPaise: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case phoneNumber = "phone_number"
                
                case payload = "payload"
                
                case aggregator = "aggregator"
                
                case merchantParams = "merchant_params"
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
            }

            public init(phoneNumber: String, payload: String, aggregator: String, merchantParams: [String: Any], transactionAmountInPaise: Int) {
                
                self.phoneNumber = phoneNumber
                
                self.payload = payload
                
                self.aggregator = aggregator
                
                self.merchantParams = merchantParams
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                payload = try container.decode(String.self, forKey: .payload)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                try? container.encodeIfPresent(payload, forKey: .payload)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
            }
            
        }
        
        /*
            Model: ValidateCustomerResponse
            Used By: Payment
        */
        struct ValidateCustomerResponse: Codable {
            
            public var success: Bool
            
            public var data: [String: Any]
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
                case message = "message"
                
            }

            public init(success: Bool, data: [String: Any], message: String) {
                
                self.success = success
                
                self.data = data
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: ChargeCustomerRequest
            Used By: Payment
        */
        struct ChargeCustomerRequest: Codable {
            
            public var orderId: String
            
            public var aggregator: String
            
            public var transactionToken: String?
            
            public var amount: Int
            
            public var verified: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case transactionToken = "transaction_token"
                
                case amount = "amount"
                
                case verified = "verified"
                
            }

            public init(orderId: String, aggregator: String, transactionToken: String?, amount: Int, verified: Bool?) {
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.transactionToken = transactionToken
                
                self.amount = amount
                
                self.verified = verified
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                transactionToken = try? container.decode(String.self, forKey: .transactionToken)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                verified = try? container.decode(Bool.self, forKey: .verified)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        struct ChargeCustomerResponse: Codable {
            
            public var orderId: String
            
            public var status: String
            
            public var deliveryAddressId: String?
            
            public var aggregator: String
            
            public var message: String
            
            public var success: Bool
            
            public var cartId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case status = "status"
                
                case deliveryAddressId = "delivery_address_id"
                
                case aggregator = "aggregator"
                
                case message = "message"
                
                case success = "success"
                
                case cartId = "cart_id"
                
            }

            public init(orderId: String, status: String, deliveryAddressId: String?, aggregator: String, message: String, success: Bool, cartId: String?) {
                
                self.orderId = orderId
                
                self.status = status
                
                self.deliveryAddressId = deliveryAddressId
                
                self.aggregator = aggregator
                
                self.message = message
                
                self.success = success
                
                self.cartId = cartId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                status = try container.decode(String.self, forKey: .status)
                
                deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                message = try container.decode(String.self, forKey: .message)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                cartId = try? container.decode(String.self, forKey: .cartId)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        struct PaymentInitializationRequest: Codable {
            
            public var merchantOrderId: String
            
            public var razorpayPaymentId: String
            
            public var customerId: String
            
            public var virtualId: String?
            
            public var aggregator: String
            
            public var method: String
            
            public var aggregatorOrderId: String
            
            public var timeout: Int
            
            public var pollingUrl: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case customerId = "customer_id"
                
                case virtualId = "virtual_id"
                
                case aggregator = "aggregator"
                
                case method = "method"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case timeout = "timeout"
                
                case pollingUrl = "polling_url"
                
            }

            public init(merchantOrderId: String, razorpayPaymentId: String, customerId: String, virtualId: String?, aggregator: String, method: String, aggregatorOrderId: String, timeout: Int, pollingUrl: String) {
                
                self.merchantOrderId = merchantOrderId
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.customerId = customerId
                
                self.virtualId = virtualId
                
                self.aggregator = aggregator
                
                self.method = method
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.timeout = timeout
                
                self.pollingUrl = pollingUrl
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                virtualId = try? container.decode(String.self, forKey: .virtualId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                method = try container.decode(String.self, forKey: .method)
                
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                timeout = try container.decode(Int.self, forKey: .timeout)
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(virtualId, forKey: .virtualId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                try? container.encodeIfPresent(timeout, forKey: .timeout)
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        struct PaymentInitializationResponse: Codable {
            
            public var orderId: String
            
            public var merchantOrderId: String
            
            public var status: String
            
            public var currency: String
            
            public var contact: String
            
            public var customerId: String
            
            public var aggregator: String
            
            public var message: String?
            
            public var method: String
            
            public var amount: Int
            
            public var vpa: String
            
            public var success: Bool
            
            public var email: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case status = "status"
                
                case currency = "currency"
                
                case contact = "contact"
                
                case customerId = "customer_id"
                
                case aggregator = "aggregator"
                
                case message = "message"
                
                case method = "method"
                
                case amount = "amount"
                
                case vpa = "vpa"
                
                case success = "success"
                
                case email = "email"
                
            }

            public init(orderId: String, merchantOrderId: String, status: String, currency: String, contact: String, customerId: String, aggregator: String, message: String?, method: String, amount: Int, vpa: String, success: Bool, email: String) {
                
                self.orderId = orderId
                
                self.merchantOrderId = merchantOrderId
                
                self.status = status
                
                self.currency = currency
                
                self.contact = contact
                
                self.customerId = customerId
                
                self.aggregator = aggregator
                
                self.message = message
                
                self.method = method
                
                self.amount = amount
                
                self.vpa = vpa
                
                self.success = success
                
                self.email = email
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                status = try container.decode(String.self, forKey: .status)
                
                currency = try container.decode(String.self, forKey: .currency)
                
                contact = try container.decode(String.self, forKey: .contact)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                message = try? container.decode(String.self, forKey: .message)
                
                method = try container.decode(String.self, forKey: .method)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                email = try container.decode(String.self, forKey: .email)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        struct PaymentStatusUpdateRequest: Codable {
            
            public var orderId: String
            
            public var merchantOrderId: String
            
            public var status: String
            
            public var currency: String
            
            public var contact: String
            
            public var customerId: String
            
            public var aggregator: String
            
            public var method: String
            
            public var amount: Int
            
            public var vpa: String
            
            public var email: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case status = "status"
                
                case currency = "currency"
                
                case contact = "contact"
                
                case customerId = "customer_id"
                
                case aggregator = "aggregator"
                
                case method = "method"
                
                case amount = "amount"
                
                case vpa = "vpa"
                
                case email = "email"
                
            }

            public init(orderId: String, merchantOrderId: String, status: String, currency: String, contact: String, customerId: String, aggregator: String, method: String, amount: Int, vpa: String, email: String) {
                
                self.orderId = orderId
                
                self.merchantOrderId = merchantOrderId
                
                self.status = status
                
                self.currency = currency
                
                self.contact = contact
                
                self.customerId = customerId
                
                self.aggregator = aggregator
                
                self.method = method
                
                self.amount = amount
                
                self.vpa = vpa
                
                self.email = email
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                status = try container.decode(String.self, forKey: .status)
                
                currency = try container.decode(String.self, forKey: .currency)
                
                contact = try container.decode(String.self, forKey: .contact)
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                method = try container.decode(String.self, forKey: .method)
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                email = try container.decode(String.self, forKey: .email)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
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
            Model: AggregatorRoute
            Used By: Payment
        */
        struct AggregatorRoute: Codable {
            
            public var apiLink: String?
            
            public var paymentFlow: String?
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case apiLink = "api_link"
                
                case paymentFlow = "payment_flow"
                
                case data = "data"
                
            }

            public init(apiLink: String?, paymentFlow: String?, data: [String: Any]?) {
                
                self.apiLink = apiLink
                
                self.paymentFlow = paymentFlow
                
                self.data = data
                
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

            public init(small: String, large: String) {
                
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
            
            public var cardName: String?
            
            public var expYear: Int?
            
            public var merchantCode: String?
            
            public var cardType: String?
            
            public var cardFingerprint: String?
            
            public var cardIssuer: String?
            
            public var cardNumber: String?
            
            public var aggregatorName: String
            
            public var cardIsin: String?
            
            public var cardReference: String?
            
            public var cardBrand: String?
            
            public var expired: Bool?
            
            public var name: String?
            
            public var logoUrl: PaymentModeLogo?
            
            public var cardToken: String?
            
            public var expMonth: Int?
            
            public var nickname: String?
            
            public var displayName: String?
            
            public var code: String?
            
            public var cardBrandImage: String?
            
            public var cardId: String?
            
            public var displayPriority: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardName = "card_name"
                
                case expYear = "exp_year"
                
                case merchantCode = "merchant_code"
                
                case cardType = "card_type"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardIssuer = "card_issuer"
                
                case cardNumber = "card_number"
                
                case aggregatorName = "aggregator_name"
                
                case cardIsin = "card_isin"
                
                case cardReference = "card_reference"
                
                case cardBrand = "card_brand"
                
                case expired = "expired"
                
                case name = "name"
                
                case logoUrl = "logo_url"
                
                case cardToken = "card_token"
                
                case expMonth = "exp_month"
                
                case nickname = "nickname"
                
                case displayName = "display_name"
                
                case code = "code"
                
                case cardBrandImage = "card_brand_image"
                
                case cardId = "card_id"
                
                case displayPriority = "display_priority"
                
            }

            public init(cardName: String?, expYear: Int?, merchantCode: String?, cardType: String?, cardFingerprint: String?, cardIssuer: String?, cardNumber: String?, aggregatorName: String, cardIsin: String?, cardReference: String?, cardBrand: String?, expired: Bool?, name: String?, logoUrl: PaymentModeLogo?, cardToken: String?, expMonth: Int?, nickname: String?, displayName: String?, code: String?, cardBrandImage: String?, cardId: String?, displayPriority: Int?) {
                
                self.cardName = cardName
                
                self.expYear = expYear
                
                self.merchantCode = merchantCode
                
                self.cardType = cardType
                
                self.cardFingerprint = cardFingerprint
                
                self.cardIssuer = cardIssuer
                
                self.cardNumber = cardNumber
                
                self.aggregatorName = aggregatorName
                
                self.cardIsin = cardIsin
                
                self.cardReference = cardReference
                
                self.cardBrand = cardBrand
                
                self.expired = expired
                
                self.name = name
                
                self.logoUrl = logoUrl
                
                self.cardToken = cardToken
                
                self.expMonth = expMonth
                
                self.nickname = nickname
                
                self.displayName = displayName
                
                self.code = code
                
                self.cardBrandImage = cardBrandImage
                
                self.cardId = cardId
                
                self.displayPriority = displayPriority
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                cardName = try? container.decode(String.self, forKey: .cardName)
                
                expYear = try? container.decode(Int.self, forKey: .expYear)
                
                merchantCode = try? container.decode(String.self, forKey: .merchantCode)
                
                cardType = try? container.decode(String.self, forKey: .cardType)
                
                cardFingerprint = try? container.decode(String.self, forKey: .cardFingerprint)
                
                cardIssuer = try? container.decode(String.self, forKey: .cardIssuer)
                
                cardNumber = try? container.decode(String.self, forKey: .cardNumber)
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                cardIsin = try? container.decode(String.self, forKey: .cardIsin)
                
                cardReference = try? container.decode(String.self, forKey: .cardReference)
                
                cardBrand = try? container.decode(String.self, forKey: .cardBrand)
                
                expired = try? container.decode(Bool.self, forKey: .expired)
                
                name = try? container.decode(String.self, forKey: .name)
                
                logoUrl = try? container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                cardToken = try? container.decode(String.self, forKey: .cardToken)
                
                expMonth = try? container.decode(Int.self, forKey: .expMonth)
                
                nickname = try? container.decode(String.self, forKey: .nickname)
                
                displayName = try? container.decode(String.self, forKey: .displayName)
                
                code = try? container.decode(String.self, forKey: .code)
                
                cardBrandImage = try? container.decode(String.self, forKey: .cardBrandImage)
                
                cardId = try? container.decode(String.self, forKey: .cardId)
                
                displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cardName, forKey: .cardName)
                
                try? container.encodeIfPresent(expYear, forKey: .expYear)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(cardType, forKey: .cardType)
                
                try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
                
                try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
                
                try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
                
                try? container.encodeIfPresent(cardReference, forKey: .cardReference)
                
                try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
                
                try? container.encodeIfPresent(expired, forKey: .expired)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
                
                try? container.encodeIfPresent(cardToken, forKey: .cardToken)
                
                try? container.encodeIfPresent(expMonth, forKey: .expMonth)
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
                
                try? container.encodeIfPresent(cardId, forKey: .cardId)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        struct RootPaymentMode: Codable {
            
            public var aggregatorName: String?
            
            public var anonymousEnable: Bool?
            
            public var list: [PaymentModeList]?
            
            public var displayName: String
            
            public var name: String
            
            public var addCardEnabled: Bool?
            
            public var displayPriority: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregatorName = "aggregator_name"
                
                case anonymousEnable = "anonymous_enable"
                
                case list = "list"
                
                case displayName = "display_name"
                
                case name = "name"
                
                case addCardEnabled = "add_card_enabled"
                
                case displayPriority = "display_priority"
                
            }

            public init(aggregatorName: String?, anonymousEnable: Bool?, list: [PaymentModeList]?, displayName: String, name: String, addCardEnabled: Bool?, displayPriority: Int) {
                
                self.aggregatorName = aggregatorName
                
                self.anonymousEnable = anonymousEnable
                
                self.list = list
                
                self.displayName = displayName
                
                self.name = name
                
                self.addCardEnabled = addCardEnabled
                
                self.displayPriority = displayPriority
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
                
                anonymousEnable = try? container.decode(Bool.self, forKey: .anonymousEnable)
                
                list = try? container.decode([PaymentModeList].self, forKey: .list)
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                name = try container.decode(String.self, forKey: .name)
                
                addCardEnabled = try? container.decode(Bool.self, forKey: .addCardEnabled)
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(anonymousEnable, forKey: .anonymousEnable)
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(addCardEnabled, forKey: .addCardEnabled)
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
            }
            
        }
        
        /*
            Model: PaymentModeRouteResponse
            Used By: Payment
        */
        struct PaymentModeRouteResponse: Codable {
            
            public var paymentFlows: PaymentFlow
            
            public var paymentOptions: [RootPaymentMode]
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlows = "payment_flows"
                
                case paymentOptions = "payment_options"
                
                case success = "success"
                
            }

            public init(paymentFlows: PaymentFlow, paymentOptions: [RootPaymentMode], success: Bool) {
                
                self.paymentFlows = paymentFlows
                
                self.paymentOptions = paymentOptions
                
                self.success = success
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                paymentOptions = try container.decode([RootPaymentMode].self, forKey: .paymentOptions)
                
                success = try container.decode(Bool.self, forKey: .success)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryDetails
            Used By: Payment
        */
        struct OrderBeneficiaryDetails: Codable {
            
            public var address: String
            
            public var delightsUserName: String
            
            public var transferMode: String
            
            public var accountNo: String
            
            public var title: String
            
            public var accountHolder: String
            
            public var branchName: Bool?
            
            public var beneficiaryId: String
            
            public var id: Int
            
            public var bankName: String
            
            public var isActive: Bool
            
            public var mobile: Bool?
            
            public var subtitle: String
            
            public var createdOn: String
            
            public var email: String
            
            public var displayName: String
            
            public var modifiedOn: String
            
            public var ifscCode: String
            
            public var comment: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
                case delightsUserName = "delights_user_name"
                
                case transferMode = "transfer_mode"
                
                case accountNo = "account_no"
                
                case title = "title"
                
                case accountHolder = "account_holder"
                
                case branchName = "branch_name"
                
                case beneficiaryId = "beneficiary_id"
                
                case id = "id"
                
                case bankName = "bank_name"
                
                case isActive = "is_active"
                
                case mobile = "mobile"
                
                case subtitle = "subtitle"
                
                case createdOn = "created_on"
                
                case email = "email"
                
                case displayName = "display_name"
                
                case modifiedOn = "modified_on"
                
                case ifscCode = "ifsc_code"
                
                case comment = "comment"
                
            }

            public init(address: String, delightsUserName: String, transferMode: String, accountNo: String, title: String, accountHolder: String, branchName: Bool?, beneficiaryId: String, id: Int, bankName: String, isActive: Bool, mobile: Bool?, subtitle: String, createdOn: String, email: String, displayName: String, modifiedOn: String, ifscCode: String, comment: Bool?) {
                
                self.address = address
                
                self.delightsUserName = delightsUserName
                
                self.transferMode = transferMode
                
                self.accountNo = accountNo
                
                self.title = title
                
                self.accountHolder = accountHolder
                
                self.branchName = branchName
                
                self.beneficiaryId = beneficiaryId
                
                self.id = id
                
                self.bankName = bankName
                
                self.isActive = isActive
                
                self.mobile = mobile
                
                self.subtitle = subtitle
                
                self.createdOn = createdOn
                
                self.email = email
                
                self.displayName = displayName
                
                self.modifiedOn = modifiedOn
                
                self.ifscCode = ifscCode
                
                self.comment = comment
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                address = try container.decode(String.self, forKey: .address)
                
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                title = try container.decode(String.self, forKey: .title)
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                branchName = try? container.decode(Bool.self, forKey: .branchName)
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                id = try container.decode(Int.self, forKey: .id)
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                mobile = try? container.decode(Bool.self, forKey: .mobile)
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                email = try container.decode(String.self, forKey: .email)
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                comment = try? container.decode(Bool.self, forKey: .comment)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
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
            
            public var code: String
            
            public var success: Bool
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case success = "success"
                
                case description = "description"
                
            }

            public init(code: String, success: Bool, description: String) {
                
                self.code = code
                
                self.success = success
                
                self.description = description
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                code = try container.decode(String.self, forKey: .code)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                description = try container.decode(String.self, forKey: .description)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
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
            
            public var code: String
            
            public var success: Bool
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case success = "success"
                
                case description = "description"
                
            }

            public init(code: String, success: Bool, description: String) {
                
                self.code = code
                
                self.success = success
                
                self.description = description
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                code = try container.decode(String.self, forKey: .code)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                description = try container.decode(String.self, forKey: .description)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        struct AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var hashKey: String
            
            public var requestId: String
            
            public var otp: String
            

            public enum CodingKeys: String, CodingKey {
                
                case hashKey = "hash_key"
                
                case requestId = "request_id"
                
                case otp = "otp"
                
            }

            public init(hashKey: String, requestId: String, otp: String) {
                
                self.hashKey = hashKey
                
                self.requestId = requestId
                
                self.otp = otp
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                otp = try container.decode(String.self, forKey: .otp)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationResponse
            Used By: Payment
        */
        struct AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var hashKey: String
            
            public var requestId: String
            
            public var otp: String
            

            public enum CodingKeys: String, CodingKey {
                
                case hashKey = "hash_key"
                
                case requestId = "request_id"
                
                case otp = "otp"
                
            }

            public init(hashKey: String, requestId: String, otp: String) {
                
                self.hashKey = hashKey
                
                self.requestId = requestId
                
                self.otp = otp
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                otp = try container.decode(String.self, forKey: .otp)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
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
            
            public var email: String
            
            public var address: String
            
            public var accountNo: String
            
            public var bankName: String
            
            public var accountHolder: String
            
            public var ifscCode: String
            
            public var comment: String?
            
            public var mobile: String
            
            public var branchName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case address = "address"
                
                case accountNo = "account_no"
                
                case bankName = "bank_name"
                
                case accountHolder = "account_holder"
                
                case ifscCode = "ifsc_code"
                
                case comment = "comment"
                
                case mobile = "mobile"
                
                case branchName = "branch_name"
                
            }

            public init(email: String, address: String, accountNo: String, bankName: String, accountHolder: String, ifscCode: String, comment: String?, mobile: String, branchName: String) {
                
                self.email = email
                
                self.address = address
                
                self.accountNo = accountNo
                
                self.bankName = bankName
                
                self.accountHolder = accountHolder
                
                self.ifscCode = ifscCode
                
                self.comment = comment
                
                self.mobile = mobile
                
                self.branchName = branchName
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                email = try container.decode(String.self, forKey: .email)
                
                address = try container.decode(String.self, forKey: .address)
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                comment = try? container.decode(String.self, forKey: .comment)
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        struct AddBeneficiaryDetailsRequest: Codable {
            
            public var orderId: String
            
            public var transferMode: String
            
            public var details: BankDetails
            
            public var shipmentId: String
            
            public var delights: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case transferMode = "transfer_mode"
                
                case details = "details"
                
                case shipmentId = "shipment_id"
                
                case delights = "delights"
                
            }

            public init(orderId: String, transferMode: String, details: BankDetails, shipmentId: String, delights: Bool) {
                
                self.orderId = orderId
                
                self.transferMode = transferMode
                
                self.details = details
                
                self.shipmentId = shipmentId
                
                self.delights = delights
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                details = try container.decode(BankDetails.self, forKey: .details)
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        struct RefundAccountResponse: Codable {
            
            public var success: Bool
            
            public var data: [String: Any]?
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
                case message = "message"
                
            }

            public init(success: Bool, data: [String: Any]?, message: String) {
                
                self.success = success
                
                self.data = data
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                success = try container.decode(Bool.self, forKey: .success)
                
                data = try? container.decode([String: Any].self, forKey: .data)
                
                message = try container.decode(String.self, forKey: .message)
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: WalletOtpRequest
            Used By: Payment
        */
        struct WalletOtpRequest: Codable {
            
            public var mobile: Bool
            
            public var countryCode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
            }

            public init(mobile: Bool, countryCode: String) {
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
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
            
            public var isBeneficiarySet: Bool
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case isBeneficiarySet = "is_beneficiary_set"
                
                case success = "success"
                
            }

            public init(isBeneficiarySet: Bool, success: Bool?) {
                
                self.isBeneficiarySet = isBeneficiarySet
                
                self.success = success
                
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
            
            public var articleUid: String
            
            public var quantity: Int?
            
            public var shipmentType: String
            

            public enum CodingKeys: String, CodingKey {
                
                case articleUid = "article_uid"
                
                case quantity = "quantity"
                
                case shipmentType = "shipment_type"
                
            }

            public init(articleUid: String, quantity: Int?, shipmentType: String) {
                
                self.articleUid = articleUid
                
                self.quantity = quantity
                
                self.shipmentType = shipmentType
                
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

            public init(pickupStores: [Int]?, availableModes: [String]?) {
                
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