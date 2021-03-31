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
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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

            public init(query: [String: Any]?, type: String?) {
                
                self.type = type
                
                self.query = query
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode([String: Any].self, forKey: .query)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(ProductListingActionPage.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var uid: Int?
            
            public var logo: Media?
            
            public var action: ProductListingAction?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
                case action = "action"
                
            }

            public init(action: ProductListingAction?, logo: Media?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
                self.action = action
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
            }
            
        }
        
        /*
            Model: ProductDetailAttribute
            Used By: Catalog
        */
        struct ProductDetailAttribute: Codable {
            
            public var value: String?
            
            public var type: String?
            
            public var key: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case type = "type"
                
                case key = "key"
                
            }

            public init(key: String?, type: String?, value: String?) {
                
                self.value = value
                
                self.type = type
                
                self.key = key
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
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
                
                
                do {
                    details = try container.decode([ProductDetailAttribute].self, forKey: .details)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var itemType: String?
            
            public var shortDescription: String?
            
            public var imageNature: String?
            
            public var type: String?
            
            public var name: String?
            
            public var brand: ProductBrand?
            
            public var attributes: [String: Any]?
            
            public var description: String?
            
            public var ratingCount: Int?
            
            public var highlights: [String]?
            
            public var uid: Int?
            
            public var teaserTag: String?
            
            public var medias: [Media]?
            
            public var similars: [String]?
            
            public var slug: String
            
            public var categories: [ProductBrand]?
            
            public var color: String?
            
            public var tryouts: [String]?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var hasVariant: Bool?
            
            public var productOnlineDate: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case rating = "rating"
                
                case itemType = "item_type"
                
                case shortDescription = "short_description"
                
                case imageNature = "image_nature"
                
                case type = "type"
                
                case name = "name"
                
                case brand = "brand"
                
                case attributes = "attributes"
                
                case description = "description"
                
                case ratingCount = "rating_count"
                
                case highlights = "highlights"
                
                case uid = "uid"
                
                case teaserTag = "teaser_tag"
                
                case medias = "medias"
                
                case similars = "similars"
                
                case slug = "slug"
                
                case categories = "categories"
                
                case color = "color"
                
                case tryouts = "tryouts"
                
                case groupedAttributes = "grouped_attributes"
                
                case hasVariant = "has_variant"
                
                case productOnlineDate = "product_online_date"
                
            }

            public init(attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemType: String?, medias: [Media]?, name: String?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?) {
                
                self.rating = rating
                
                self.itemType = itemType
                
                self.shortDescription = shortDescription
                
                self.imageNature = imageNature
                
                self.type = type
                
                self.name = name
                
                self.brand = brand
                
                self.attributes = attributes
                
                self.description = description
                
                self.ratingCount = ratingCount
                
                self.highlights = highlights
                
                self.uid = uid
                
                self.teaserTag = teaserTag
                
                self.medias = medias
                
                self.similars = similars
                
                self.slug = slug
                
                self.categories = categories
                
                self.color = color
                
                self.tryouts = tryouts
                
                self.groupedAttributes = groupedAttributes
                
                self.hasVariant = hasVariant
                
                self.productOnlineDate = productOnlineDate
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    rating = try container.decode(Double.self, forKey: .rating)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    imageNature = try container.decode(String.self, forKey: .imageNature)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ratingCount = try container.decode(Int.self, forKey: .ratingCount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    highlights = try container.decode([String].self, forKey: .highlights)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    teaserTag = try container.decode(String.self, forKey: .teaserTag)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    similars = try container.decode([String].self, forKey: .similars)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                do {
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    color = try container.decode(String.self, forKey: .color)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
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
                
                
                do {
                    error = try container.decode(String.self, forKey: .error)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(error, forKey: .error)
                
            }
            
        }
        
        /*
            Model: ProductSize
            Used By: Catalog
        */
        struct ProductSize: Codable {
            
            public var display: String?
            
            public var value: String?
            
            public var quantity: Int?
            
            public var isAvailable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case value = "value"
                
                case quantity = "quantity"
                
                case isAvailable = "is_available"
                
            }

            public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
                
                self.display = display
                
                self.value = value
                
                self.quantity = quantity
                
                self.isAvailable = isAvailable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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

            public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
                
                self.currencySymbol = currencySymbol
                
                self.currencyCode = currencyCode
                
                self.min = min
                
                self.max = max
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    min = try container.decode(Double.self, forKey: .min)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(Double.self, forKey: .max)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    effective = try container.decode(Price.self, forKey: .effective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Price.self, forKey: .marked)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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

            public init(count: Int?) {
                
                self.count = count
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var sizeChart: [String: Any]?
            
            public var price: ProductListingPrice?
            
            public var stores: ProductSizeStores?
            
            public var sellable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case sizes = "sizes"
                
                case sizeChart = "size_chart"
                
                case price = "price"
                
                case stores = "stores"
                
                case sellable = "sellable"
                
            }

            public init(discount: String?, price: ProductListingPrice?, sellable: Bool?, sizes: [ProductSize]?, sizeChart: [String: Any]?, stores: ProductSizeStores?) {
                
                self.discount = discount
                
                self.sizes = sizes
                
                self.sizeChart = sizeChart
                
                self.price = price
                
                self.stores = stores
                
                self.sellable = sellable
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([ProductSize].self, forKey: .sizes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeChart = try container.decode([String: Any].self, forKey: .sizeChart)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stores = try container.decode(ProductSizeStores.self, forKey: .stores)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
            }
            
        }
        
        /*
            Model: Store
            Used By: Catalog
        */
        struct Store: Codable {
            
            public var count: Int?
            
            public var name: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.count = count
                
                self.name = name
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var name: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.count = count
                
                self.name = name
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
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

            public init(level: String?, strategy: String?) {
                
                self.strategy = strategy
                
                self.level = level
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    strategy = try container.decode(String.self, forKey: .strategy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(strategy, forKey: .strategy)
                
                try? container.encodeIfPresent(level, forKey: .level)
                
            }
            
        }
        
        /*
            Model: ProductSizePriceResponse
            Used By: Catalog
        */
        struct ProductSizePriceResponse: Codable {
            
            public var discount: String?
            
            public var sellerCount: Int?
            
            public var itemType: String?
            
            public var quantity: Int?
            
            public var set: [String: Any]?
            
            public var articleId: String?
            
            public var pincode: Int?
            
            public var longLat: [Double]?
            
            public var store: Store?
            
            public var specialBadge: String?
            
            public var strategyWiseListing: [[String: Any]]?
            
            public var price: ProductStockPrice?
            
            public var seller: Seller?
            
            public var articleAssignment: ArticleAssignment?
            
            public var pricePerPrice: ProductStockPrice?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case sellerCount = "seller_count"
                
                case itemType = "item_type"
                
                case quantity = "quantity"
                
                case set = "set"
                
                case articleId = "article_id"
                
                case pincode = "pincode"
                
                case longLat = "long_lat"
                
                case store = "store"
                
                case specialBadge = "special_badge"
                
                case strategyWiseListing = "strategy_wise_listing"
                
                case price = "price"
                
                case seller = "seller"
                
                case articleAssignment = "article_assignment"
                
                case pricePerPrice = "price_per_price"
                
            }

            public init(articleAssignment: ArticleAssignment?, articleId: String?, discount: String?, itemType: String?, longLat: [Double]?, pincode: Int?, price: ProductStockPrice?, pricePerPrice: ProductStockPrice?, quantity: Int?, seller: Seller?, sellerCount: Int?, set: [String: Any]?, specialBadge: String?, store: Store?, strategyWiseListing: [[String: Any]]?) {
                
                self.discount = discount
                
                self.sellerCount = sellerCount
                
                self.itemType = itemType
                
                self.quantity = quantity
                
                self.set = set
                
                self.articleId = articleId
                
                self.pincode = pincode
                
                self.longLat = longLat
                
                self.store = store
                
                self.specialBadge = specialBadge
                
                self.strategyWiseListing = strategyWiseListing
                
                self.price = price
                
                self.seller = seller
                
                self.articleAssignment = articleAssignment
                
                self.pricePerPrice = pricePerPrice
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellerCount = try container.decode(Int.self, forKey: .sellerCount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    set = try container.decode([String: Any].self, forKey: .set)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    longLat = try container.decode([Double].self, forKey: .longLat)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(Store.self, forKey: .store)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    specialBadge = try container.decode(String.self, forKey: .specialBadge)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductStockPrice.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(Seller.self, forKey: .seller)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pricePerPrice = try container.decode(ProductStockPrice.self, forKey: .pricePerPrice)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(set, forKey: .set)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(longLat, forKey: .longLat)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
                
                try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(pricePerPrice, forKey: .pricePerPrice)
                
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
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var current: Int?
            
            public var type: String?
            
            public var nextId: String?
            
            public var hasPrevious: Bool?
            
            public var size: Int?
            
            public var itemTotal: Int?
            
            public var hasNext: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case current = "current"
                
                case type = "type"
                
                case nextId = "next_id"
                
                case hasPrevious = "has_previous"
                
                case size = "size"
                
                case itemTotal = "item_total"
                
                case hasNext = "has_next"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, size: Int?, type: String?) {
                
                self.current = current
                
                self.type = type
                
                self.nextId = nextId
                
                self.hasPrevious = hasPrevious
                
                self.size = size
                
                self.itemTotal = itemTotal
                
                self.hasNext = hasNext
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    current = try container.decode(Int.self, forKey: .current)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nextId = try container.decode(String.self, forKey: .nextId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(Int.self, forKey: .size)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(nextId, forKey: .nextId)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
            }
            
        }
        
        /*
            Model: ProductSizeSellersResponse
            Used By: Catalog
        */
        struct ProductSizeSellersResponse: Codable {
            
            public var sortOn: [ProductSizeSellerFilter]?
            
            public var page: Page
            
            public var items: [ProductSizePriceResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sortOn = "sort_on"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [ProductSizePriceResponse]?, page: Page, sortOn: [ProductSizeSellerFilter]?) {
                
                self.sortOn = sortOn
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sortOn = try container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                do {
                    items = try container.decode([ProductSizePriceResponse].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var display: String?
            
            public var key: String?
            
            public var description: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case key = "key"
                
                case description = "description"
                
            }

            public init(description: String?, display: String?, key: String?) {
                
                self.display = display
                
                self.key = key
                
                self.description = description
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
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

            public init(attributesMetadata: [AttributeDetail]?, items: [ProductDetail]?) {
                
                self.items = items
                
                self.attributesMetadata = attributesMetadata
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributesMetadata = try container.decode([AttributeDetail].self, forKey: .attributesMetadata)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var attributesMetadata: [AttributeDetail]?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case subtitle = "subtitle"
                
                case attributesMetadata = "attributes_metadata"
                
                case title = "title"
                
            }

            public init(attributesMetadata: [AttributeDetail]?, items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.items = items
                
                self.subtitle = subtitle
                
                self.attributesMetadata = attributesMetadata
                
                self.title = title
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributesMetadata = try container.decode([AttributeDetail].self, forKey: .attributesMetadata)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
                
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

            public init(similars: [ProductCompareResponse]?) {
                
                self.similars = similars
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    similars = try container.decode([ProductCompareResponse].self, forKey: .similars)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    items = try container.decode([ProductDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    similars = try container.decode([ProductSimilarItem].self, forKey: .similars)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var medias: [Media]?
            
            public var slug: String?
            
            public var isAvailable: Bool?
            
            public var value: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var colorName: String?
            
            public var uid: Int?
            
            public var color: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case medias = "medias"
                
                case slug = "slug"
                
                case isAvailable = "is_available"
                
                case value = "value"
                
                case name = "name"
                
                case action = "action"
                
                case colorName = "color_name"
                
                case uid = "uid"
                
                case color = "color"
                
            }

            public init(action: ProductListingAction?, color: String?, colorName: String?, isAvailable: Bool?, medias: [Media]?, name: String?, slug: String?, uid: Int?, value: String?) {
                
                self.medias = medias
                
                self.slug = slug
                
                self.isAvailable = isAvailable
                
                self.value = value
                
                self.name = name
                
                self.action = action
                
                self.colorName = colorName
                
                self.uid = uid
                
                self.color = color
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    colorName = try container.decode(String.self, forKey: .colorName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    color = try container.decode(String.self, forKey: .color)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(colorName, forKey: .colorName)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
            }
            
        }
        
        /*
            Model: ProductVariantResponse
            Used By: Catalog
        */
        struct ProductVariantResponse: Codable {
            
            public var header: String?
            
            public var items: [ProductVariantItemResponse]?
            
            public var displayType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case header = "header"
                
                case items = "items"
                
                case displayType = "display_type"
                
            }

            public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?) {
                
                self.header = header
                
                self.items = items
                
                self.displayType = displayType
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    header = try container.decode(String.self, forKey: .header)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductVariantItemResponse].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayType = try container.decode(String.self, forKey: .displayType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(header, forKey: .header)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
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
                
                
                do {
                    variants = try container.decode([ProductVariantResponse].self, forKey: .variants)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var id: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case name = "name"
                
            }

            public init(id: Int?, name: String?) {
                
                self.id = id
                
                self.name = name
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
            }
            
        }
        
        /*
            Model: StoreDetail
            Used By: Catalog
        */
        struct StoreDetail: Codable {
            
            public var id: Int?
            
            public var name: String?
            
            public var code: String?
            
            public var city: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case name = "name"
                
                case code = "code"
                
                case city = "city"
                
            }

            public init(city: String?, code: String?, id: Int?, name: String?) {
                
                self.id = id
                
                self.name = name
                
                self.code = code
                
                self.city = city
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
            }
            
        }
        
        /*
            Model: ProductStockStatusItem
            Used By: Catalog
        */
        struct ProductStockStatusItem: Codable {
            
            public var quantity: Int?
            
            public var identifier: [String: Any]?
            
            public var company: CompanyDetail?
            
            public var store: StoreDetail?
            
            public var itemId: Int?
            
            public var size: String?
            
            public var price: ProductStockPrice?
            
            public var seller: Seller?
            
            public var uid: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case quantity = "quantity"
                
                case identifier = "identifier"
                
                case company = "company"
                
                case store = "store"
                
                case itemId = "item_id"
                
                case size = "size"
                
                case price = "price"
                
                case seller = "seller"
                
                case uid = "uid"
                
            }

            public init(company: CompanyDetail?, identifier: [String: Any]?, itemId: Int?, price: ProductStockPrice?, quantity: Int?, seller: Seller?, size: String?, store: StoreDetail?, uid: String?) {
                
                self.quantity = quantity
                
                self.identifier = identifier
                
                self.company = company
                
                self.store = store
                
                self.itemId = itemId
                
                self.size = size
                
                self.price = price
                
                self.seller = seller
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identifier = try container.decode([String: Any].self, forKey: .identifier)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    company = try container.decode(CompanyDetail.self, forKey: .company)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(StoreDetail.self, forKey: .store)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductStockPrice.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(Seller.self, forKey: .seller)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
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
                
                
                do {
                    items = try container.decode([ProductStockStatusItem].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var page: Page
            
            public var items: [ProductStockStatusItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [ProductStockStatusItem]?, page: Page) {
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                do {
                    items = try container.decode([ProductStockStatusItem].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var display: String
            
            public var kind: String?
            
            public var name: String
            
            public var logo: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case kind = "kind"
                
                case name = "name"
                
                case logo = "logo"
                
            }

            public init(display: String, kind: String?, logo: String?, name: String) {
                
                self.display = display
                
                self.kind = kind
                
                self.name = name
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                do {
                    kind = try container.decode(String.self, forKey: .kind)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(kind, forKey: .kind)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: ProductFiltersValue
            Used By: Catalog
        */
        struct ProductFiltersValue: Codable {
            
            public var displayFormat: String?
            
            public var selectedMin: Int?
            
            public var currencyCode: String?
            
            public var value: String
            
            public var min: Int?
            
            public var selectedMax: Int?
            
            public var currencySymbol: String?
            
            public var queryFormat: String?
            
            public var isSelected: Bool
            
            public var display: String
            
            public var count: Int?
            
            public var max: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayFormat = "display_format"
                
                case selectedMin = "selected_min"
                
                case currencyCode = "currency_code"
                
                case value = "value"
                
                case min = "min"
                
                case selectedMax = "selected_max"
                
                case currencySymbol = "currency_symbol"
                
                case queryFormat = "query_format"
                
                case isSelected = "is_selected"
                
                case display = "display"
                
                case count = "count"
                
                case max = "max"
                
            }

            public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String) {
                
                self.displayFormat = displayFormat
                
                self.selectedMin = selectedMin
                
                self.currencyCode = currencyCode
                
                self.value = value
                
                self.min = min
                
                self.selectedMax = selectedMax
                
                self.currencySymbol = currencySymbol
                
                self.queryFormat = queryFormat
                
                self.isSelected = isSelected
                
                self.display = display
                
                self.count = count
                
                self.max = max
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    displayFormat = try container.decode(String.self, forKey: .displayFormat)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    selectedMin = try container.decode(Int.self, forKey: .selectedMin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch {
                    let boolValue = try? container.decode(Bool.self, forKey: .value)
                    if boolValue == true {
                        value = "true"
                    } else if boolValue == false {
                        value = "false"
                    } else {
                        value = ""
                    }
                } 
                
                
                
                do {
                    min = try container.decode(Int.self, forKey: .min)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    selectedMax = try container.decode(Int.self, forKey: .selectedMax)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    queryFormat = try container.decode(String.self, forKey: .queryFormat)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(Int.self, forKey: .max)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
                
                try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(count, forKey: .count)
                
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
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
            }
            
        }
        
        /*
            Model: ProductListingDetail
            Used By: Catalog
        */
        struct ProductListingDetail: Codable {
            
            public var rating: Double?
            
            public var itemType: String?
            
            public var shortDescription: String?
            
            public var imageNature: String?
            
            public var type: String?
            
            public var name: String?
            
            public var brand: ProductBrand?
            
            public var attributes: [String: Any]?
            
            public var description: String?
            
            public var ratingCount: Int?
            
            public var discount: String?
            
            public var highlights: [String]?
            
            public var uid: Int?
            
            public var teaserTag: String?
            
            public var medias: [Media]?
            
            public var similars: [String]?
            
            public var slug: String
            
            public var categories: [ProductBrand]?
            
            public var price: ProductListingPrice?
            
            public var sellable: Bool?
            
            public var color: String?
            
            public var tryouts: [String]?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var hasVariant: Bool?
            
            public var productOnlineDate: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case rating = "rating"
                
                case itemType = "item_type"
                
                case shortDescription = "short_description"
                
                case imageNature = "image_nature"
                
                case type = "type"
                
                case name = "name"
                
                case brand = "brand"
                
                case attributes = "attributes"
                
                case description = "description"
                
                case ratingCount = "rating_count"
                
                case discount = "discount"
                
                case highlights = "highlights"
                
                case uid = "uid"
                
                case teaserTag = "teaser_tag"
                
                case medias = "medias"
                
                case similars = "similars"
                
                case slug = "slug"
                
                case categories = "categories"
                
                case price = "price"
                
                case sellable = "sellable"
                
                case color = "color"
                
                case tryouts = "tryouts"
                
                case groupedAttributes = "grouped_attributes"
                
                case hasVariant = "has_variant"
                
                case productOnlineDate = "product_online_date"
                
            }

            public init(attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?) {
                
                self.rating = rating
                
                self.itemType = itemType
                
                self.shortDescription = shortDescription
                
                self.imageNature = imageNature
                
                self.type = type
                
                self.name = name
                
                self.brand = brand
                
                self.attributes = attributes
                
                self.description = description
                
                self.ratingCount = ratingCount
                
                self.discount = discount
                
                self.highlights = highlights
                
                self.uid = uid
                
                self.teaserTag = teaserTag
                
                self.medias = medias
                
                self.similars = similars
                
                self.slug = slug
                
                self.categories = categories
                
                self.price = price
                
                self.sellable = sellable
                
                self.color = color
                
                self.tryouts = tryouts
                
                self.groupedAttributes = groupedAttributes
                
                self.hasVariant = hasVariant
                
                self.productOnlineDate = productOnlineDate
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    rating = try container.decode(Double.self, forKey: .rating)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    imageNature = try container.decode(String.self, forKey: .imageNature)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ratingCount = try container.decode(Int.self, forKey: .ratingCount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    highlights = try container.decode([String].self, forKey: .highlights)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    teaserTag = try container.decode(String.self, forKey: .teaserTag)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    similars = try container.decode([String].self, forKey: .similars)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                do {
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    color = try container.decode(String.self, forKey: .color)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
            }
            
        }
        
        /*
            Model: ProductListingResponse
            Used By: Catalog
        */
        struct ProductListingResponse: Codable {
            
            public var filters: [ProductFilters]?
            
            public var sortOn: [ProductSortOn]?
            
            public var page: Page
            
            public var items: [ProductListingDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case filters = "filters"
                
                case sortOn = "sort_on"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
                
                self.filters = filters
                
                self.sortOn = sortOn
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    filters = try container.decode([ProductFilters].self, forKey: .filters)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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

            public init(landscape: Media?, portrait: Media?) {
                
                self.portrait = portrait
                
                self.landscape = landscape
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    portrait = try container.decode(Media.self, forKey: .portrait)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    landscape = try container.decode(Media.self, forKey: .landscape)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var discount: String?
            
            public var slug: String?
            
            public var name: String?
            
            public var logo: Media?
            
            public var action: ProductListingAction?
            
            public var departments: [String]?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case slug = "slug"
                
                case name = "name"
                
                case logo = "logo"
                
                case action = "action"
                
                case departments = "departments"
                
                case banners = "banners"
                
                case uid = "uid"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
                
                self.discount = discount
                
                self.slug = slug
                
                self.name = name
                
                self.logo = logo
                
                self.action = action
                
                self.departments = departments
                
                self.banners = banners
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    departments = try container.decode([String].self, forKey: .departments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: BrandListingResponse
            Used By: Catalog
        */
        struct BrandListingResponse: Codable {
            
            public var page: Page
            
            public var items: [BrandItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [BrandItem]?, page: Page) {
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                do {
                    items = try container.decode([BrandItem].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var name: String?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case banners = "banners"
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.banners = banners
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: CategoryItems
            Used By: Catalog
        */
        struct CategoryItems: Codable {
            
            public var slug: String?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [[String: Any]]?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
                case banners = "banners"
                
                case uid = "uid"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?) {
                
                self.slug = slug
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
                self.banners = banners
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    childs = try container.decode([[String: Any]].self, forKey: .childs)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
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
                
                
                do {
                    department = try container.decode(String.self, forKey: .department)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CategoryItems].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(department, forKey: .department)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: DepartmentIdentifier
            Used By: Catalog
        */
        struct DepartmentIdentifier: Codable {
            
            public var uid: Int?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
                case slug = "slug"
                
            }

            public init(slug: String?, uid: Int?) {
                
                self.uid = uid
                
                self.slug = slug
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
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
                
                
                do {
                    data = try container.decode([DepartmentCategoryTree].self, forKey: .data)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var name: String?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case banners = "banners"
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.banners = banners
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
            }
            
        }
        
        /*
            Model: HomeListingResponse
            Used By: Catalog
        */
        struct HomeListingResponse: Codable {
            
            public var message: String?
            
            public var page: Page
            
            public var items: [ProductListingDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [ProductListingDetail]?, message: String?, page: Page) {
                
                self.message = message
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var priorityOrder: Int?
            
            public var slug: String?
            
            public var name: String?
            
            public var logo: Media?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case priorityOrder = "priority_order"
                
                case slug = "slug"
                
                case name = "name"
                
                case logo = "logo"
                
                case uid = "uid"
                
            }

            public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
                
                self.priorityOrder = priorityOrder
                
                self.slug = slug
                
                self.name = name
                
                self.logo = logo
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
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
                
                
                do {
                    items = try container.decode([Department].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        /*
            Model: PageQuery
            Used By: Catalog
        */
        struct PageQuery: Codable {
            
            public var brand: [String]?
            
            public var category: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case brand = "brand"
                
                case category = "category"
                
            }

            public init(brand: [String]?, category: [String]?) {
                
                self.brand = brand
                
                self.category = category
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    brand = try container.decode([String].self, forKey: .brand)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    category = try container.decode([String].self, forKey: .category)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(category, forKey: .category)
                
            }
            
        }
        
        /*
            Model: AutocompletePage
            Used By: Catalog
        */
        struct AutocompletePage: Codable {
            
            public var type: String?
            
            public var pageQuery: PageQuery?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case pageQuery = "page_query"
                
            }

            public init(pageQuery: PageQuery?, type: String?) {
                
                self.type = type
                
                self.pageQuery = pageQuery
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pageQuery = try container.decode(PageQuery.self, forKey: .pageQuery)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(pageQuery, forKey: .pageQuery)
                
            }
            
        }
        
        /*
            Model: Action
            Used By: Catalog
        */
        struct Action: Codable {
            
            public var type: String?
            
            public var page: AutocompletePage?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case page = "page"
                
            }

            public init(page: AutocompletePage?, type: String?) {
                
                self.type = type
                
                self.page = page
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(AutocompletePage.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(page, forKey: .page)
                
            }
            
        }
        
        /*
            Model: AutocompleteItem
            Used By: Catalog
        */
        struct AutocompleteItem: Codable {
            
            public var display: String?
            
            public var type: String?
            
            public var action: Action?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case type = "type"
                
                case action = "action"
                
                case logo = "logo"
                
            }

            public init(action: Action?, display: String?, logo: Media?, type: String?) {
                
                self.display = display
                
                self.type = type
                
                self.action = action
                
                self.logo = logo
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(Action.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
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
                
                
                do {
                    items = try container.decode([AutocompleteItem].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
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
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var tags: [CollectionListingFilterTag]?
            
            public var type: [CollectionListingFilterType]?
            

            public enum CodingKeys: String, CodingKey {
                
                case tags = "tags"
                
                case type = "type"
                
            }

            public init(tags: [CollectionListingFilterTag]?, type: [CollectionListingFilterType]?) {
                
                self.tags = tags
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    tags = try container.decode([CollectionListingFilterTag].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode([CollectionListingFilterType].self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
            }
            
        }
        
        /*
            Model: GetCollectionDetailNest
            Used By: Catalog
        */
        struct GetCollectionDetailNest: Codable {
            
            public var allowFacets: Bool?
            
            public var schedule: [String: Any]?
            
            public var type: String?
            
            public var name: String?
            
            public var logo: Media?
            
            public var query: [String: Any]?
            
            public var description: String?
            
            public var cron: [String: Any]?
            
            public var badge: [String: Any]?
            
            public var appId: String?
            
            public var action: ProductListingAction?
            
            public var tag: [String]?
            
            public var uid: String?
            
            public var isActive: Bool?
            
            public var slug: String?
            
            public var meta: [String: Any]?
            
            public var visibleFacetsKeys: [String]?
            
            public var banners: ImageUrls?
            
            public var allowSort: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case allowFacets = "allow_facets"
                
                case schedule = "_schedule"
                
                case type = "type"
                
                case name = "name"
                
                case logo = "logo"
                
                case query = "query"
                
                case description = "description"
                
                case cron = "cron"
                
                case badge = "badge"
                
                case appId = "app_id"
                
                case action = "action"
                
                case tag = "tag"
                
                case uid = "uid"
                
                case isActive = "is_active"
                
                case slug = "slug"
                
                case meta = "meta"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case banners = "banners"
                
                case allowSort = "allow_sort"
                
            }

            public init(action: ProductListingAction?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.allowFacets = allowFacets
                
                self.schedule = schedule
                
                self.type = type
                
                self.name = name
                
                self.logo = logo
                
                self.query = query
                
                self.description = description
                
                self.cron = cron
                
                self.badge = badge
                
                self.appId = appId
                
                self.action = action
                
                self.tag = tag
                
                self.uid = uid
                
                self.isActive = isActive
                
                self.slug = slug
                
                self.meta = meta
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.banners = banners
                
                self.allowSort = allowSort
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    schedule = try container.decode([String: Any].self, forKey: .schedule)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode([String: Any].self, forKey: .query)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cron = try container.decode([String: Any].self, forKey: .cron)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    badge = try container.decode([String: Any].self, forKey: .badge)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tag = try container.decode([String].self, forKey: .tag)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
            }
            
        }
        
        /*
            Model: GetCollectionListingResponse
            Used By: Catalog
        */
        struct GetCollectionListingResponse: Codable {
            
            public var filters: CollectionListingFilter?
            
            public var page: Page
            
            public var items: [GetCollectionDetailNest]?
            

            public enum CodingKeys: String, CodingKey {
                
                case filters = "filters"
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page) {
                
                self.filters = filters
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    filters = try container.decode(CollectionListingFilter.self, forKey: .filters)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                do {
                    items = try container.decode([GetCollectionDetailNest].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var visibleFacetsKeys: [String]?
            
            public var isActive: Bool?
            
            public var allowFacets: Bool?
            
            public var appId: String?
            
            public var slug: String?
            
            public var tag: [String]?
            
            public var schedule: [String: Any]?
            
            public var type: String?
            
            public var name: String?
            
            public var logo: Media?
            
            public var banners: ImageUrls?
            
            public var query: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var description: String?
            
            public var cron: [String: Any]?
            
            public var badge: [String: Any]?
            
            public var allowSort: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case isActive = "is_active"
                
                case allowFacets = "allow_facets"
                
                case appId = "app_id"
                
                case slug = "slug"
                
                case tag = "tag"
                
                case schedule = "_schedule"
                
                case type = "type"
                
                case name = "name"
                
                case logo = "logo"
                
                case banners = "banners"
                
                case query = "query"
                
                case meta = "meta"
                
                case description = "description"
                
                case cron = "cron"
                
                case badge = "badge"
                
                case allowSort = "allow_sort"
                
            }

            public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.isActive = isActive
                
                self.allowFacets = allowFacets
                
                self.appId = appId
                
                self.slug = slug
                
                self.tag = tag
                
                self.schedule = schedule
                
                self.type = type
                
                self.name = name
                
                self.logo = logo
                
                self.banners = banners
                
                self.query = query
                
                self.meta = meta
                
                self.description = description
                
                self.cron = cron
                
                self.badge = badge
                
                self.allowSort = allowSort
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tag = try container.decode([String].self, forKey: .tag)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    schedule = try container.decode([String: Any].self, forKey: .schedule)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode([String: Any].self, forKey: .query)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cron = try container.decode([String: Any].self, forKey: .cron)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    badge = try container.decode([String: Any].self, forKey: .badge)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
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
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var products: [Int]?
            
            public var brands: [Int]?
            
            public var collections: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case products = "products"
                
                case brands = "brands"
                
                case collections = "collections"
                
            }

            public init(brands: [Int]?, collections: [Int]?, products: [Int]?) {
                
                self.products = products
                
                self.brands = brands
                
                self.collections = collections
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    products = try container.decode([Int].self, forKey: .products)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brands = try container.decode([Int].self, forKey: .brands)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    collections = try container.decode([Int].self, forKey: .collections)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(products, forKey: .products)
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
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
                
                
                do {
                    data = try container.decode(FollowIdsData.self, forKey: .data)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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

            public init(coordinates: [Double]?, type: String?) {
                
                self.coordinates = coordinates
                
                self.type = type
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    coordinates = try container.decode([Double].self, forKey: .coordinates)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var address: String?
            
            public var pincode: Int?
            
            public var country: String?
            
            public var state: String?
            
            public var storeEmail: String?
            
            public var city: String?
            
            public var latLong: LatLong?
            
            public var name: String?
            
            public var storeCode: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
                case pincode = "pincode"
                
                case country = "country"
                
                case state = "state"
                
                case storeEmail = "store_email"
                
                case city = "city"
                
                case latLong = "lat_long"
                
                case name = "name"
                
                case storeCode = "store_code"
                
                case uid = "uid"
                
            }

            public init(address: String?, city: String?, country: String?, latLong: LatLong?, name: String?, pincode: Int?, state: String?, storeCode: String?, storeEmail: String?, uid: Int?) {
                
                self.address = address
                
                self.pincode = pincode
                
                self.country = country
                
                self.state = state
                
                self.storeEmail = storeEmail
                
                self.city = city
                
                self.latLong = latLong
                
                self.name = name
                
                self.storeCode = storeCode
                
                self.uid = uid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeEmail = try container.decode(String.self, forKey: .storeEmail)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    latLong = try container.decode(LatLong.self, forKey: .latLong)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: StoreListingResponse
            Used By: Catalog
        */
        struct StoreListingResponse: Codable {
            
            public var page: Page
            
            public var items: [Store1]
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [Store1], page: Page) {
                
                self.page = page
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
                items = try container.decode([Store1].self, forKey: .items)
                
                
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
                
                
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
            }
            
        }
        
        /*
            Model: ProductPrice
            Used By: Cart
        */
        struct ProductPrice: Codable {
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var effective: Double?
            
            public var marked: Double?
            
            public var selling: Double?
            
            public var addOn: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case effective = "effective"
                
                case marked = "marked"
                
                case selling = "selling"
                
                case addOn = "add_on"
                
            }

            public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.effective = effective
                
                self.marked = marked
                
                self.selling = selling
                
                self.addOn = addOn
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    selling = try container.decode(Double.self, forKey: .selling)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addOn = try container.decode(Double.self, forKey: .addOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                try? container.encodeIfPresent(selling, forKey: .selling)
                
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

            public init(base: ProductPrice?, converted: ProductPrice?) {
                
                self.converted = converted
                
                self.base = base
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    converted = try container.decode(ProductPrice.self, forKey: .converted)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    base = try container.decode(ProductPrice.self, forKey: .base)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var deliverable: Bool?
            
            public var sizes: [String]?
            
            public var isValid: Bool?
            
            public var outOfStock: Bool?
            
            public var otherStoreQuantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case deliverable = "deliverable"
                
                case sizes = "sizes"
                
                case isValid = "is_valid"
                
                case outOfStock = "out_of_stock"
                
                case otherStoreQuantity = "other_store_quantity"
                
            }

            public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
                
                self.deliverable = deliverable
                
                self.sizes = sizes
                
                self.isValid = isValid
                
                self.outOfStock = outOfStock
                
                self.otherStoreQuantity = otherStoreQuantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    deliverable = try container.decode(Bool.self, forKey: .deliverable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([String].self, forKey: .sizes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(deliverable, forKey: .deliverable)
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
                
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
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: BasePrice
            Used By: Cart
        */
        struct BasePrice: Codable {
            
            public var effective: Double?
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var marked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case effective = "effective"
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case marked = "marked"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
                
                self.effective = effective
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.marked = marked
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
            }
            
        }
        
        /*
            Model: ArticlePriceInfo
            Used By: Cart
        */
        struct ArticlePriceInfo: Codable {
            
            public var converted: BasePrice?
            
            public var base: BasePrice?
            

            public enum CodingKeys: String, CodingKey {
                
                case converted = "converted"
                
                case base = "base"
                
            }

            public init(base: BasePrice?, converted: BasePrice?) {
                
                self.converted = converted
                
                self.base = base
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    converted = try container.decode(BasePrice.self, forKey: .converted)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    base = try container.decode(BasePrice.self, forKey: .base)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var type: String?
            
            public var store: BaseInfo?
            
            public var uid: String?
            
            public var price: ArticlePriceInfo?
            
            public var size: String?
            
            public var quantity: Int?
            
            public var seller: BaseInfo?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case store = "store"
                
                case uid = "uid"
                
                case price = "price"
                
                case size = "size"
                
                case quantity = "quantity"
                
                case seller = "seller"
                
            }

            public init(price: ArticlePriceInfo?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
                
                self.type = type
                
                self.store = store
                
                self.uid = uid
                
                self.price = price
                
                self.size = size
                
                self.quantity = quantity
                
                self.seller = seller
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(BaseInfo.self, forKey: .store)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ArticlePriceInfo.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(BaseInfo.self, forKey: .seller)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
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
                
                
                do {
                    productSlug = try container.decode([String].self, forKey: .productSlug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(productSlug, forKey: .productSlug)
                
            }
            
        }
        
        /*
            Model: ProductAction
            Used By: Cart
        */
        struct ProductAction: Codable {
            
            public var url: String?
            
            public var type: String?
            
            public var query: ActionQuery?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case type = "type"
                
                case query = "query"
                
            }

            public init(query: ActionQuery?, type: String?, url: String?) {
                
                self.url = url
                
                self.type = type
                
                self.query = query
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode(ActionQuery.self, forKey: .query)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(query, forKey: .query)
                
            }
            
        }
        
        /*
            Model: Image
            Used By: Cart
        */
        struct Image: Codable {
            
            public var url: String?
            
            public var secureUrl: String?
            
            public var aspectRatio: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case secureUrl = "secure_url"
                
                case aspectRatio = "aspect_ratio"
                
            }

            public init(aspectRatio: String?, secureUrl: String?, url: String?) {
                
                self.url = url
                
                self.secureUrl = secureUrl
                
                self.aspectRatio = aspectRatio
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    secureUrl = try container.decode(String.self, forKey: .secureUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
                
                try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
                
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
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
            }
            
        }
        
        /*
            Model: Product
            Used By: Cart
        */
        struct Product: Codable {
            
            public var type: String?
            
            public var slug: String?
            
            public var uid: Int?
            
            public var action: ProductAction?
            
            public var brand: BaseInfo?
            
            public var name: String?
            
            public var images: [Image]?
            
            public var categories: [CategoryInfo]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case slug = "slug"
                
                case uid = "uid"
                
                case action = "action"
                
                case brand = "brand"
                
                case name = "name"
                
                case images = "images"
                
                case categories = "categories"
                
            }

            public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [Image]?, name: String?, slug: String?, type: String?, uid: Int?) {
                
                self.type = type
                
                self.slug = slug
                
                self.uid = uid
                
                self.action = action
                
                self.brand = brand
                
                self.name = name
                
                self.images = images
                
                self.categories = categories
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductAction.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brand = try container.decode(BaseInfo.self, forKey: .brand)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    images = try container.decode([Image].self, forKey: .images)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    categories = try container.decode([CategoryInfo].self, forKey: .categories)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
            }
            
        }
        
        /*
            Model: CartProductInfo
            Used By: Cart
        */
        struct CartProductInfo: Codable {
            
            public var message: String?
            
            public var identifiers: CartProductIdentifer
            
            public var price: ProductPriceInfo?
            
            public var couponMessage: String?
            
            public var bulkOffer: [String: Any]?
            
            public var availability: ProductAvailability?
            
            public var quantity: Int?
            
            public var discount: String?
            
            public var isSet: Bool?
            
            public var article: ProductArticle?
            
            public var key: String?
            
            public var product: Product?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case identifiers = "identifiers"
                
                case price = "price"
                
                case couponMessage = "coupon_message"
                
                case bulkOffer = "bulk_offer"
                
                case availability = "availability"
                
                case quantity = "quantity"
                
                case discount = "discount"
                
                case isSet = "is_set"
                
                case article = "article"
                
                case key = "key"
                
                case product = "product"
                
            }

            public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, price: ProductPriceInfo?, product: Product?, quantity: Int?) {
                
                self.message = message
                
                self.identifiers = identifiers
                
                self.price = price
                
                self.couponMessage = couponMessage
                
                self.bulkOffer = bulkOffer
                
                self.availability = availability
                
                self.quantity = quantity
                
                self.discount = discount
                
                self.isSet = isSet
                
                self.article = article
                
                self.key = key
                
                self.product = product
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                do {
                    price = try container.decode(ProductPriceInfo.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponMessage = try container.decode(String.self, forKey: .couponMessage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availability = try container.decode(ProductAvailability.self, forKey: .availability)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    article = try container.decode(ProductArticle.self, forKey: .article)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    product = try container.decode(Product.self, forKey: .product)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
                
                try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
                
                try? container.encodeIfPresent(availability, forKey: .availability)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(isSet, forKey: .isSet)
                
                try? container.encodeIfPresent(article, forKey: .article)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(product, forKey: .product)
                
            }
            
        }
        
        /*
            Model: CouponBreakup
            Used By: Cart
        */
        struct CouponBreakup: Codable {
            
            public var type: String?
            
            public var message: String?
            
            public var uid: Int?
            
            public var value: Double?
            
            public var code: String?
            
            public var isApplied: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case message = "message"
                
                case uid = "uid"
                
                case value = "value"
                
                case code = "code"
                
                case isApplied = "is_applied"
                
            }

            public init(code: String?, isApplied: Bool?, message: String?, type: String?, uid: Int?, value: Double?) {
                
                self.type = type
                
                self.message = message
                
                self.uid = uid
                
                self.value = value
                
                self.code = code
                
                self.isApplied = isApplied
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Double.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
            }
            
        }
        
        /*
            Model: LoyaltyPoints
            Used By: Cart
        */
        struct LoyaltyPoints: Codable {
            
            public var isApplied: Bool?
            
            public var total: Double?
            
            public var applicable: Double?
            
            public var description: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isApplied = "is_applied"
                
                case total = "total"
                
                case applicable = "applicable"
                
                case description = "description"
                
            }

            public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
                
                self.isApplied = isApplied
                
                self.total = total
                
                self.applicable = applicable
                
                self.description = description
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    applicable = try container.decode(Double.self, forKey: .applicable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(applicable, forKey: .applicable)
                
                try? container.encodeIfPresent(description, forKey: .description)
                
            }
            
        }
        
        /*
            Model: DisplayBreakup
            Used By: Cart
        */
        struct DisplayBreakup: Codable {
            
            public var message: [String]?
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var value: Double?
            
            public var display: String?
            
            public var key: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case value = "value"
                
                case display = "display"
                
                case key = "key"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
                
                self.message = message
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.value = value
                
                self.display = display
                
                self.key = key
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode([String].self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Double.self, forKey: .value)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
            }
            
        }
        
        /*
            Model: RawBreakup
            Used By: Cart
        */
        struct RawBreakup: Codable {
            
            public var subtotal: Double?
            
            public var coupon: Double?
            
            public var codCharge: Double?
            
            public var fyndCash: Double?
            
            public var youSaved: Double?
            
            public var deliveryCharge: Double?
            
            public var total: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case subtotal = "subtotal"
                
                case coupon = "coupon"
                
                case codCharge = "cod_charge"
                
                case fyndCash = "fynd_cash"
                
                case youSaved = "you_saved"
                
                case deliveryCharge = "delivery_charge"
                
                case total = "total"
                
            }

            public init(codCharge: Double?, coupon: Double?, deliveryCharge: Double?, fyndCash: Double?, subtotal: Double?, total: Double?, youSaved: Double?) {
                
                self.subtotal = subtotal
                
                self.coupon = coupon
                
                self.codCharge = codCharge
                
                self.fyndCash = fyndCash
                
                self.youSaved = youSaved
                
                self.deliveryCharge = deliveryCharge
                
                self.total = total
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharge = try container.decode(Double.self, forKey: .codCharge)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndCash = try container.decode(Double.self, forKey: .fyndCash)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    youSaved = try container.decode(Double.self, forKey: .youSaved)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(subtotal, forKey: .subtotal)
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                try? container.encodeIfPresent(codCharge, forKey: .codCharge)
                
                try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
                
                try? container.encodeIfPresent(youSaved, forKey: .youSaved)
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
            }
            
        }
        
        /*
            Model: CartBreakup
            Used By: Cart
        */
        struct CartBreakup: Codable {
            
            public var coupon: CouponBreakup?
            
            public var loyaltyPoints: LoyaltyPoints?
            
            public var display: [DisplayBreakup]?
            
            public var raw: RawBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case coupon = "coupon"
                
                case loyaltyPoints = "loyalty_points"
                
                case display = "display"
                
                case raw = "raw"
                
            }

            public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
                
                self.coupon = coupon
                
                self.loyaltyPoints = loyaltyPoints
                
                self.display = display
                
                self.raw = raw
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    coupon = try container.decode(CouponBreakup.self, forKey: .coupon)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode([DisplayBreakup].self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    raw = try container.decode(RawBreakup.self, forKey: .raw)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    max = try container.decode(String.self, forKey: .max)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    min = try container.decode(String.self, forKey: .min)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    max = try container.decode(Int.self, forKey: .max)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    min = try container.decode(Int.self, forKey: .min)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    symbol = try container.decode(String.self, forKey: .symbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(symbol, forKey: .symbol)
                
            }
            
        }
        
        /*
            Model: CartResponse
            Used By: Cart
        */
        struct CartResponse: Codable {
            
            public var items: [CartProductInfo]?
            
            public var checkoutMode: String?
            
            public var message: String?
            
            public var uid: String?
            
            public var lastModified: String?
            
            public var breakupValues: CartBreakup?
            
            public var restrictCheckout: Bool?
            
            public var comment: String?
            
            public var deliveryChargeInfo: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var couponText: String?
            
            public var isValid: Bool?
            
            public var gstin: String?
            
            public var cartId: Int?
            
            public var currency: CartCurrency?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case checkoutMode = "checkout_mode"
                
                case message = "message"
                
                case uid = "uid"
                
                case lastModified = "last_modified"
                
                case breakupValues = "breakup_values"
                
                case restrictCheckout = "restrict_checkout"
                
                case comment = "comment"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case deliveryPromise = "delivery_promise"
                
                case couponText = "coupon_text"
                
                case isValid = "is_valid"
                
                case gstin = "gstin"
                
                case cartId = "cart_id"
                
                case currency = "currency"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, restrictCheckout: Bool?, uid: String?) {
                
                self.items = items
                
                self.checkoutMode = checkoutMode
                
                self.message = message
                
                self.uid = uid
                
                self.lastModified = lastModified
                
                self.breakupValues = breakupValues
                
                self.restrictCheckout = restrictCheckout
                
                self.comment = comment
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.deliveryPromise = deliveryPromise
                
                self.couponText = couponText
                
                self.isValid = isValid
                
                self.gstin = gstin
                
                self.cartId = cartId
                
                self.currency = currency
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
            }
            
        }
        
        /*
            Model: AddProductCart
            Used By: Cart
        */
        struct AddProductCart: Codable {
            
            public var sellerId: Int?
            
            public var itemId: Int?
            
            public var quantity: Int?
            
            public var storeId: Int?
            
            public var display: String?
            
            public var articleId: String?
            
            public var articleAssignment: [String: Any]?
            
            public var itemSize: String?
            
            public var pos: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case sellerId = "seller_id"
                
                case itemId = "item_id"
                
                case quantity = "quantity"
                
                case storeId = "store_id"
                
                case display = "display"
                
                case articleId = "article_id"
                
                case articleAssignment = "article_assignment"
                
                case itemSize = "item_size"
                
                case pos = "pos"
                
            }

            public init(articleAssignment: [String: Any]?, articleId: String?, display: String?, itemId: Int?, itemSize: String?, pos: Bool?, quantity: Int?, sellerId: Int?, storeId: Int?) {
                
                self.sellerId = sellerId
                
                self.itemId = itemId
                
                self.quantity = quantity
                
                self.storeId = storeId
                
                self.display = display
                
                self.articleId = articleId
                
                self.articleAssignment = articleAssignment
                
                self.itemSize = itemSize
                
                self.pos = pos
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemSize = try container.decode(String.self, forKey: .itemSize)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pos = try container.decode(Bool.self, forKey: .pos)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(sellerId, forKey: .sellerId)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(storeId, forKey: .storeId)
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
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
                
                
                do {
                    items = try container.decode([AddProductCart].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var success: Bool?
            
            public var cart: CartResponse?
            
            public var partial: Bool?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case cart = "cart"
                
                case partial = "partial"
                
                case message = "message"
                
            }

            public init(cart: CartResponse?, message: String?, partial: Bool?, success: Bool?) {
                
                self.success = success
                
                self.cart = cart
                
                self.partial = partial
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CartResponse.self, forKey: .cart)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    partial = try container.decode(Bool.self, forKey: .partial)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(partial, forKey: .partial)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
            }
            
        }
        
        /*
            Model: UpdateProductCart
            Used By: Cart
        */
        struct UpdateProductCart: Codable {
            
            public var itemIndex: Int?
            
            public var itemId: Int?
            
            public var quantity: Int?
            
            public var articleId: String?
            
            public var identifiers: CartProductIdentifer
            
            public var itemSize: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemIndex = "item_index"
                
                case itemId = "item_id"
                
                case quantity = "quantity"
                
                case articleId = "article_id"
                
                case identifiers = "identifiers"
                
                case itemSize = "item_size"
                
            }

            public init(articleId: String?, identifiers: CartProductIdentifer, itemId: Int?, itemIndex: Int?, itemSize: String?, quantity: Int?) {
                
                self.itemIndex = itemIndex
                
                self.itemId = itemId
                
                self.quantity = quantity
                
                self.articleId = articleId
                
                self.identifiers = identifiers
                
                self.itemSize = itemSize
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    itemIndex = try container.decode(Int.self, forKey: .itemIndex)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                do {
                    itemSize = try container.decode(String.self, forKey: .itemSize)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
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
                
                
                do {
                    items = try container.decode([UpdateProductCart].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
            
            public var success: Bool?
            
            public var cart: CartResponse?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case cart = "cart"
                
                case message = "message"
                
            }

            public init(cart: CartResponse?, message: String?, success: Bool?) {
                
                self.success = success
                
                self.cart = cart
                
                self.message = message
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CartResponse.self, forKey: .cart)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    userCartItemsCount = try container.decode(Int.self, forKey: .userCartItemsCount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var totalItemCount: Int?
            
            public var hasPrevious: Bool?
            
            public var hasNext: Bool?
            
            public var total: Int?
            
            public var current: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case totalItemCount = "total_item_count"
                
                case hasPrevious = "has_previous"
                
                case hasNext = "has_next"
                
                case total = "total"
                
                case current = "current"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, total: Int?, totalItemCount: Int?) {
                
                self.totalItemCount = totalItemCount
                
                self.hasPrevious = hasPrevious
                
                self.hasNext = hasNext
                
                self.total = total
                
                self.current = current
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    totalItemCount = try container.decode(Int.self, forKey: .totalItemCount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Int.self, forKey: .total)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    current = try container.decode(Int.self, forKey: .current)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                try? container.encodeIfPresent(current, forKey: .current)
                
            }
            
        }
        
        /*
            Model: Coupon
            Used By: Cart
        */
        struct Coupon: Codable {
            
            public var message: String?
            
            public var isApplicable: Bool?
            
            public var minimumCartValue: Double?
            
            public var subTitle: String?
            
            public var maxDiscountValue: Double?
            
            public var couponCode: String?
            
            public var title: String?
            
            public var expiresOn: String?
            
            public var isApplied: Bool?
            
            public var couponValue: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case isApplicable = "is_applicable"
                
                case minimumCartValue = "minimum_cart_value"
                
                case subTitle = "sub_title"
                
                case maxDiscountValue = "max_discount_value"
                
                case couponCode = "coupon_code"
                
                case title = "title"
                
                case expiresOn = "expires_on"
                
                case isApplied = "is_applied"
                
                case couponValue = "coupon_value"
                
            }

            public init(couponCode: String?, couponValue: Double?, expiresOn: String?, isApplicable: Bool?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?) {
                
                self.message = message
                
                self.isApplicable = isApplicable
                
                self.minimumCartValue = minimumCartValue
                
                self.subTitle = subTitle
                
                self.maxDiscountValue = maxDiscountValue
                
                self.couponCode = couponCode
                
                self.title = title
                
                self.expiresOn = expiresOn
                
                self.isApplied = isApplied
                
                self.couponValue = couponValue
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expiresOn = try container.decode(String.self, forKey: .expiresOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
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
                
                
                do {
                    page = try container.decode(PageCoupon.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availableCouponList = try container.decode([Coupon].self, forKey: .availableCouponList)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var bulkEffective: Double?
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var effective: Int?
            
            public var marked: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case bulkEffective = "bulk_effective"
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case effective = "effective"
                
                case marked = "marked"
                
            }

            public init(bulkEffective: Double?, currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?) {
                
                self.bulkEffective = bulkEffective
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.effective = effective
                
                self.marked = marked
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    bulkEffective = try container.decode(Double.self, forKey: .bulkEffective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Int.self, forKey: .effective)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Int.self, forKey: .marked)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
            }
            
        }
        
        /*
            Model: OfferItem
            Used By: Cart
        */
        struct OfferItem: Codable {
            
            public var type: String?
            
            public var autoApplied: Bool?
            
            public var margin: Int?
            
            public var price: OfferPrice?
            
            public var quantity: Int?
            
            public var best: Bool?
            
            public var total: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case autoApplied = "auto_applied"
                
                case margin = "margin"
                
                case price = "price"
                
                case quantity = "quantity"
                
                case best = "best"
                
                case total = "total"
                
            }

            public init(autoApplied: Bool?, best: Bool?, margin: Int?, price: OfferPrice?, quantity: Int?, total: Double?, type: String?) {
                
                self.type = type
                
                self.autoApplied = autoApplied
                
                self.margin = margin
                
                self.price = price
                
                self.quantity = quantity
                
                self.best = best
                
                self.total = total
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoApplied = try container.decode(Bool.self, forKey: .autoApplied)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    margin = try container.decode(Int.self, forKey: .margin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(OfferPrice.self, forKey: .price)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    best = try container.decode(Bool.self, forKey: .best)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                try? container.encodeIfPresent(best, forKey: .best)
                
                try? container.encodeIfPresent(total, forKey: .total)
                
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
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    offers = try container.decode([OfferItem].self, forKey: .offers)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(OfferSeller.self, forKey: .seller)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    data = try container.decode([BulkPriceOffer].self, forKey: .data)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var addressType: String?
            
            public var areaCode: String?
            
            public var userId: String?
            
            public var country: String?
            
            public var uid: Int?
            
            public var isDefaultAddress: Bool?
            
            public var isActive: Bool?
            
            public var landmark: String?
            
            public var phone: String?
            
            public var state: String?
            
            public var name: String?
            
            public var address: String?
            
            public var area: String?
            
            public var email: String?
            
            public var tags: [[String: Any]]?
            
            public var checkoutMode: String?
            
            public var geoLocation: GeoLocation?
            
            public var areaCodeSlug: String?
            
            public var city: String?
            
            public var meta: [String: Any]?
            
            public var addressId: Int?
            
            public var countryCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case addressType = "address_type"
                
                case areaCode = "area_code"
                
                case userId = "user_id"
                
                case country = "country"
                
                case uid = "uid"
                
                case isDefaultAddress = "is_default_address"
                
                case isActive = "is_active"
                
                case landmark = "landmark"
                
                case phone = "phone"
                
                case state = "state"
                
                case name = "name"
                
                case address = "address"
                
                case area = "area"
                
                case email = "email"
                
                case tags = "tags"
                
                case checkoutMode = "checkout_mode"
                
                case geoLocation = "geo_location"
                
                case areaCodeSlug = "area_code_slug"
                
                case city = "city"
                
                case meta = "meta"
                
                case addressId = "address_id"
                
                case countryCode = "country_code"
                
            }

            public init(address: String?, addressId: Int?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, checkoutMode: String?, city: String?, country: String?, countryCode: String?, email: String?, geoLocation: GeoLocation?, isActive: Bool?, isDefaultAddress: Bool?, landmark: String?, meta: [String: Any]?, name: String?, phone: String?, state: String?, tags: [[String: Any]]?, uid: Int?, userId: String?) {
                
                self.addressType = addressType
                
                self.areaCode = areaCode
                
                self.userId = userId
                
                self.country = country
                
                self.uid = uid
                
                self.isDefaultAddress = isDefaultAddress
                
                self.isActive = isActive
                
                self.landmark = landmark
                
                self.phone = phone
                
                self.state = state
                
                self.name = name
                
                self.address = address
                
                self.area = area
                
                self.email = email
                
                self.tags = tags
                
                self.checkoutMode = checkoutMode
                
                self.geoLocation = geoLocation
                
                self.areaCodeSlug = areaCodeSlug
                
                self.city = city
                
                self.meta = meta
                
                self.addressId = addressId
                
                self.countryCode = countryCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    area = try container.decode(String.self, forKey: .area)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tags = try container.decode([[String: Any]].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    geoLocation = try container.decode(GeoLocation.self, forKey: .geoLocation)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(Int.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
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
                
                
                do {
                    address = try container.decode([Address].self, forKey: .address)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var addressId: Int?
            
            public var isDefaultAddress: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case addressId = "address_id"
                
                case isDefaultAddress = "is_default_address"
                
            }

            public init(addressId: Int?, isDefaultAddress: Bool?, success: String?) {
                
                self.success = success
                
                self.addressId = addressId
                
                self.isDefaultAddress = isDefaultAddress
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(String.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(Int.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
            }
            
        }
        
        /*
            Model: UpdateAddressResponse
            Used By: Cart
        */
        struct UpdateAddressResponse: Codable {
            
            public var success: Bool?
            
            public var addressId: Int?
            
            public var isDefaultAddress: Bool?
            
            public var isUpdated: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case addressId = "address_id"
                
                case isDefaultAddress = "is_default_address"
                
                case isUpdated = "is_updated"
                
            }

            public init(addressId: Int?, isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?) {
                
                self.success = success
                
                self.addressId = addressId
                
                self.isDefaultAddress = isDefaultAddress
                
                self.isUpdated = isUpdated
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(Int.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isUpdated = try container.decode(Bool.self, forKey: .isUpdated)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
                
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
                
                
                do {
                    addressId = try container.decode(Int.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var addressId: String?
            
            public var uid: String?
            
            public var billingAddressId: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case addressId = "address_id"
                
                case uid = "uid"
                
                case billingAddressId = "billing_address_id"
                
            }

            public init(addressId: String?, billingAddressId: Int?, uid: String?) {
                
                self.addressId = addressId
                
                self.uid = uid
                
                self.billingAddressId = billingAddressId
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(Int.self, forKey: .billingAddressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var aggregatorName: String?
            
            public var uid: Int?
            
            public var paymentIdentifier: String?
            
            public var addressId: Int?
            
            public var paymentMode: String?
            
            public var merchantCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregatorName = "aggregator_name"
                
                case uid = "uid"
                
                case paymentIdentifier = "payment_identifier"
                
                case addressId = "address_id"
                
                case paymentMode = "payment_mode"
                
                case merchantCode = "merchant_code"
                
            }

            public init(addressId: Int?, aggregatorName: String?, merchantCode: String?, paymentIdentifier: String?, paymentMode: String?, uid: Int?) {
                
                self.aggregatorName = aggregatorName
                
                self.uid = uid
                
                self.paymentIdentifier = paymentIdentifier
                
                self.addressId = addressId
                
                self.paymentMode = paymentMode
                
                self.merchantCode = merchantCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(Int.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
            }
            
        }
        
        /*
            Model: CouponValidity
            Used By: Cart
        */
        struct CouponValidity: Codable {
            
            public var displayMessageEn: String?
            
            public var code: String?
            
            public var discount: Double?
            
            public var valid: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayMessageEn = "display_message_en"
                
                case code = "code"
                
                case discount = "discount"
                
                case valid = "valid"
                
            }

            public init(code: String?, discount: Double?, displayMessageEn: String?, valid: Bool?) {
                
                self.displayMessageEn = displayMessageEn
                
                self.code = code
                
                self.discount = discount
                
                self.valid = valid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    valid = try container.decode(Bool.self, forKey: .valid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(displayMessageEn, forKey: .displayMessageEn)
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                try? container.encodeIfPresent(valid, forKey: .valid)
                
            }
            
        }
        
        /*
            Model: PaymentUpdate
            Used By: Cart
        */
        struct PaymentUpdate: Codable {
            
            public var success: Bool
            
            public var message: String?
            
            public var couponValidity: CouponValidity?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case couponValidity = "coupon_validity"
                
            }

            public init(couponValidity: CouponValidity?, message: String?, success: Bool) {
                
                self.success = success
                
                self.message = message
                
                self.couponValidity = couponValidity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)
                
            }
            
        }
        
        /*
            Model: ShipmentResponse
            Used By: Cart
        */
        struct ShipmentResponse: Codable {
            
            public var items: [CartProductInfo]?
            
            public var dpId: Int?
            
            public var fulfillmentType: String?
            
            public var fulfillmentId: Int?
            
            public var orderType: String?
            
            public var boxType: String?
            
            public var shipments: Int?
            
            public var shipmentType: String?
            
            public var promise: ShipmentPromise?
            
            public var dpOptions: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case dpId = "dp_id"
                
                case fulfillmentType = "fulfillment_type"
                
                case fulfillmentId = "fulfillment_id"
                
                case orderType = "order_type"
                
                case boxType = "box_type"
                
                case shipments = "shipments"
                
                case shipmentType = "shipment_type"
                
                case promise = "promise"
                
                case dpOptions = "dp_options"
                
            }

            public init(boxType: String?, dpId: Int?, dpOptions: [String: Any]?, fulfillmentId: Int?, fulfillmentType: String?, items: [CartProductInfo]?, orderType: String?, promise: ShipmentPromise?, shipments: Int?, shipmentType: String?) {
                
                self.items = items
                
                self.dpId = dpId
                
                self.fulfillmentType = fulfillmentType
                
                self.fulfillmentId = fulfillmentId
                
                self.orderType = orderType
                
                self.boxType = boxType
                
                self.shipments = shipments
                
                self.shipmentType = shipmentType
                
                self.promise = promise
                
                self.dpOptions = dpOptions
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    dpId = try container.decode(Int.self, forKey: .dpId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipments = try container.decode(Int.self, forKey: .shipments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipmentType = try container.decode(String.self, forKey: .shipmentType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promise = try container.decode(ShipmentPromise.self, forKey: .promise)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(dpId, forKey: .dpId)
                
                try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                try? container.encodeIfPresent(boxType, forKey: .boxType)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
                
            }
            
        }
        
        /*
            Model: CartShipmentsResponse
            Used By: Cart
        */
        struct CartShipmentsResponse: Codable {
            
            public var checkoutMode: String?
            
            public var message: String?
            
            public var uid: String?
            
            public var lastModified: String?
            
            public var breakupValues: CartBreakup?
            
            public var restrictCheckout: Bool?
            
            public var comment: String?
            
            public var shipments: [ShipmentResponse]?
            
            public var deliveryChargeInfo: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var couponText: String?
            
            public var isValid: Bool?
            
            public var gstin: String?
            
            public var cartId: Int?
            
            public var currency: CartCurrency?
            

            public enum CodingKeys: String, CodingKey {
                
                case checkoutMode = "checkout_mode"
                
                case message = "message"
                
                case uid = "uid"
                
                case lastModified = "last_modified"
                
                case breakupValues = "breakup_values"
                
                case restrictCheckout = "restrict_checkout"
                
                case comment = "comment"
                
                case shipments = "shipments"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case deliveryPromise = "delivery_promise"
                
                case couponText = "coupon_text"
                
                case isValid = "is_valid"
                
                case gstin = "gstin"
                
                case cartId = "cart_id"
                
                case currency = "currency"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, isValid: Bool?, lastModified: String?, message: String?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, uid: String?) {
                
                self.checkoutMode = checkoutMode
                
                self.message = message
                
                self.uid = uid
                
                self.lastModified = lastModified
                
                self.breakupValues = breakupValues
                
                self.restrictCheckout = restrictCheckout
                
                self.comment = comment
                
                self.shipments = shipments
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.deliveryPromise = deliveryPromise
                
                self.couponText = couponText
                
                self.isValid = isValid
                
                self.gstin = gstin
                
                self.cartId = cartId
                
                self.currency = currency
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipments = try container.decode([ShipmentResponse].self, forKey: .shipments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
            }
            
        }
        
        /*
            Model: CartCheckoutRequest
            Used By: Cart
        */
        struct CartCheckoutRequest: Codable {
            
            public var paymentParams: [String: Any]?
            
            public var callbackUrl: String?
            
            public var billingAddressId: Int?
            
            public var fyndstoreEmpId: String?
            
            public var paymentIdentifier: String?
            
            public var paymentAutoConfirm: Bool?
            
            public var meta: [String: Any]?
            
            public var aggregator: String?
            
            public var extraMeta: [String: Any]?
            
            public var addressId: Int?
            
            public var paymentMode: String
            
            public var orderingStore: Int?
            
            public var staff: [String: Any]?
            
            public var billingAddress: [String: Any]?
            
            public var deliveryAddress: [String: Any]?
            
            public var merchantCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentParams = "payment_params"
                
                case callbackUrl = "callback_url"
                
                case billingAddressId = "billing_address_id"
                
                case fyndstoreEmpId = "fyndstore_emp_id"
                
                case paymentIdentifier = "payment_identifier"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case meta = "meta"
                
                case aggregator = "aggregator"
                
                case extraMeta = "extra_meta"
                
                case addressId = "address_id"
                
                case paymentMode = "payment_mode"
                
                case orderingStore = "ordering_store"
                
                case staff = "staff"
                
                case billingAddress = "billing_address"
                
                case deliveryAddress = "delivery_address"
                
                case merchantCode = "merchant_code"
                
            }

            public init(addressId: Int?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: Int?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, fyndstoreEmpId: String?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, staff: [String: Any]?) {
                
                self.paymentParams = paymentParams
                
                self.callbackUrl = callbackUrl
                
                self.billingAddressId = billingAddressId
                
                self.fyndstoreEmpId = fyndstoreEmpId
                
                self.paymentIdentifier = paymentIdentifier
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.meta = meta
                
                self.aggregator = aggregator
                
                self.extraMeta = extraMeta
                
                self.addressId = addressId
                
                self.paymentMode = paymentMode
                
                self.orderingStore = orderingStore
                
                self.staff = staff
                
                self.billingAddress = billingAddress
                
                self.deliveryAddress = deliveryAddress
                
                self.merchantCode = merchantCode
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(Int.self, forKey: .billingAddressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndstoreEmpId = try container.decode(String.self, forKey: .fyndstoreEmpId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(Int.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                
                
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    staff = try container.decode([String: Any].self, forKey: .staff)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
            }
            
        }
        
        /*
            Model: CheckCart
            Used By: Cart
        */
        struct CheckCart: Codable {
            
            public var items: [CartProductInfo]?
            
            public var codMessage: String?
            
            public var message: String?
            
            public var success: Bool?
            
            public var orderId: String?
            
            public var restrictCheckout: Bool?
            
            public var deliveryCharges: Int?
            
            public var comment: String?
            
            public var codCharges: Int?
            
            public var uid: String?
            
            public var breakupValues: CartBreakup?
            
            public var codAvailable: Bool?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var gstin: String?
            
            public var storeCode: String?
            
            public var lastModified: String?
            
            public var errorMessage: String?
            
            public var deliveryChargeOrderValue: Int?
            
            public var storeEmps: [[String: Any]]?
            
            public var couponText: String?
            
            public var cartId: Int?
            
            public var currency: CartCurrency?
            
            public var checkoutMode: String?
            
            public var userType: String?
            
            public var deliveryChargeInfo: String?
            
            public var isValid: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case codMessage = "cod_message"
                
                case message = "message"
                
                case success = "success"
                
                case orderId = "order_id"
                
                case restrictCheckout = "restrict_checkout"
                
                case deliveryCharges = "delivery_charges"
                
                case comment = "comment"
                
                case codCharges = "cod_charges"
                
                case uid = "uid"
                
                case breakupValues = "breakup_values"
                
                case codAvailable = "cod_available"
                
                case deliveryPromise = "delivery_promise"
                
                case gstin = "gstin"
                
                case storeCode = "store_code"
                
                case lastModified = "last_modified"
                
                case errorMessage = "error_message"
                
                case deliveryChargeOrderValue = "delivery_charge_order_value"
                
                case storeEmps = "store_emps"
                
                case couponText = "coupon_text"
                
                case cartId = "cart_id"
                
                case currency = "currency"
                
                case checkoutMode = "checkout_mode"
                
                case userType = "user_type"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case isValid = "is_valid"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, codAvailable: Bool?, codCharges: Int?, codMessage: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryCharges: Int?, deliveryChargeInfo: String?, deliveryChargeOrderValue: Int?, deliveryPromise: ShipmentPromise?, errorMessage: String?, gstin: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, orderId: String?, restrictCheckout: Bool?, storeCode: String?, storeEmps: [[String: Any]]?, success: Bool?, uid: String?, userType: String?) {
                
                self.items = items
                
                self.codMessage = codMessage
                
                self.message = message
                
                self.success = success
                
                self.orderId = orderId
                
                self.restrictCheckout = restrictCheckout
                
                self.deliveryCharges = deliveryCharges
                
                self.comment = comment
                
                self.codCharges = codCharges
                
                self.uid = uid
                
                self.breakupValues = breakupValues
                
                self.codAvailable = codAvailable
                
                self.deliveryPromise = deliveryPromise
                
                self.gstin = gstin
                
                self.storeCode = storeCode
                
                self.lastModified = lastModified
                
                self.errorMessage = errorMessage
                
                self.deliveryChargeOrderValue = deliveryChargeOrderValue
                
                self.storeEmps = storeEmps
                
                self.couponText = couponText
                
                self.cartId = cartId
                
                self.currency = currency
                
                self.checkoutMode = checkoutMode
                
                self.userType = userType
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.isValid = isValid
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codMessage = try container.decode(String.self, forKey: .codMessage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharges = try container.decode(Int.self, forKey: .codCharges)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codAvailable = try container.decode(Bool.self, forKey: .codAvailable)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    errorMessage = try container.decode(String.self, forKey: .errorMessage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeOrderValue = try container.decode(Int.self, forKey: .deliveryChargeOrderValue)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeEmps = try container.decode([[String: Any]].self, forKey: .storeEmps)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userType = try container.decode(String.self, forKey: .userType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(codMessage, forKey: .codMessage)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                
                try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
                
                try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(userType, forKey: .userType)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
            }
            
        }
        
        /*
            Model: CartCheckoutResponse
            Used By: Cart
        */
        struct CartCheckoutResponse: Codable {
            
            public var callbackUrl: String?
            
            public var message: String?
            
            public var success: Bool?
            
            public var data: [String: Any]?
            
            public var orderId: String?
            
            public var appInterceptUrl: String?
            
            public var cart: CheckCart?
            

            public enum CodingKeys: String, CodingKey {
                
                case callbackUrl = "callback_url"
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
                case orderId = "order_id"
                
                case appInterceptUrl = "app_intercept_url"
                
                case cart = "cart"
                
            }

            public init(appInterceptUrl: String?, callbackUrl: String?, cart: CheckCart?, data: [String: Any]?, message: String?, orderId: String?, success: Bool?) {
                
                self.callbackUrl = callbackUrl
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
                self.orderId = orderId
                
                self.appInterceptUrl = appInterceptUrl
                
                self.cart = cart
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CheckCart.self, forKey: .cart)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
            }
            
        }
        
        /*
            Model: CartMetaRequest
            Used By: Cart
        */
        struct CartMetaRequest: Codable {
            
            public var gstin: String?
            
            public var checkoutMode: String?
            
            public var pickUpCustomerDetails: [String: Any]?
            
            public var comment: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstin = "gstin"
                
                case checkoutMode = "checkout_mode"
                
                case pickUpCustomerDetails = "pick_up_customer_details"
                
                case comment = "comment"
                
            }

            public init(checkoutMode: String?, comment: String?, gstin: String?, pickUpCustomerDetails: [String: Any]?) {
                
                self.gstin = gstin
                
                self.checkoutMode = checkoutMode
                
                self.pickUpCustomerDetails = pickUpCustomerDetails
                
                self.comment = comment
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
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
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    errors = try container.decode([String].self, forKey: .errors)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
            
            public var token: String?
            
            public var shareUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case token = "token"
                
                case shareUrl = "share_url"
                
            }

            public init(shareUrl: String?, token: String?) {
                
                self.token = token
                
                self.shareUrl = shareUrl
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shareUrl = try container.decode(String.self, forKey: .shareUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                try? container.encodeIfPresent(shareUrl, forKey: .shareUrl)
                
            }
            
        }
        
        /*
            Model: SharedCartDetails
            Used By: Cart
        */
        struct SharedCartDetails: Codable {
            
            public var user: [String: Any]?
            
            public var token: String?
            
            public var meta: [String: Any]?
            
            public var createdOn: String?
            
            public var source: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case token = "token"
                
                case meta = "meta"
                
                case createdOn = "created_on"
                
                case source = "source"
                
            }

            public init(createdOn: String?, meta: [String: Any]?, source: [String: Any]?, token: String?, user: [String: Any]?) {
                
                self.user = user
                
                self.token = token
                
                self.meta = meta
                
                self.createdOn = createdOn
                
                self.source = source
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode([String: Any].self, forKey: .user)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    source = try container.decode([String: Any].self, forKey: .source)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                try? container.encodeIfPresent(source, forKey: .source)
                
            }
            
        }
        
        /*
            Model: SharedCart
            Used By: Cart
        */
        struct SharedCart: Codable {
            
            public var items: [CartProductInfo]?
            
            public var checkoutMode: String?
            
            public var message: String?
            
            public var uid: String?
            
            public var lastModified: String?
            
            public var breakupValues: CartBreakup?
            
            public var restrictCheckout: Bool?
            
            public var comment: String?
            
            public var deliveryChargeInfo: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var couponText: String?
            
            public var isValid: Bool?
            
            public var gstin: String?
            
            public var cartId: Int?
            
            public var currency: CartCurrency?
            
            public var sharedCartDetails: SharedCartDetails?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case checkoutMode = "checkout_mode"
                
                case message = "message"
                
                case uid = "uid"
                
                case lastModified = "last_modified"
                
                case breakupValues = "breakup_values"
                
                case restrictCheckout = "restrict_checkout"
                
                case comment = "comment"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case deliveryPromise = "delivery_promise"
                
                case couponText = "coupon_text"
                
                case isValid = "is_valid"
                
                case gstin = "gstin"
                
                case cartId = "cart_id"
                
                case currency = "currency"
                
                case sharedCartDetails = "shared_cart_details"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, restrictCheckout: Bool?, sharedCartDetails: SharedCartDetails?, uid: String?) {
                
                self.items = items
                
                self.checkoutMode = checkoutMode
                
                self.message = message
                
                self.uid = uid
                
                self.lastModified = lastModified
                
                self.breakupValues = breakupValues
                
                self.restrictCheckout = restrictCheckout
                
                self.comment = comment
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.deliveryPromise = deliveryPromise
                
                self.couponText = couponText
                
                self.isValid = isValid
                
                self.gstin = gstin
                
                self.cartId = cartId
                
                self.currency = currency
                
                self.sharedCartDetails = sharedCartDetails
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
                
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
                
                
                do {
                    cart = try container.decode(SharedCart.self, forKey: .cart)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    error = try container.decode(String.self, forKey: .error)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                try? container.encodeIfPresent(error, forKey: .error)
                
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
                
                
                
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                do {
                    answer = try container.decode(Bool.self, forKey: .answer)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    askQuestion = try container.decode(Bool.self, forKey: .askQuestion)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rnr = try container.decode(Bool.self, forKey: .rnr)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mediaList = try container.decode([AddMediaRequest].self, forKey: .mediaList)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refId = try container.decode(String.self, forKey: .refId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refType = try container.decode(String.self, forKey: .refType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    cloudId = try container.decode(String.self, forKey: .cloudId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cloudName = try container.decode(String.self, forKey: .cloudName)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cloudProvider = try container.decode(String.self, forKey: .cloudProvider)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mediaUrl = try container.decode(String.self, forKey: .mediaUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refId = try container.decode(String.self, forKey: .refId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refType = try container.decode(String.self, forKey: .refType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    thumbnailUrl = try container.decode(String.self, forKey: .thumbnailUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tags = try container.decode([TagMeta].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                do {
                    access = try container.decode(Access.self, forKey: .access)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mediaCloud = try container.decode(MediaCloud.self, forKey: .mediaCloud)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    provider = try container.decode(String.self, forKey: .provider)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    choices = try container.decode([String].self, forKey: .choices)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                entityId = try container.decode(String.self, forKey: .entityId)
                
                
                
                entityType = try container.decode(String.self, forKey: .entityType)
                
                
                
                do {
                    maxLen = try container.decode(Int.self, forKey: .maxLen)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sortPriority = try container.decode(Int.self, forKey: .sortPriority)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                text = try container.decode(String.self, forKey: .text)
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    appVersion = try container.decode(String.self, forKey: .appVersion)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    namespace = try container.decode(String.self, forKey: .namespace)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    path = try container.decode(String.self, forKey: .path)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    provider = try container.decode(String.self, forKey: .provider)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    secret = try container.decode(String.self, forKey: .secret)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    cloud = try container.decode(Cloud.self, forKey: .cloud)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode([String].self, forKey: .comment)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    url = try container.decode(Url.self, forKey: .url)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nextId = try container.decode(String.self, forKey: .nextId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    current = try container.decode(Int.self, forKey: .current)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(Int.self, forKey: .size)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                do {
                    media = try container.decode([MediaMeta].self, forKey: .media)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    abusive = try container.decode(Bool.self, forKey: .abusive)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    approve = try container.decode(Bool.self, forKey: .approve)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    approve = try container.decode(Bool.self, forKey: .approve)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                do {
                    approve = try container.decode(Bool.self, forKey: .approve)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ids = try container.decode([String].self, forKey: .ids)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    approve = try container.decode(Bool.self, forKey: .approve)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    choices = try container.decode([String].self, forKey: .choices)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    application = try container.decode(String.self, forKey: .application)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    approve = try container.decode(Bool.self, forKey: .approve)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributesRating = try container.decode([AttributeObject].self, forKey: .attributesRating)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deviceMeta = try container.decode(DeviceMeta.self, forKey: .deviceMeta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mediaResource = try container.decode([MediaMeta].self, forKey: .mediaResource)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rating = try container.decode(Double.self, forKey: .rating)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    reviewId = try container.decode(String.self, forKey: .reviewId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    templateId = try container.decode(String.self, forKey: .templateId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    action = try container.decode(String.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refId = try container.decode(String.self, forKey: .refId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refType = try container.decode(String.self, forKey: .refType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    main = try container.decode(String.self, forKey: .main)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    thumbnail = try container.decode(String.self, forKey: .thumbnail)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    action = try container.decode(String.self, forKey: .action)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refId = try container.decode(String.self, forKey: .refId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refType = try container.decode(String.self, forKey: .refType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    items = try container.decode([String: Any].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(PageCursor.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    ids = try container.decode(String.self, forKey: .ids)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    items = try container.decode([String: Any].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(PageNumber.self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var shipmentType: String
            
            public var quantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case articleUid = "article_uid"
                
                case shipmentType = "shipment_type"
                
                case quantity = "quantity"
                
            }

            public init(articleUid: String, quantity: Int?, shipmentType: String) {
                
                self.articleUid = articleUid
                
                self.shipmentType = shipmentType
                
                self.quantity = quantity
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                articleUid = try container.decode(String.self, forKey: .articleUid)
                
                
                
                shipmentType = try container.decode(String.self, forKey: .shipmentType)
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(articleUid, forKey: .articleUid)
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
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
            Model: Files
            Used By: PosCart
        */
        struct Files: Codable {
            
            public var key: String
            
            public var values: [String]
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case values = "values"
                
            }

            public init(key: String, values: [String]) {
                
                self.key = key
                
                self.values = values
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                values = try container.decode([String].self, forKey: .values)
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                try? container.encodeIfPresent(values, forKey: .values)
                
            }
            
        }
        
        /*
            Model: CartPosCheckoutRequest
            Used By: PosCart
        */
        struct CartPosCheckoutRequest: Codable {
            
            public var fyndstoreEmpId: String?
            
            public var paymentIdentifier: String?
            
            public var pickAtStoreUid: Int?
            
            public var paymentAutoConfirm: Bool?
            
            public var paymentParams: [String: Any]?
            
            public var billingAddress: [String: Any]?
            
            public var orderingStore: Int?
            
            public var paymentMode: String
            
            public var pos: Bool?
            
            public var addressId: Int?
            
            public var extraMeta: [String: Any]?
            
            public var files: Files?
            
            public var callbackUrl: String?
            
            public var aggregator: String?
            
            public var billingAddressId: Int?
            
            public var staff: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var merchantCode: String?
            
            public var orderType: String
            
            public var deliveryAddress: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case fyndstoreEmpId = "fyndstore_emp_id"
                
                case paymentIdentifier = "payment_identifier"
                
                case pickAtStoreUid = "pick_at_store_uid"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case paymentParams = "payment_params"
                
                case billingAddress = "billing_address"
                
                case orderingStore = "ordering_store"
                
                case paymentMode = "payment_mode"
                
                case pos = "pos"
                
                case addressId = "address_id"
                
                case extraMeta = "extra_meta"
                
                case files = "files"
                
                case callbackUrl = "callback_url"
                
                case aggregator = "aggregator"
                
                case billingAddressId = "billing_address_id"
                
                case staff = "staff"
                
                case meta = "meta"
                
                case merchantCode = "merchant_code"
                
                case orderType = "order_type"
                
                case deliveryAddress = "delivery_address"
                
            }

            public init(addressId: Int?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: Int?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, files: Files?, fyndstoreEmpId: String?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, orderType: String, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, pickAtStoreUid: Int?, pos: Bool?, staff: [String: Any]?) {
                
                self.fyndstoreEmpId = fyndstoreEmpId
                
                self.paymentIdentifier = paymentIdentifier
                
                self.pickAtStoreUid = pickAtStoreUid
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.paymentParams = paymentParams
                
                self.billingAddress = billingAddress
                
                self.orderingStore = orderingStore
                
                self.paymentMode = paymentMode
                
                self.pos = pos
                
                self.addressId = addressId
                
                self.extraMeta = extraMeta
                
                self.files = files
                
                self.callbackUrl = callbackUrl
                
                self.aggregator = aggregator
                
                self.billingAddressId = billingAddressId
                
                self.staff = staff
                
                self.meta = meta
                
                self.merchantCode = merchantCode
                
                self.orderType = orderType
                
                self.deliveryAddress = deliveryAddress
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fyndstoreEmpId = try container.decode(String.self, forKey: .fyndstoreEmpId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                
                
                do {
                    pos = try container.decode(Bool.self, forKey: .pos)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(Int.self, forKey: .addressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    files = try container.decode(Files.self, forKey: .files)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(Int.self, forKey: .billingAddressId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    staff = try container.decode([String: Any].self, forKey: .staff)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderType = try container.decode(String.self, forKey: .orderType)
                
                
                
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                try? container.encodeIfPresent(pickAtStoreUid, forKey: .pickAtStoreUid)
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                try? container.encodeIfPresent(files, forKey: .files)
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
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
                
                
                do {
                    availableModes = try container.decode([String].self, forKey: .availableModes)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pickupStores = try container.decode([Int].self, forKey: .pickupStores)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(availableModes, forKey: .availableModes)
                
                try? container.encodeIfPresent(pickupStores, forKey: .pickupStores)
                
            }
            
        }
        
        /*
            Model: PickupStoreDetail
            Used By: PosCart
        */
        struct PickupStoreDetail: Codable {
            
            public var name: String?
            
            public var pincode: Int?
            
            public var area: String?
            
            public var areaCode: String?
            
            public var addressType: String?
            
            public var phone: String?
            
            public var areaCodeSlug: String?
            
            public var country: String?
            
            public var city: String?
            
            public var uid: Int?
            
            public var storeCode: String?
            
            public var state: String?
            
            public var address: String?
            
            public var email: String?
            
            public var landmark: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case pincode = "pincode"
                
                case area = "area"
                
                case areaCode = "area_code"
                
                case addressType = "address_type"
                
                case phone = "phone"
                
                case areaCodeSlug = "area_code_slug"
                
                case country = "country"
                
                case city = "city"
                
                case uid = "uid"
                
                case storeCode = "store_code"
                
                case state = "state"
                
                case address = "address"
                
                case email = "email"
                
                case landmark = "landmark"
                
            }

            public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, city: String?, country: String?, email: String?, landmark: String?, name: String?, phone: String?, pincode: Int?, state: String?, storeCode: String?, uid: Int?) {
                
                self.name = name
                
                self.pincode = pincode
                
                self.area = area
                
                self.areaCode = areaCode
                
                self.addressType = addressType
                
                self.phone = phone
                
                self.areaCodeSlug = areaCodeSlug
                
                self.country = country
                
                self.city = city
                
                self.uid = uid
                
                self.storeCode = storeCode
                
                self.state = state
                
                self.address = address
                
                self.email = email
                
                self.landmark = landmark
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    area = try container.decode(String.self, forKey: .area)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
            }
            
        }
        
        /*
            Model: StoreDetailsResponse
            Used By: PosCart
        */
        struct StoreDetailsResponse: Codable {
            
            public var items: [PickupStoreDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [PickupStoreDetail]?) {
                
                self.items = items
                
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([PickupStoreDetail].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                try? container.encodeIfPresent(items, forKey: .items)
                
            }
            
        }
        
        
    }